USE UdemyDB;
GO

GO
CREATE OR ALTER TRIGGER trg_UpdateCourseCompletion
ON LessonProgress
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (
        SELECT 1
        FROM inserted i
        JOIN deleted d ON i.StudentID = d.StudentID AND i.LessonID = d.LessonID
        WHERE d.IsCompleted = 0 AND i.IsCompleted = 1
    )
        RETURN;

    DECLARE @StudentID INT,
            @LessonID INT,
            @CourseID INT,
            @Completion DECIMAL(5,2);

    SELECT TOP 1 @StudentID = i.StudentID, @LessonID = i.LessonID
    FROM inserted i;

    SELECT @CourseID = s.CourseID
    FROM Lesson l
    JOIN Section s ON l.SectionID = s.SectionID
    WHERE l.LessonID = @LessonID;

    SET @Completion = dbo.udf_GetCourseCompletionPercentage(@StudentID, @CourseID);

    IF @Completion = 100
    BEGIN
        UPDATE Enrollment
        SET Status = 'completed',
            CompletedDate = GETDATE()
        WHERE StudentID = @StudentID AND CourseID = @CourseID;

        EXEC usp_GenerateCertificate @StudentID = @StudentID, @CourseID = @CourseID;
    END
END;
GO
