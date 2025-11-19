CREATE DATABASE UdemyDB;
GO
USE UdemyDB;
GO

CREATE TABLE Instructor (
    InstructorID INT IDENTITY(1,1) CONSTRAINT PK_Instructor PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL CONSTRAINT UQ_Instructor_Email UNIQUE,
    PasswordHash NVARCHAR(255) NOT NULL,
    Bio NVARCHAR(MAX),
    ProfilePictureUrl NVARCHAR(255),
    Street NVARCHAR(100),
    City NVARCHAR(50),
    Country NVARCHAR(50),
    PostalCode NVARCHAR(20),
    BirthDate DATE,
    JoinDate DATETIME2 DEFAULT GETDATE()
);
GO

CREATE TABLE InstructorPhone (
    PhoneNumber NVARCHAR(20) CONSTRAINT PK_InstructorPhone PRIMARY KEY,
    InstructorID INT NOT NULL,
    PhoneType NVARCHAR(20),
    CONSTRAINT FK_InstructorPhone_Instructor FOREIGN KEY (InstructorID)
        REFERENCES Instructor(InstructorID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE Specialization (
    SpecializationID INT IDENTITY(1,1) CONSTRAINT PK_Specialization PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL CONSTRAINT UQ_Specialization_Name UNIQUE,
    Description NVARCHAR(MAX)
);
GO

CREATE TABLE InstructorSpecialization (
    InstructorID INT NOT NULL,
    SpecializationID INT NOT NULL,
    CONSTRAINT PK_InstructorSpecialization PRIMARY KEY (InstructorID, SpecializationID),
    CONSTRAINT FK_InstructorSpecialization_Instructor FOREIGN KEY (InstructorID)
        REFERENCES Instructor(InstructorID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT FK_InstructorSpecialization_Specialization FOREIGN KEY (SpecializationID)
        REFERENCES Specialization(SpecializationID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE Student (
    StudentID INT IDENTITY(1,1) CONSTRAINT PK_Student PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL CONSTRAINT UQ_Student_Email UNIQUE,
    PasswordHash NVARCHAR(255) NOT NULL,
    ProfilePictureUrl NVARCHAR(255),
    Street NVARCHAR(100),
    City NVARCHAR(50),
    Country NVARCHAR(50),
    PostalCode NVARCHAR(20),
    BirthDate DATE,
    RegistrationDate DATETIME2 DEFAULT GETDATE(),
    LastLoginDate DATETIME2,
    TimeZone NVARCHAR(50)
);
GO

CREATE TABLE Interest (
    InterestID INT IDENTITY(1,1) CONSTRAINT PK_Interest PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL CONSTRAINT UQ_Interest_Name UNIQUE,
    Description NVARCHAR(MAX)
);
GO

CREATE TABLE StudentInterest (
    StudentID INT NOT NULL,
    InterestID INT NOT NULL,
    CONSTRAINT PK_StudentInterest PRIMARY KEY (StudentID, InterestID),
    CONSTRAINT FK_StudentInterest_Student FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT FK_StudentInterest_Interest FOREIGN KEY (InterestID)
        REFERENCES Interest(InterestID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE Course (
    CourseID INT IDENTITY(1,1) CONSTRAINT PK_Course PRIMARY KEY,
    InstructorID INT NOT NULL,
    Title NVARCHAR(200) NOT NULL,
    Subtitle NVARCHAR(200),
    Description NVARCHAR(MAX),
    Price DECIMAL(10,2) NOT NULL,
    DiscountPrice DECIMAL(10,2),
    Level NVARCHAR(20) NOT NULL CONSTRAINT CK_Course_Level CHECK (Level IN ('beginner', 'intermediate', 'advanced')),
    Language NVARCHAR(50) NOT NULL,
    ThumbnailUrl NVARCHAR(255),
    PromoVideoUrl NVARCHAR(255),
    CreatedDate DATETIME2 DEFAULT GETDATE(),
    LastUpdatedDate DATETIME2 DEFAULT GETDATE(),
    CONSTRAINT FK_Course_Instructor FOREIGN KEY (InstructorID)
        REFERENCES Instructor(InstructorID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE Tag (
    TagID INT IDENTITY(1,1) CONSTRAINT PK_Tag PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL CONSTRAINT UQ_Tag_Name UNIQUE
);
GO

CREATE TABLE CourseTag (
    CourseID INT NOT NULL,
    TagID INT NOT NULL,
    CONSTRAINT PK_CourseTag PRIMARY KEY (CourseID, TagID),
    CONSTRAINT FK_CourseTag_Course FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT FK_CourseTag_Tag FOREIGN KEY (TagID)
        REFERENCES Tag(TagID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE CourseLearningOutcome (
    OutcomeID INT IDENTITY(1,1) CONSTRAINT PK_CourseLearningOutcome PRIMARY KEY,
    CourseID INT NOT NULL,
    LearningOutcome NVARCHAR(MAX) NOT NULL,
    CONSTRAINT FK_CourseLearningOutcome_Course FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE CourseRequirement (
    RequirementID INT IDENTITY(1,1) CONSTRAINT PK_CourseRequirement PRIMARY KEY,
    CourseID INT NOT NULL,
    Requirement NVARCHAR(MAX)NOT NULL,
    CONSTRAINT FK_CourseRequirement_Course FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE Category (
    CategoryID INT IDENTITY(1,1) CONSTRAINT PK_Category PRIMARY KEY,
    ParentCategoryID INT NULL,
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX),
    CONSTRAINT FK_Category_Parent FOREIGN KEY (ParentCategoryID)
        REFERENCES Category(CategoryID)
);
GO

CREATE TABLE CourseCategory (
    CourseID INT NOT NULL,
    CategoryID INT NOT NULL,
    IsPrimary BIT DEFAULT 0,
    CONSTRAINT PK_CourseCategory PRIMARY KEY (CourseID, CategoryID),
    CONSTRAINT FK_CourseCategory_Course FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
        ON DELETE CASCADE,
    CONSTRAINT FK_CourseCategory_Category FOREIGN KEY (CategoryID)
        REFERENCES Category(CategoryID)
        ON DELETE CASCADE
);
GO

CREATE TABLE Section (
    SectionID INT IDENTITY(1,1) CONSTRAINT PK_Section PRIMARY KEY,
    CourseID INT NOT NULL,
    Title NVARCHAR(200) NOT NULL,
    Description NVARCHAR(MAX),
    CONSTRAINT UQ_Section_CourseTitle UNIQUE (CourseID, Title),
    CONSTRAINT FK_Section_Course FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE Lesson (
    LessonID INT IDENTITY(1,1) CONSTRAINT PK_Lesson PRIMARY KEY,
    SectionID INT NOT NULL,
    Title NVARCHAR(200) NOT NULL,
    Description NVARCHAR(MAX),
    VideoUrl NVARCHAR(255),
    DurationMinutes INT,
    IsPreview BIT DEFAULT 0,
    CONSTRAINT UQ_Lesson_SectionTitle UNIQUE (SectionID, Title),
    CONSTRAINT FK_Lesson_Section FOREIGN KEY (SectionID)
        REFERENCES Section(SectionID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE LessonAttachment (
    AttachmentID INT IDENTITY(1,1) CONSTRAINT PK_LessonAttachment PRIMARY KEY,
    LessonID INT NOT NULL,
    FileName NVARCHAR(255) NOT NULL,
    FileUrl NVARCHAR(500) NOT NULL,
    FileType NVARCHAR(50),
    CONSTRAINT FK_LessonAttachment_Lesson FOREIGN KEY (LessonID)
        REFERENCES Lesson(LessonID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE LessonResource (
    ResourceID INT IDENTITY(1,1) CONSTRAINT PK_LessonResource PRIMARY KEY,
    LessonID INT NOT NULL,
    ResourceUrl NVARCHAR(500) NOT NULL,
    Description NVARCHAR(255),
    CONSTRAINT FK_LessonResource_Lesson FOREIGN KEY (LessonID)
        REFERENCES Lesson(LessonID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE Quiz (
    QuizID INT IDENTITY(1,1) CONSTRAINT PK_Quiz PRIMARY KEY,
    CourseID INT NOT NULL,
    QuizTopic NVARCHAR(100) NOT NULL,
    TimeLimitMinutes INT NOT NULL DEFAULT 0,
    Title NVARCHAR(200) NOT NULL,
    Description NVARCHAR(MAX),
    PassingScore INT NOT NULL,
    MaxAttempts INT,
    CONSTRAINT UQ_Quiz UNIQUE (CourseID, QuizTopic, TimeLimitMinutes),
    CONSTRAINT FK_Quiz_Course FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE QuizQuestion (
    QuestionID INT IDENTITY(1,1) CONSTRAINT PK_QuizQuestion PRIMARY KEY,
    QuizID INT NOT NULL,
    QuestionNumber INT NOT NULL,
    QuestionText NVARCHAR(MAX) NOT NULL,
    QuestionType NVARCHAR(50) NOT NULL CONSTRAINT CK_QuizQuestion_Type CHECK (QuestionType IN ('multiple_choice', 'true_false', 'short_answer')),
    CorrectAnswer NVARCHAR(MAX) NOT NULL,
    Points INT NOT NULL DEFAULT 1,
    CONSTRAINT UQ_QuizQuestion UNIQUE (QuizID, QuestionNumber),
    CONSTRAINT FK_QuizQuestion_Quiz FOREIGN KEY (QuizID)
        REFERENCES Quiz(QuizID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE QuestionOption (
    OptionID INT IDENTITY(1,1) CONSTRAINT PK_QuestionOption PRIMARY KEY,
    QuestionID INT NOT NULL,
    OptionText NVARCHAR(MAX) NOT NULL,
    IsCorrect BIT NOT NULL DEFAULT 0,
    CONSTRAINT FK_QuestionOption_Question FOREIGN KEY (QuestionID)
        REFERENCES QuizQuestion(QuestionID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE Assignment (
    AssignmentID INT IDENTITY(1,1) CONSTRAINT PK_Assignment PRIMARY KEY,
    CourseID INT NOT NULL,
    DueDate DATE NOT NULL,
    Title NVARCHAR(200) NOT NULL,
    Description NVARCHAR(MAX),
    MaxScore INT NOT NULL,
    EstimatedTimeHours INT,
    DifficultyLevel NVARCHAR(20) CONSTRAINT CK_Assignment_Difficulty CHECK (DifficultyLevel IN ('easy', 'medium', 'hard')),
    CONSTRAINT UQ_Assignment UNIQUE (CourseID, DueDate),
    CONSTRAINT FK_Assignment_Course FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE AssignmentAttachment (
    AttachmentID INT IDENTITY(1,1) CONSTRAINT PK_AssignmentAttachment PRIMARY KEY,
    AssignmentID INT NOT NULL,
    FileName NVARCHAR(255) NOT NULL,
    FileUrl NVARCHAR(500) NOT NULL,
    FileType NVARCHAR(50),
    CONSTRAINT FK_AssignmentAttachment_Assignment FOREIGN KEY (AssignmentID)
        REFERENCES Assignment(AssignmentID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE AssignmentRequiredFile (
    RequiredFileID INT IDENTITY(1,1) CONSTRAINT PK_AssignmentRequiredFile PRIMARY KEY,
    AssignmentID INT NOT NULL,
    FileType NVARCHAR(100) NOT NULL,
    Description NVARCHAR(255),
    CONSTRAINT FK_AssignmentRequiredFile_Assignment FOREIGN KEY (AssignmentID)
        REFERENCES Assignment(AssignmentID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE Review (
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    Rating INT NOT NULL CONSTRAINT CK_Review_Rating CHECK (Rating BETWEEN 1 AND 5),
    Comment NVARCHAR(MAX),
    ReviewDate DATETIME2 DEFAULT GETDATE(),
    HelpfulCount INT DEFAULT 0,
    CONSTRAINT PK_Review PRIMARY KEY (StudentID, CourseID),
    CONSTRAINT FK_Review_Student FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID)
        ON DELETE CASCADE,
    CONSTRAINT FK_Review_Course FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
        ON DELETE CASCADE
);
GO

CREATE TABLE Coupon (
    CouponID INT IDENTITY(1,1) CONSTRAINT PK_Coupon PRIMARY KEY,
    Code NVARCHAR(50) NOT NULL CONSTRAINT UQ_Coupon_Code UNIQUE,
    DiscountPercentage INT NOT NULL CONSTRAINT CK_Coupon_Discount CHECK (DiscountPercentage > 0 AND DiscountPercentage <= 100),
    ValidFrom DATETIME2 NOT NULL,
    ValidTo DATETIME2 NOT NULL,
    UsageLimit INT,
    Status NVARCHAR(20) NOT NULL CONSTRAINT CK_Coupon_Status CHECK (Status IN ('active', 'expired', 'disabled')),
    Description NVARCHAR(255),
    CONSTRAINT CK_Coupon_ValidDates CHECK (ValidTo > ValidFrom)
);
GO

CREATE TABLE Enrollment (
    EnrollmentID INT IDENTITY(1,1) CONSTRAINT PK_Enrollment PRIMARY KEY,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    EnrollmentDate DATETIME2 DEFAULT GETDATE(),
    LastAccessedDate DATETIME2,
    Status NVARCHAR(20) NOT NULL CONSTRAINT CK_Enrollment_Status CHECK (Status IN ('active', 'completed', 'dropped', 'refunded')),
    CompletedDate DATETIME2,
    TotalWatchTimeMinutes INT DEFAULT 0,
    CONSTRAINT UQ_Enrollment UNIQUE (StudentID, CourseID),
    CONSTRAINT FK_Enrollment_Student FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID)
        ON DELETE CASCADE,
    CONSTRAINT FK_Enrollment_Course FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
        ON DELETE CASCADE
);
GO

CREATE TABLE Payment (
    PaymentID INT IDENTITY(1,1) CONSTRAINT PK_Payment PRIMARY KEY,
    StudentID INT NOT NULL,
    PaymentTimestamp DATETIME2(7) NOT NULL DEFAULT SYSDATETIME(),
    EnrollmentID INT NOT NULL CONSTRAINT UQ_Payment_Enrollment UNIQUE,
    CouponID INT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    Currency NVARCHAR(3) DEFAULT 'USD',
    PaymentMethod NVARCHAR(50) NOT NULL,
    TransactionID NVARCHAR(100) CONSTRAINT UQ_Payment_Transaction UNIQUE,
    Status NVARCHAR(20) NOT NULL CONSTRAINT CK_Payment_Status CHECK (Status IN ('pending', 'completed', 'refunded')),
    BillingStreet NVARCHAR(100),
    BillingCity NVARCHAR(50),
    BillingCountry NVARCHAR(50),
    BillingPostalCode NVARCHAR(20),
    CONSTRAINT UQ_Payment_StudentTimestamp UNIQUE (StudentID, PaymentTimestamp),
    CONSTRAINT FK_Payment_Student FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID),
    CONSTRAINT FK_Payment_Enrollment FOREIGN KEY (EnrollmentID)
        REFERENCES Enrollment(EnrollmentID),
    CONSTRAINT FK_Payment_Coupon FOREIGN KEY (CouponID)
        REFERENCES Coupon(CouponID)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
GO

CREATE TABLE Certificate (
    CertificateID INT IDENTITY(1,1) CONSTRAINT PK_Certificate PRIMARY KEY,
    EnrollmentID INT NOT NULL CONSTRAINT UQ_Certificate_Enrollment UNIQUE,
    IssueDate DATETIME2 DEFAULT GETDATE(),
    CertificateUrl NVARCHAR(500) NOT NULL,
    VerificationCode NVARCHAR(100) NOT NULL CONSTRAINT UQ_Certificate_Verification UNIQUE,
    CONSTRAINT FK_Certificate_Enrollment FOREIGN KEY (EnrollmentID)
        REFERENCES Enrollment(EnrollmentID)
        ON DELETE CASCADE
);
GO

CREATE TABLE Submission (
    SubmissionID INT IDENTITY(1,1) CONSTRAINT PK_Submission PRIMARY KEY,
    StudentID INT NOT NULL,
    AssignmentID INT NOT NULL,
    AttemptNumber INT NOT NULL DEFAULT 1,
    SubmissionDate DATETIME2 DEFAULT GETDATE(),
    Grade INT,
    Feedback NVARCHAR(MAX),
    Status NVARCHAR(20) NOT NULL CONSTRAINT CK_Submission_Status CHECK (Status IN ('pending', 'graded', 'resubmit_required')),
    GradedDate DATETIME2,
    TimeSpentHours INT,
    CONSTRAINT FK_Submission_Student FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID)
        ON DELETE CASCADE,
    CONSTRAINT FK_Submission_Assignment FOREIGN KEY (AssignmentID)
        REFERENCES Assignment(AssignmentID)
        ON DELETE CASCADE
);
GO

CREATE TABLE SubmissionFile (
    FileID INT IDENTITY(1,1) CONSTRAINT PK_SubmissionFile PRIMARY KEY,
    SubmissionID INT NOT NULL,
    FileName NVARCHAR(255) NOT NULL,
    FileUrl NVARCHAR(500) NOT NULL,
    FileType NVARCHAR(50),
    CONSTRAINT FK_SubmissionFile_Submission FOREIGN KEY (SubmissionID)
        REFERENCES Submission(SubmissionID)
        ON DELETE CASCADE
);
GO

CREATE TABLE QuizAttempt (
    StudentID INT NOT NULL,
    QuizID INT NOT NULL,
    AttemptNumber INT NOT NULL DEFAULT 1,
    AttemptDate DATETIME2 DEFAULT GETDATE(),
    Score INT NOT NULL,
    TimeSpentMinutes INT,
    Status NVARCHAR(20) NOT NULL CONSTRAINT CK_QuizAttempt_Status CHECK (Status IN ('in_progress', 'completed', 'abandoned')),
    CONSTRAINT PK_QuizAttempt PRIMARY KEY (StudentID, QuizID, AttemptNumber),
    CONSTRAINT FK_QuizAttempt_Student FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID)
        ON DELETE CASCADE,
    CONSTRAINT FK_QuizAttempt_Quiz FOREIGN KEY (QuizID)
        REFERENCES Quiz(QuizID)
        ON DELETE CASCADE
);
GO

CREATE TABLE LessonProgress (
    StudentID INT NOT NULL,
    LessonID INT NOT NULL,
    StartedDate DATETIME2,
    LastWatchedDate DATETIME2,
    WatchTimeSeconds INT DEFAULT 0,
    VideoPositionSeconds INT DEFAULT 0,
    IsCompleted BIT DEFAULT 0,
    CompletedDate DATETIME2,
    TimesWatched INT DEFAULT 0,
    CONSTRAINT PK_LessonProgress PRIMARY KEY (StudentID, LessonID),
    CONSTRAINT FK_LessonProgress_Student FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID)
        ON DELETE CASCADE,
    CONSTRAINT FK_LessonProgress_Lesson FOREIGN KEY (LessonID)
        REFERENCES Lesson(LessonID)
        ON DELETE CASCADE
);
GO
