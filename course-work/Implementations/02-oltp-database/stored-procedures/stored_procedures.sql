USE UdemyDB;
GO

CREATE OR ALTER PROCEDURE usp_EnrollStudentInCourse
    @StudentID INT,
    @CourseID INT,
    @CouponCode NVARCHAR(50) = NULL,
    @PaymentMethod NVARCHAR(50),
    @BillingStreet NVARCHAR(100),
    @BillingCity NVARCHAR(50),
    @BillingCountry NVARCHAR(50),
    @BillingPostalCode NVARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        IF EXISTS (
            SELECT 1 
            FROM Enrollment 
            WHERE StudentID = @StudentID AND CourseID = @CourseID
        )
        BEGIN
            RAISERROR('Student is already enrolled in this course.', 16, 1);
            RETURN;
        END

        DECLARE @OriginalPrice DECIMAL(10, 2);
        DECLARE @FinalPrice DECIMAL(10, 2);
        DECLARE @DiscountAmount DECIMAL(10, 2) = 0;
        DECLARE @CouponID INT = NULL;
        DECLARE @Currency NVARCHAR(3) = 'USD';

        SELECT @OriginalPrice = ISNULL(DiscountPrice, Price)
        FROM Course
        WHERE CourseID = @CourseID;

        IF @OriginalPrice IS NULL
        BEGIN
            RAISERROR('Course not found.', 16, 1);
            RETURN;
        END

        SET @FinalPrice = @OriginalPrice;

        IF @CouponCode IS NOT NULL 
           AND dbo.udf_IsCouponValid(@CouponCode) = 1
        BEGIN
            DECLARE @DiscountPercentage INT;

            SELECT 
                @CouponID = CouponID,
                @DiscountPercentage = DiscountPercentage
            FROM Coupon
            WHERE Code = @CouponCode;

            SET @DiscountAmount = @OriginalPrice * (@DiscountPercentage / 100.0);
            SET @FinalPrice = @OriginalPrice - @DiscountAmount;
        END

        DECLARE @EnrollmentID INT;

        INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate, Status, TotalWatchTimeMinutes)
        VALUES (@StudentID, @CourseID, GETDATE(), 'active', 0);

        SET @EnrollmentID = SCOPE_IDENTITY();

        INSERT INTO Payment (
            StudentID, PaymentTimestamp, EnrollmentID, CouponID, Amount, Currency,
            PaymentMethod, Status, BillingStreet, BillingCity, BillingCountry, BillingPostalCode
        )
        VALUES (
            @StudentID, SYSDATETIME(), @EnrollmentID, @CouponID, @FinalPrice, @Currency,
            @PaymentMethod, 'completed', @BillingStreet, @BillingCity, @BillingCountry, @BillingPostalCode
        );

        COMMIT TRANSACTION;

        SELECT 
            @EnrollmentID AS EnrollmentID,
            @FinalPrice AS AmountPaid,
            @DiscountAmount AS DiscountApplied,
            'Enrollment successful!' AS Message;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO

GO
CREATE OR ALTER PROCEDURE usp_GenerateCertificate
    @StudentID INT,
    @CourseID INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @EnrollmentID INT;

    SELECT @EnrollmentID = EnrollmentID
    FROM Enrollment
    WHERE StudentID = @StudentID AND CourseID = @CourseID;

    IF @EnrollmentID IS NULL
    BEGIN
        RAISERROR('Enrollment not found.', 16, 1);
        RETURN;
    END

    IF EXISTS (
        SELECT 1 FROM Certificate WHERE EnrollmentID = @EnrollmentID
    )
    BEGIN
        RAISERROR('Certificate already exists.', 16, 1);
        RETURN;
    END

    INSERT INTO Certificate (
        EnrollmentID,
        CertificateUrl,
        VerificationCode,
        IssueDate
    )
    VALUES (
        @EnrollmentID,
        CONCAT('https://certificates.udemy.local/', NEWID(), '.pdf'),
        CONVERT(NVARCHAR(100), NEWID()),
        GETDATE()
    );

    SELECT
        @EnrollmentID AS EnrollmentID,
        'Certificate successfully generated!' AS Message;
END
GO