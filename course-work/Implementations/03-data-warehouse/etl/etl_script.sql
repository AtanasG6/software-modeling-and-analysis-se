USE UdemyDW;
GO

DECLARE @StartDate DATE = '2014-01-01';
DECLARE @EndDate DATE = '2030-12-31';

WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO DimDate (DateKey, FullDate, DayOfWeek, DayOfMonth, DayOfYear, WeekOfYear, MonthName, MonthNumber, Quarter, Year, IsWeekend)
    VALUES (
        CAST(FORMAT(@StartDate, 'yyyyMMdd') AS INT),
        @StartDate,
        DATENAME(WEEKDAY, @StartDate),
        DAY(@StartDate),
        DATEPART(DAYOFYEAR, @StartDate),
        DATEPART(WEEK, @StartDate),
        DATENAME(MONTH, @StartDate),
        MONTH(@StartDate),
        DATEPART(QUARTER, @StartDate),
        YEAR(@StartDate),
        CASE WHEN DATEPART(WEEKDAY, @StartDate) IN (1, 7) THEN 1 ELSE 0 END
    );
    
    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END;

INSERT INTO DimStudent (StudentID, FirstName, LastName, Email, City, Country, RegistrationDate)
SELECT 
    StudentID,
    FirstName,
    LastName,
    Email,
    City,
    Country,
    CAST(RegistrationDate AS DATE)
FROM UdemyDB.dbo.Student;

INSERT INTO DimInstructor (InstructorID, FirstName, LastName, Email, City, Country, JoinDate)
SELECT 
    InstructorID,
    FirstName,
    LastName,
    Email,
    City,
    Country,
    CAST(JoinDate AS DATE)
FROM UdemyDB.dbo.Instructor;

INSERT INTO DimCourse (CourseID, Title, InstructorKey, Price, DiscountPrice, Level, Language, CreatedDate)
SELECT 
    c.CourseID,
    c.Title,
    di.InstructorKey,
    c.Price,
    c.DiscountPrice,
    c.Level,
    c.Language,
    CAST(c.CreatedDate AS DATE)
FROM UdemyDB.dbo.Course c
INNER JOIN DimInstructor di ON c.InstructorID = di.InstructorID;

INSERT INTO DimCategory (CategoryID, CategoryName, ParentCategoryName)
SELECT 
    c.CategoryID,
    c.Name,
    pc.Name
FROM UdemyDB.dbo.Category c
LEFT JOIN UdemyDB.dbo.Category pc ON c.ParentCategoryID = pc.CategoryID;

INSERT INTO DimLesson (LessonID, Title, SectionTitle, CourseKey, DurationMinutes, IsPreview)
SELECT 
    l.LessonID,
    l.Title,
    s.Title,
    dc.CourseKey,
    l.DurationMinutes,
    l.IsPreview
FROM UdemyDB.dbo.Lesson l
INNER JOIN UdemyDB.dbo.Section s ON l.SectionID = s.SectionID
INNER JOIN DimCourse dc ON s.CourseID = dc.CourseID;

INSERT INTO BridgeCourseCategory (CourseKey, CategoryKey, IsPrimary)
SELECT 
    dc.CourseKey,
    dcat.CategoryKey,
    cc.IsPrimary
FROM UdemyDB.dbo.CourseCategory cc
INNER JOIN DimCourse dc ON cc.CourseID = dc.CourseID
INNER JOIN DimCategory dcat ON cc.CategoryID = dcat.CategoryID;

