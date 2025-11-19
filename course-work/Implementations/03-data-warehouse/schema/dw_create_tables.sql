CREATE DATABASE UdemyDW;
GO

USE UdemyDW;
GO

-- ============================================
-- DIMENSION TABLES
-- ============================================

CREATE TABLE DimDate (
    DateKey INT PRIMARY KEY,
    FullDate DATE NOT NULL,
    DayOfWeek NVARCHAR(10) NOT NULL,
    DayOfMonth INT NOT NULL,
    DayOfYear INT NOT NULL,
    WeekOfYear INT NOT NULL,
    MonthName NVARCHAR(10) NOT NULL,
    MonthNumber INT NOT NULL,
    Quarter INT NOT NULL,
    Year INT NOT NULL,
    IsWeekend BIT NOT NULL,
    CONSTRAINT UQ_DimDate_FullDate UNIQUE (FullDate)
);
GO

CREATE TABLE DimStudent (
    StudentKey INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT NOT NULL,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    City NVARCHAR(50),
    Country NVARCHAR(50),
    RegistrationDate DATE,
    CONSTRAINT UQ_DimStudent_StudentID UNIQUE (StudentID)
);
GO

CREATE TABLE DimInstructor (
    InstructorKey INT IDENTITY(1,1) PRIMARY KEY,
    InstructorID INT NOT NULL,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    City NVARCHAR(50),
    Country NVARCHAR(50),
    JoinDate DATE,
    CONSTRAINT UQ_DimInstructor_InstructorID UNIQUE (InstructorID)
);
GO

CREATE TABLE DimCourse (
    CourseKey INT IDENTITY(1,1) PRIMARY KEY,
    CourseID INT NOT NULL,
    Title NVARCHAR(200) NOT NULL,
    InstructorKey INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    DiscountPrice DECIMAL(10,2),
    Level NVARCHAR(20) NOT NULL,
    Language NVARCHAR(50) NOT NULL,
    CreatedDate DATE,
    CONSTRAINT UQ_DimCourse_CourseID UNIQUE (CourseID),
    CONSTRAINT FK_DimCourse_Instructor FOREIGN KEY (InstructorKey)
        REFERENCES DimInstructor(InstructorKey)
);
GO

CREATE TABLE DimCategory (
    CategoryKey INT IDENTITY(1,1) PRIMARY KEY,
    CategoryID INT NOT NULL,
    CategoryName NVARCHAR(100) NOT NULL,
    ParentCategoryName NVARCHAR(100),
    CONSTRAINT UQ_DimCategory_CategoryID UNIQUE (CategoryID)
);
GO

CREATE TABLE DimLesson (
    LessonKey INT IDENTITY(1,1) PRIMARY KEY,
    LessonID INT NOT NULL,
    Title NVARCHAR(200) NOT NULL,
    SectionTitle NVARCHAR(200),
    CourseKey INT NOT NULL,
    DurationMinutes INT,
    IsPreview BIT,
    CONSTRAINT UQ_DimLesson_LessonID UNIQUE (LessonID),
    CONSTRAINT FK_DimLesson_Course FOREIGN KEY (CourseKey)
        REFERENCES DimCourse(CourseKey)
);
GO

-- ============================================
-- FACT TABLES
-- ============================================

CREATE TABLE FactEnrollment (
    EnrollmentKey INT IDENTITY(1,1) PRIMARY KEY,
    EnrollmentID INT NOT NULL,
    StudentKey INT NOT NULL,
    CourseKey INT NOT NULL,
    EnrollmentDateKey INT NOT NULL,
    CompletedDateKey INT NULL,
    
    -- Measures
    TotalWatchTimeMinutes INT DEFAULT 0,
    Status NVARCHAR(20) NOT NULL,
    IsCompleted BIT DEFAULT 0,
    DaysToComplete INT NULL,
    
    CONSTRAINT UQ_FactEnrollment_ID UNIQUE (EnrollmentID),
    CONSTRAINT FK_FactEnrollment_Student FOREIGN KEY (StudentKey)
        REFERENCES DimStudent(StudentKey),
    CONSTRAINT FK_FactEnrollment_Course FOREIGN KEY (CourseKey)
        REFERENCES DimCourse(CourseKey),
    CONSTRAINT FK_FactEnrollment_EnrollmentDate FOREIGN KEY (EnrollmentDateKey)
        REFERENCES DimDate(DateKey),
    CONSTRAINT FK_FactEnrollment_CompletedDate FOREIGN KEY (CompletedDateKey)
        REFERENCES DimDate(DateKey)
);
GO

