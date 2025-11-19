USE UdemyDB;
GO

CREATE OR ALTER FUNCTION udf_IsCouponValid
(
    @CouponCode NVARCHAR(50)
)
RETURNS BIT
AS
BEGIN
    DECLARE @IsValid BIT = 0;

    IF EXISTS (
        SELECT 1
        FROM Coupon c
        WHERE c.Code = @CouponCode
          AND c.Status = 'active'
          AND GETDATE() BETWEEN c.ValidFrom AND c.ValidTo
          AND (
                c.UsageLimit IS NULL
                OR c.UsageLimit > (
                        SELECT COUNT(*) 
                        FROM Payment p 
                        WHERE p.CouponID = c.CouponID
                    )
              )
    )
    SET @IsValid = 1;

    RETURN @IsValid;
END;
GO

CREATE OR ALTER FUNCTION udf_GetCourseCompletionPercentage
(
    @StudentID INT,
    @CourseID INT
)
RETURNS DECIMAL(5, 2)
AS
BEGIN
    DECLARE @TotalLessons INT;
    DECLARE @CompletedLessons INT;

    SELECT @TotalLessons = COUNT(l.LessonID)
    FROM Lesson l
    INNER JOIN Section s ON l.SectionID = s.SectionID
    WHERE s.CourseID = @CourseID;

    IF @TotalLessons = 0
        RETURN 0;

    SELECT @CompletedLessons = COUNT(lp.LessonID)
    FROM LessonProgress lp
    INNER JOIN Lesson l ON lp.LessonID = l.LessonID
    INNER JOIN Section s ON l.SectionID = s.SectionID
    WHERE lp.StudentID = @StudentID
      AND s.CourseID = @CourseID
      AND lp.IsCompleted = 1;

    RETURN (CAST(@CompletedLessons AS DECIMAL(10, 2)) / @TotalLessons) * 100;
END;
GO