INSERT INTO FactEnrollment (
    EnrollmentID, StudentKey, CourseKey, EnrollmentDateKey, CompletedDateKey,
    TotalWatchTimeMinutes, Status, IsCompleted, DaysToComplete
)
SELECT 
    e.EnrollmentID,
    ds.StudentKey,
    dc.CourseKey,
    CAST(FORMAT(CAST(e.EnrollmentDate AS DATE), 'yyyyMMdd') AS INT),
    CASE 
        WHEN e.CompletedDate IS NOT NULL 
        THEN CAST(FORMAT(CAST(e.CompletedDate AS DATE), 'yyyyMMdd') AS INT)
        ELSE NULL 
    END,
    e.TotalWatchTimeMinutes,
    e.Status,
    CASE WHEN e.Status = 'completed' THEN 1 ELSE 0 END,
    CASE 
        WHEN e.CompletedDate IS NOT NULL 
        THEN DATEDIFF(DAY, e.EnrollmentDate, e.CompletedDate)
        ELSE NULL 
    END
FROM UdemyDB.dbo.Enrollment e
INNER JOIN DimStudent ds ON e.StudentID = ds.StudentID
INNER JOIN DimCourse dc ON e.CourseID = dc.CourseID;

INSERT INTO FactPayment (
    PaymentID, StudentKey, CourseKey, PaymentDateKey,
    Amount, Currency, PaymentMethod, Status, DiscountPercentage
)
SELECT 
    p.PaymentID,
    ds.StudentKey,
    dc.CourseKey,
    CAST(FORMAT(CAST(p.PaymentTimestamp AS DATE), 'yyyyMMdd') AS INT),
    p.Amount,
    p.Currency,
    p.PaymentMethod,
    p.Status,
    ISNULL(c.DiscountPercentage, 0)
FROM UdemyDB.dbo.Payment p
INNER JOIN UdemyDB.dbo.Enrollment e ON p.EnrollmentID = e.EnrollmentID
INNER JOIN DimStudent ds ON p.StudentID = ds.StudentID
INNER JOIN DimCourse dc ON e.CourseID = dc.CourseID
LEFT JOIN UdemyDB.dbo.Coupon c ON p.CouponID = c.CouponID;

INSERT INTO FactLessonProgress (
    StudentKey, LessonKey, CourseKey, StartedDateKey, CompletedDateKey,
    WatchTimeSeconds, VideoPositionSeconds, IsCompleted, TimesWatched, CompletionPercentage
)
SELECT 
    ds.StudentKey,
    dl.LessonKey,
    dc.CourseKey,
    CAST(FORMAT(CAST(lp.StartedDate AS DATE), 'yyyyMMdd') AS INT),
    CASE 
        WHEN lp.CompletedDate IS NOT NULL 
        THEN CAST(FORMAT(CAST(lp.CompletedDate AS DATE), 'yyyyMMdd') AS INT)
        ELSE NULL 
    END,
    lp.WatchTimeSeconds,
    lp.VideoPositionSeconds,
    lp.IsCompleted,
    lp.TimesWatched,
    CASE 
        WHEN dl.DurationMinutes > 0 
        THEN CAST((lp.WatchTimeSeconds / 60.0) / dl.DurationMinutes * 100 AS DECIMAL(5,2))
        ELSE 0 
    END
FROM UdemyDB.dbo.LessonProgress lp
INNER JOIN DimStudent ds ON lp.StudentID = ds.StudentID
INNER JOIN DimLesson dl ON lp.LessonID = dl.LessonID
INNER JOIN DimCourse dc ON dl.CourseKey = dc.CourseKey;

INSERT INTO FactReview (StudentKey, CourseKey, ReviewDateKey, Rating, HelpfulCount, CommentLength, HasComment)
SELECT 
    ds.StudentKey,
    dc.CourseKey,
    CAST(FORMAT(CAST(r.ReviewDate AS DATE), 'yyyyMMdd') AS INT),
    r.Rating,
    r.HelpfulCount,
    CASE 
        WHEN r.Comment IS NOT NULL THEN LEN(r.Comment)
        ELSE 0
    END,
    CASE 
        WHEN r.Comment IS NOT NULL AND LEN(r.Comment) > 0 THEN 1
        ELSE 0
    END
FROM UdemyDB.dbo.Review r
INNER JOIN DimStudent ds ON r.StudentID = ds.StudentID
INNER JOIN DimCourse dc ON r.CourseID = dc.CourseID;