CREATE TABLE FactPayment (
    PaymentKey INT IDENTITY(1,1) PRIMARY KEY,
    PaymentID INT NOT NULL,
    StudentKey INT NOT NULL,
    CourseKey INT NOT NULL,
    PaymentDateKey INT NOT NULL,
    
    -- Measures
    Amount DECIMAL(10,2) NOT NULL,
    Currency NVARCHAR(3) NOT NULL,
    PaymentMethod NVARCHAR(50) NOT NULL,
    Status NVARCHAR(20) NOT NULL,
    DiscountPercentage INT DEFAULT 0,
    
    CONSTRAINT UQ_FactPayment_ID UNIQUE (PaymentID),
    CONSTRAINT FK_FactPayment_Student FOREIGN KEY (StudentKey)
        REFERENCES DimStudent(StudentKey),
    CONSTRAINT FK_FactPayment_Course FOREIGN KEY (CourseKey)
        REFERENCES DimCourse(CourseKey),
    CONSTRAINT FK_FactPayment_Date FOREIGN KEY (PaymentDateKey)
        REFERENCES DimDate(DateKey)
);
GO

CREATE TABLE FactLessonProgress (
    ProgressKey INT IDENTITY(1,1) PRIMARY KEY,
    StudentKey INT NOT NULL,
    LessonKey INT NOT NULL,
    CourseKey INT NOT NULL,
    StartedDateKey INT NOT NULL,
    CompletedDateKey INT NULL,
    
    -- Measures
    WatchTimeSeconds INT DEFAULT 0,
    VideoPositionSeconds INT DEFAULT 0,
    IsCompleted BIT DEFAULT 0,
    TimesWatched INT DEFAULT 0,
    CompletionPercentage DECIMAL(5,2) DEFAULT 0,
    
    CONSTRAINT UQ_FactLessonProgress UNIQUE (StudentKey, LessonKey),
    CONSTRAINT FK_FactLessonProgress_Student FOREIGN KEY (StudentKey)
        REFERENCES DimStudent(StudentKey),
    CONSTRAINT FK_FactLessonProgress_Lesson FOREIGN KEY (LessonKey)
        REFERENCES DimLesson(LessonKey),
    CONSTRAINT FK_FactLessonProgress_Course FOREIGN KEY (CourseKey)
        REFERENCES DimCourse(CourseKey),
    CONSTRAINT FK_FactLessonProgress_StartedDate FOREIGN KEY (StartedDateKey)
        REFERENCES DimDate(DateKey),
    CONSTRAINT FK_FactLessonProgress_CompletedDate FOREIGN KEY (CompletedDateKey)
        REFERENCES DimDate(DateKey)
);
GO

CREATE TABLE FactReview (
    ReviewKey INT IDENTITY(1,1) PRIMARY KEY,
    StudentKey INT NOT NULL,
    CourseKey INT NOT NULL,
    ReviewDateKey INT NOT NULL,
    
    -- Measures
    Rating INT NOT NULL CHECK (Rating BETWEEN 1 AND 5),
    HelpfulCount INT DEFAULT 0,
    CommentLength INT,
    HasComment BIT DEFAULT 0,
    
    CONSTRAINT FK_FactReview_Student FOREIGN KEY (StudentKey)
        REFERENCES DimStudent(StudentKey),
    CONSTRAINT FK_FactReview_Course FOREIGN KEY (CourseKey)
        REFERENCES DimCourse(CourseKey),
    CONSTRAINT FK_FactReview_Date FOREIGN KEY (ReviewDateKey)
        REFERENCES DimDate(DateKey)
);
GO

-- ============================================
-- BRIDGE TABLE
-- ============================================

CREATE TABLE BridgeCourseCategory (
    CourseKey INT NOT NULL,
    CategoryKey INT NOT NULL,
    IsPrimary BIT DEFAULT 0,
    CONSTRAINT PK_BridgeCourseCategory PRIMARY KEY (CourseKey, CategoryKey),
    CONSTRAINT FK_Bridge_Course FOREIGN KEY (CourseKey)
        REFERENCES DimCourse(CourseKey),
    CONSTRAINT FK_Bridge_Category FOREIGN KEY (CategoryKey)
        REFERENCES DimCategory(CategoryKey)
);
GO

-- ============================================
-- PERFORMANCE INDEXES
-- ============================================

CREATE INDEX IX_DimDate_FullDate ON DimDate(FullDate);
CREATE INDEX IX_DimDate_Year_Month ON DimDate(Year, MonthNumber);
CREATE INDEX IX_DimDate_Quarter ON DimDate(Year, Quarter);
GO

CREATE INDEX IX_DimStudent_Country ON DimStudent(Country);
CREATE INDEX IX_DimStudent_RegistrationDate ON DimStudent(RegistrationDate);
GO

CREATE INDEX IX_DimInstructor_Country ON DimInstructor(Country);
CREATE INDEX IX_DimInstructor_JoinDate ON DimInstructor(JoinDate);
GO

CREATE INDEX IX_DimCourse_InstructorKey ON DimCourse(InstructorKey);
CREATE INDEX IX_DimCourse_Level ON DimCourse(Level);
CREATE INDEX IX_DimCourse_Language ON DimCourse(Language);
CREATE INDEX IX_DimCourse_CreatedDate ON DimCourse(CreatedDate);
GO

CREATE INDEX IX_DimLesson_CourseKey ON DimLesson(CourseKey);
GO

CREATE INDEX IX_FactEnrollment_EnrollmentDateKey ON FactEnrollment(EnrollmentDateKey);
CREATE INDEX IX_FactEnrollment_StudentKey ON FactEnrollment(StudentKey);
CREATE INDEX IX_FactEnrollment_CourseKey ON FactEnrollment(CourseKey);
CREATE INDEX IX_FactEnrollment_Status ON FactEnrollment(Status);
CREATE INDEX IX_FactEnrollment_CompletedDateKey ON FactEnrollment(CompletedDateKey) WHERE CompletedDateKey IS NOT NULL;
GO

CREATE INDEX IX_FactPayment_PaymentDateKey ON FactPayment(PaymentDateKey);
CREATE INDEX IX_FactPayment_StudentKey ON FactPayment(StudentKey);
CREATE INDEX IX_FactPayment_CourseKey ON FactPayment(CourseKey);
CREATE INDEX IX_FactPayment_Status ON FactPayment(Status);
CREATE INDEX IX_FactPayment_PaymentMethod ON FactPayment(PaymentMethod);
GO

CREATE INDEX IX_FactLessonProgress_StudentKey ON FactLessonProgress(StudentKey);
CREATE INDEX IX_FactLessonProgress_LessonKey ON FactLessonProgress(LessonKey);
CREATE INDEX IX_FactLessonProgress_CourseKey ON FactLessonProgress(CourseKey);
CREATE INDEX IX_FactLessonProgress_StartedDateKey ON FactLessonProgress(StartedDateKey);
CREATE INDEX IX_FactLessonProgress_IsCompleted ON FactLessonProgress(IsCompleted);
GO

CREATE INDEX IX_FactReview_CourseKey ON FactReview(CourseKey);
CREATE INDEX IX_FactReview_StudentKey ON FactReview(StudentKey);
CREATE INDEX IX_FactReview_ReviewDateKey ON FactReview(ReviewDateKey);
CREATE INDEX IX_FactReview_Rating ON FactReview(Rating);
GO

CREATE INDEX IX_BridgeCourseCategory_CategoryKey ON BridgeCourseCategory(CategoryKey);
CREATE INDEX IX_BridgeCourseCategory_IsPrimary ON BridgeCourseCategory(IsPrimary) WHERE IsPrimary = 1;
GO