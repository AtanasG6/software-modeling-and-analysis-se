-- ============================================
-- UDEMY DATABASE - INSERT DATA PART 7
-- Submissions, Quiz Attempts, Lesson Progress
-- ============================================

USE UdemyDB;
GO

-- ============================================
-- SUBMISSIONS (for completed assignments)
-- ============================================

INSERT INTO Submission (StudentID, AssignmentID, AttemptNumber, SubmissionDate, Grade, Feedback, Status, GradedDate, TimeSpentHours)
VALUES
-- Student 1 (Emily) - Course 1 assignments
(1, 1, 1, '2023-12-10 18:30:00', 92, 'Excellent work! Your portfolio website is well-designed and responsive. Good use of modern CSS techniques. Minor improvement: add more semantic HTML tags.', 'graded', '2023-12-12 10:15:00', 9),
(1, 2, 1, '2024-01-05 20:15:00', 88, 'Great implementation of the Todo List! Local storage works perfectly. Consider adding input validation for edge cases.', 'graded', '2024-01-07 14:30:00', 7),

-- Student 2 (Michael) - Course 2 and 5 assignments
(2, 4, 1, '2025-12-08 16:45:00', 95, 'Outstanding calculator implementation! Clean OOP design and comprehensive functionality. Well done!', 'graded', '2025-12-10 09:20:00', 4),
(2, 5, 1, '2025-12-20 19:30:00', 90, 'Excellent web scraper! Good error handling and data validation. CSV output is well-structured.', 'graded', '2025-12-22 11:45:00', 9),
(2, 11, 1, '2025-12-18 21:00:00', 87, 'Good EDA project. Insightful visualizations and analysis. Could benefit from more statistical tests.', 'graded', '2025-12-20 15:30:00', 11),

-- Student 3 (Sarah) - Course 7 assignment
(3, 14, 1, '2025-12-24 17:45:00', 94, 'Fantastic YelpCamp implementation! Authentication works smoothly, and the UI is beautiful. Excellent project!', 'graded', '2025-12-26 10:00:00', 22),

-- Student 4 (David) - Course 1 assignment
(4, 1, 1, '2025-12-12 15:20:00', 78, 'Good effort on the portfolio. Functionality works well. Improve responsive design for mobile devices and add more CSS animations.', 'graded', '2025-12-14 13:40:00', 10),

-- Student 5 (Jessica) - Course 2 and 12 assignments
(5, 4, 1, '2025-12-09 14:30:00', 92, 'Great calculator! Well-structured code with good OOP principles. History feature is a nice touch.', 'graded', '2025-12-11 09:15:00', 5),
(5, 5, 1, '2025-12-23 18:45:00', NULL, 'Submission received. Currently under review.', 'pending', NULL, 8),
(5, 12, 1, '2026-01-15 20:30:00', NULL, NULL, 'pending', NULL, 14),

-- Student 6 (Ahmed) - Course 1 and 11 assignments
(6, 1, 1, '2025-12-13 19:15:00', 85, 'Solid portfolio website. Good structure and design. Add more interactive elements and optimize images for faster loading.', 'graded', '2025-12-15 11:30:00', 9),
(6, 18, 1, '2025-12-18 16:00:00', 90, 'Excellent landing page! Form validation works perfectly. Clean, professional design.', 'graded', '2025-12-20 10:45:00', 7),

-- Student 7 (Maria) - Course 1 assignment
(7, 1, 1, '2025-12-14 17:30:00', 88, 'Very good portfolio! Creative design and smooth animations. Consider adding a blog section for more content.', 'graded', '2025-12-16 14:20:00', 8),

-- Student 8 (James) - Course 8 assignment
(8, 15, 1, '2025-12-14 21:45:00', 91, 'Great collection of mini projects! Each demonstrates different JavaScript concepts well. Code is clean and well-commented.', 'graded', '2025-12-16 15:30:00', 9),

-- Student 9 (Sophie) - Course 1 and 7 assignments
(9, 1, 1, '2025-12-11 16:20:00', 93, 'Excellent portfolio! Beautiful design, smooth animations, and fully responsive. Great attention to detail!', 'graded', '2025-12-13 10:00:00', 8),
(9, 14, 1, '2025-12-26 19:30:00', NULL, 'Submission received. Will review by end of week.', 'pending', NULL, 18),

-- Student 10 (Rajesh) - Course 5 and 19 assignments
(10, 12, 1, '2026-01-16 22:15:00', NULL, NULL, 'pending', NULL, 16),
(10, 20, 1, '2025-12-28 18:00:00', 89, 'Good banking system implementation. OOP principles applied well. Add more exception handling for edge cases.', 'graded', '2025-12-30 14:15:00', 13),

-- Student 11 (Olivia) - Course 1 assignment
(11, 1, 1, '2025-12-13 20:00:00', 86, 'Good portfolio website. Functionality is solid. Enhance the visual design and add more portfolio projects.', 'graded', '2025-12-15 13:45:00', 9),

-- Student 12 (Lucas) - Course 1 assignment
(12, 1, 1, '2025-12-12 18:45:00', 90, 'Excellent portfolio! Clean code, great design, and fully responsive. Well done!', 'graded', '2025-12-14 11:20:00', 8),

-- Student 13 (Emma) - Course 6 assignment
(13, 13, 1, '2025-12-11 17:30:00', 94, 'Outstanding database design! Well-normalized tables, efficient queries, and proper indexing. Excellent work!', 'graded', '2025-12-13 09:45:00', 9),

-- Student 14 (Mohammed) - Course 1 and 19 assignments
(14, 1, 1, '2025-12-10 19:45:00', 87, 'Very good portfolio. Professional design and good functionality. Add more interactive features.', 'graded', '2025-12-12 15:00:00', 10),
(14, 20, 1, '2025-12-29 20:30:00', 92, 'Excellent banking system! Clean architecture, comprehensive features, and robust error handling.', 'graded', '2025-12-31 11:30:00', 12),

-- Student 15 (Anna) - Course 5 assignment (resubmission)
(15, 11, 1, '2025-12-20 18:15:00', 72, 'Good start on the EDA project. Analysis is basic. Add more visualizations and deeper statistical analysis. Resubmission recommended.', 'resubmit_required', '2025-12-22 10:30:00', 9),
(15, 11, 2, '2025-12-28 21:00:00', 88, 'Much better! Great improvement in analysis depth and visualization quality. Well done on the resubmission!', 'graded', '2025-12-30 14:45:00', 5);

-- ============================================
-- SUBMISSION FILES
-- ============================================

INSERT INTO SubmissionFile (SubmissionID, FileName, FileUrl, FileType)
VALUES
-- Submission 1 files
(1, 'index.html', 'https://cdn.udemy.com/submissions/student1-portfolio-index.html', 'HTML'),
(1, 'styles.css', 'https://cdn.udemy.com/submissions/student1-portfolio-styles.css', 'CSS'),
(1, 'script.js', 'https://cdn.udemy.com/submissions/student1-portfolio-script.js', 'JavaScript'),
(1, 'README.md', 'https://cdn.udemy.com/submissions/student1-portfolio-readme.md', 'Markdown'),

-- Submission 2 files
(2, 'index.html', 'https://cdn.udemy.com/submissions/student1-todo-index.html', 'HTML'),
(2, 'app.js', 'https://cdn.udemy.com/submissions/student1-todo-app.js', 'JavaScript'),
(2, 'style.css', 'https://cdn.udemy.com/submissions/student1-todo-style.css', 'CSS'),

-- Submission 3 files
(3, 'calculator.py', 'https://cdn.udemy.com/submissions/student2-calculator.py', 'Python'),
(3, 'README.md', 'https://cdn.udemy.com/submissions/student2-calc-readme.md', 'Markdown'),

-- Submission 4 files
(4, 'scraper.py', 'https://cdn.udemy.com/submissions/student2-scraper.py', 'Python'),
(4, 'output.csv', 'https://cdn.udemy.com/submissions/student2-scraper-output.csv', 'CSV'),
(4, 'README.md', 'https://cdn.udemy.com/submissions/student2-scraper-readme.md', 'Markdown'),

-- Submission 5 files
(5, 'analysis.ipynb', 'https://cdn.udemy.com/submissions/student2-eda-notebook.ipynb', 'Jupyter'),
(5, 'README.md', 'https://cdn.udemy.com/submissions/student2-eda-readme.md', 'Markdown'),

-- Submission 6 files (YelpCamp project - multiple files)
(6, 'app.js', 'https://cdn.udemy.com/submissions/student3-yelpcamp-app.js', 'JavaScript'),
(6, 'package.json', 'https://cdn.udemy.com/submissions/student3-yelpcamp-package.json', 'JSON'),
(6, 'README.md', 'https://cdn.udemy.com/submissions/student3-yelpcamp-readme.md', 'Markdown'),
(6, 'project.zip', 'https://cdn.udemy.com/submissions/student3-yelpcamp-full.zip', 'ZIP'),

-- Submission 13 files
(13, 'schema.sql', 'https://cdn.udemy.com/submissions/student13-library-schema.sql', 'SQL'),
(13, 'queries.sql', 'https://cdn.udemy.com/submissions/student13-library-queries.sql', 'SQL'),
(13, 'README.md', 'https://cdn.udemy.com/submissions/student13-library-readme.md', 'Markdown'),

-- Submission 14 files
(14, 'BankingSystem.java', 'https://cdn.udemy.com/submissions/student10-banking-main.java', 'Java'),
(14, 'Account.java', 'https://cdn.udemy.com/submissions/student10-banking-account.java', 'Java'),
(14, 'README.md', 'https://cdn.udemy.com/submissions/student10-banking-readme.md', 'Markdown');

-- ============================================
-- QUIZ ATTEMPTS
-- ============================================

INSERT INTO QuizAttempt (StudentID, QuizID, AttemptNumber, AttemptDate, Score, TimeSpentMinutes, Status)
VALUES
-- Student 1 quiz attempts
(1, 1, 1, '2023-02-20 14:30:00', 9, 22, 'completed'),
(1, 2, 1, '2023-02-25 16:45:00', 10, 18, 'completed'),
(1, 3, 1, '2023-03-05 11:20:00', 11, 28, 'completed'),
(1, 3, 2, '2023-03-06 15:30:00', 13, 25, 'completed'),
(1, 24, 1, '2024-01-15 10:15:00', 3, 20, 'completed'),
(1, 25, 1, '2024-01-22 14:30:00', 3, 28, 'completed'),

-- Student 2 quiz attempts
(2, 6, 1, '2023-01-15 13:20:00', 5, 18, 'completed'),
(2, 7, 1, '2023-01-22 15:45:00', 4, 22, 'completed'),
(2, 8, 1, '2023-01-28 11:00:00', 5, 25, 'completed'),
(2, 16, 1, '2023-03-20 14:15:00', 3, 28, 'completed'),
(2, 17, 1, '2023-04-05 16:30:00', 3, 35, 'completed'),
(2, 18, 1, '2023-04-15 10:45:00', 3, 22, 'completed'),

-- Student 3 quiz attempts
(3, 1, 1, '2023-04-10 09:30:00', 10, 20, 'completed'),
(3, 2, 1, '2023-04-15 14:20:00', 9, 17, 'completed'),
(3, 21, 1, '2023-06-25 11:45:00', 3, 25, 'completed'),
(3, 22, 1, '2023-07-02 15:10:00', 3, 28, 'completed'),

-- Student 4 quiz attempts
(4, 1, 1, '2023-06-05 13:15:00', 8, 25, 'completed'),
(4, 1, 2, '2023-06-06 16:30:00', 9, 22, 'completed'),
(4, 13, 1, '2023-09-20 10:45:00', 3, 24, 'completed'),
(4, 14, 1, '2023-09-28 14:20:00', 3, 27, 'completed'),

-- Student 5 quiz attempts
(5, 6, 1, '2022-12-01 11:30:00', 5, 20, 'completed'),
(5, 7, 1, '2022-12-08 14:15:00', 4, 23, 'completed'),
(5, 16, 1, '2023-02-20 16:45:00', 3, 30, 'completed'),
(5, 17, 1, '2023-03-05 10:20:00', 3, 38, 'completed'),

-- Student 6 quiz attempts
(6, 1, 1, '2023-03-28 12:00:00', 9, 23, 'completed'),
(6, 2, 1, '2023-04-02 15:30:00', 10, 19, 'completed'),

-- Student 7 quiz attempts
(7, 1, 1, '2023-07-20 13:45:00', 10, 21, 'completed'),
(7, 2, 1, '2023-07-25 16:00:00', 9, 18, 'completed'),

-- Student 8 quiz attempts
(8, 24, 1, '2024-03-01 12:30:00', 3, 25, 'completed'),
(8, 25, 1, '2024-03-08 15:45:00', 3, 30, 'completed'),

-- Student 9 quiz attempts
(9, 1, 1, '2023-05-15 10:45:00', 10, 20, 'completed'),
(9, 21, 1, '2023-08-10 14:30:00', 3, 24, 'completed'),

-- Student 10 quiz attempts
(10, 16, 1, '2023-01-25 13:20:00', 3, 32, 'completed'),
(10, 17, 1, '2023-02-10 16:45:00', 3, 40, 'completed'),
(10, 17, 2, '2023-02-12 11:00:00', 3, 35, 'completed'),

-- Student 11 quiz attempts
(11, 1, 1, '2023-09-05 14:15:00', 8, 26, 'completed'),
(11, 13, 1, '2024-01-25 11:30:00', 3, 25, 'completed'),

-- Student 12 quiz attempts
(12, 1, 1, '2023-08-18 12:45:00', 9, 24, 'completed'),
(12, 6, 1, '2023-12-01 15:20:00', 4, 21, 'completed'),

-- Student 13 quiz attempts
(13, 1, 1, '2023-02-15 10:30:00', 10, 19, 'completed'),
(13, 19, 1, '2024-03-05 14:45:00', 3, 20, 'completed'),
(13, 20, 1, '2024-03-15 16:00:00', 3, 28, 'completed'),

-- Student 14 quiz attempts
(14, 1, 1, '2022-11-15 11:45:00', 9, 22, 'completed'),
(14, 6, 1, '2023-04-20 14:30:00', 5, 19, 'completed'),

-- Student 15 quiz attempts
(15, 16, 1, '2023-10-18 13:00:00', 3, 29, 'completed'),
(15, 19, 1, '2024-02-05 15:30:00', 3, 21, 'completed');

-- ============================================
-- LESSON PROGRESS
-- ============================================

INSERT INTO LessonProgress (StudentID, LessonID, StartedDate, LastWatchedDate, WatchTimeSeconds, VideoPositionSeconds, IsCompleted, CompletedDate, TimesWatched)
VALUES
-- Student 1 (Emily) - Course 1 lessons
(1, 1, '2023-02-15 11:00:00', '2023-02-15 11:08:00', 480, 480, 1, '2023-02-15 11:08:00', 1),
(1, 2, '2023-02-15 11:10:00', '2023-02-15 11:25:00', 900, 900, 1, '2023-02-15 11:25:00', 1),
(1, 3, '2023-02-15 11:30:00', '2023-02-16 14:20:00', 1200, 1200, 1, '2023-02-16 14:20:00', 1),
(1, 4, '2023-02-16 14:25:00', '2023-02-17 10:15:00', 1500, 1500, 1, '2023-02-17 10:15:00', 2),
(1, 5, '2023-02-17 10:20:00', '2023-02-18 15:30:00', 1080, 1080, 1, '2023-02-18 15:30:00', 1),
(1, 6, '2023-02-18 15:35:00', '2023-02-19 11:45:00', 1320, 1320, 1, '2023-02-19 11:45:00', 1),
(1, 9, '2023-02-20 10:00:00', '2025-10-31 14:22:00', 580, 960, 0, NULL, 1),

-- Student 2 (Michael) - Course 2 lessons
(2, 19, '2023-01-08 11:30:00', '2023-01-08 11:45:00', 900, 900, 1, '2023-01-08 11:45:00', 1),
(2, 20, '2023-01-08 11:50:00', '2023-01-08 12:00:00', 600, 600, 1, '2023-01-08 12:00:00', 1),
(2, 21, '2023-01-09 10:00:00', '2023-01-09 10:20:00', 1200, 1200, 1, '2023-01-09 10:20:00', 1),
(2, 22, '2023-01-09 14:00:00', '2023-01-10 11:30:00', 1500, 1500, 1, '2023-01-10 11:30:00', 2),
(2, 23, '2023-01-10 14:00:00', '2025-10-30 18:45:00', 1200, 1800, 0, NULL, 1),

-- Student 3 (Sarah) - Course 1 lessons
(3, 1, '2023-04-05 08:30:00', '2023-04-05 08:38:00', 480, 480, 1, '2023-04-05 08:38:00', 1),
(3, 2, '2023-04-05 08:40:00', '2023-04-05 08:55:00', 900, 900, 1, '2023-04-05 08:55:00', 1),
(3, 3, '2023-04-05 09:00:00', '2023-04-05 09:20:00', 1200, 1200, 1, '2023-04-05 09:20:00', 1),
(3, 4, '2023-04-06 10:00:00', '2023-04-06 10:25:00', 1500, 1500, 1, '2023-04-06 10:25:00', 1),
(3, 5, '2023-04-06 14:00:00', '2023-04-07 11:30:00', 1080, 1080, 1, '2023-04-07 11:30:00', 2),

-- Student 4 (David) - Course 1 lessons
(4, 1, '2023-05-28 12:45:00', '2023-05-28 12:53:00', 480, 480, 1, '2023-05-28 12:53:00', 1),
(4, 2, '2023-05-28 13:00:00', '2023-05-28 13:15:00', 900, 900, 1, '2023-05-28 13:15:00', 1),
(4, 3, '2023-05-29 10:00:00', '2023-05-29 10:20:00', 1200, 1200, 1, '2023-05-29 10:20:00', 1),
(4, 4, '2023-05-29 14:30:00', '2025-10-29 20:30:00', 800, 1500, 0, NULL, 1),

-- Student 5 (Jessica) - Course 2 lessons
(5, 19, '2022-11-20 10:00:00', '2022-11-20 10:15:00', 900, 900, 1, '2022-11-20 10:15:00', 1),
(5, 20, '2022-11-20 10:20:00', '2022-11-20 10:30:00', 600, 600, 1, '2022-11-20 10:30:00', 1),
(5, 21, '2022-11-21 09:00:00', '2022-11-21 09:20:00', 1200, 1200, 1, '2022-11-21 09:20:00', 1),
(5, 22, '2022-11-21 14:00:00', '2022-11-22 10:30:00', 1500, 1500, 1, '2022-11-22 10:30:00', 2),
(5, 23, '2022-11-22 15:00:00', '2022-11-23 11:45:00', 1800, 1800, 1, '2022-11-23 11:45:00', 1),
(5, 24, '2022-11-24 10:00:00', '2025-10-31 09:00:00', 1200, 1680, 0, NULL, 1),

-- Student 6 (Ahmed) - Course 1 lessons
(6, 1, '2023-03-22 10:15:00', '2023-03-22 10:23:00', 480, 480, 1, '2023-03-22 10:23:00', 1),
(6, 2, '2023-03-22 10:30:00', '2023-03-22 10:45:00', 900, 900, 1, '2023-03-22 10:45:00', 1),
(6, 3, '2023-03-23 11:00:00', '2025-10-30 16:40:00', 850, 1200, 0, NULL, 1),

-- Student 7 (Maria) - Course 1 lessons
(7, 1, '2023-07-15 12:30:00', '2023-07-15 12:38:00', 480, 480, 1, '2023-07-15 12:38:00', 1),
(7, 2, '2023-07-15 12:45:00', '2023-07-15 13:00:00', 900, 900, 1, '2023-07-15 13:00:00', 1),
(7, 3, '2023-07-16 10:00:00', '2023-07-16 10:20:00', 1200, 1200, 1, '2023-07-16 10:20:00', 1),
(7, 4, '2023-07-16 14:00:00', '2025-10-31 12:20:00', 950, 1500, 0, NULL, 1),

-- Student 8 (James) - Course 8 lessons (completed course)
(8, 1, '2024-02-22 11:15:00', '2024-02-22 11:23:00', 480, 480, 1, '2024-02-22 11:23:00', 1),
(8, 2, '2024-02-22 11:30:00', '2024-02-22 11:45:00', 900, 900, 1, '2024-02-22 11:45:00', 1),

-- Student 9 (Sophie) - Course 1 lessons
(9, 1, '2023-05-10 11:45:00', '2023-05-10 11:53:00', 480, 480, 1, '2023-05-10 11:53:00', 1),
(9, 2, '2023-05-10 12:00:00', '2023-05-10 12:15:00', 900, 900, 1, '2023-05-10 12:15:00', 1),
(9, 3, '2023-05-11 10:00:00', '2023-05-11 10:20:00', 1200, 1200, 1, '2023-05-11 10:20:00', 1),
(9, 4, '2023-05-11 14:30:00', '2023-05-12 11:00:00', 1500, 1500, 1, '2023-05-12 11:00:00', 2),
(9, 5, '2023-05-12 14:00:00', '2025-10-31 11:35:00', 750, 1080, 0, NULL, 1),

-- Student 10 (Rajesh) - Course 5 lessons (completed)
(10, 42, '2023-01-18 10:15:00', '2023-01-18 10:29:00', 840, 840, 1, '2023-01-18 10:29:00', 1),
(10, 43, '2023-01-18 10:35:00', '2023-01-18 10:53:00', 1080, 1080, 1, '2023-01-18 10:53:00', 1),
(10, 44, '2023-01-19 11:00:00', '2023-01-19 11:20:00', 1200, 1200, 1, '2023-01-19 11:20:00', 1),
(10, 45, '2023-01-19 14:30:00', '2023-01-20 10:15:00', 1680, 1680, 1, '2023-01-20 10:15:00', 2),

-- Student 11 (Olivia) - Course 1 lessons
(11, 1, '2023-09-01 13:15:00', '2023-09-01 13:23:00', 480, 480, 1, '2023-09-01 13:23:00', 1),
(11, 2, '2023-09-01 13:30:00', '2023-09-01 13:45:00', 900, 900, 1, '2023-09-01 13:45:00', 1),
(11, 3, '2023-09-02 10:00:00', '2025-10-31 16:45:00', 820, 1200, 0, NULL, 1),

-- Student 12 (Lucas) - Course 1 lessons
(12, 1, '2023-08-12 11:30:00', '2023-08-12 11:38:00', 480, 480, 1, '2023-08-12 11:38:00', 1),
(12, 2, '2023-08-12 11:45:00', '2023-08-12 12:00:00', 900, 900, 1, '2023-08-12 12:00:00', 1),
(12, 3, '2023-08-13 10:00:00', '2023-08-13 10:20:00', 1200, 1200, 1, '2023-08-13 10:20:00', 1),
(12, 4, '2023-08-13 14:00:00', '2025-10-29 19:25:00', 1100, 1500, 0, NULL, 1),

-- Student 13 (Emma) - Course 1 lessons (completed course)
(13, 1, '2023-02-10 09:35:00', '2023-02-10 09:43:00', 480, 480, 1, '2023-02-10 09:43:00', 1),
(13, 2, '2023-02-10 09:50:00', '2023-02-10 10:05:00', 900, 900, 1, '2023-02-10 10:05:00', 1),
(13, 3, '2023-02-10 14:00:00', '2023-02-11 10:20:00', 1200, 1200, 1, '2023-02-11 10:20:00', 2),
(13, 4, '2023-02-11 14:30:00', '2023-02-12 11:00:00', 1500, 1500, 1, '2023-02-12 11:00:00', 1),
(13, 5, '2023-02-12 14:00:00', '2023-02-13 10:30:00', 1080, 1080, 1, '2023-02-13 10:30:00', 1),

-- Student 14 (Mohammed) - Course 1 lessons
(14, 1, '2022-11-08 11:00:00', '2022-11-08 11:08:00', 480, 480, 1, '2022-11-08 11:08:00', 1),
(14, 2, '2022-11-08 11:15:00', '2022-11-08 11:30:00', 900, 900, 1, '2022-11-08 11:30:00', 1),
(14, 3, '2022-11-09 10:00:00', '2022-11-09 10:20:00', 1200, 1200, 1, '2022-11-09 10:20:00', 1),
(14, 4, '2022-11-09 14:00:00', '2022-11-10 11:30:00', 1500, 1500, 1, '2022-11-10 11:30:00', 2),
(14, 5, '2022-11-10 14:30:00', '2025-10-30 15:30:00', 850, 1080, 0, NULL, 1),

-- Student 15 (Anna) - Course 5 lessons
(15, 42, '2023-10-12 11:15:00', '2023-10-12 11:29:00', 840, 840, 1, '2023-10-12 11:29:00', 1),
(15, 43, '2023-10-12 11:35:00', '2023-10-12 11:53:00', 1080, 1080, 1, '2023-10-12 11:53:00', 1),
(15, 44, '2023-10-13 10:00:00', '2025-10-31 10:40:00', 950, 1200, 0, NULL, 1);

GO

-- ============================================
-- DATA INSERTION COMPLETE!
-- ============================================
-- Summary:
-- - 10 Instructors with phones and specializations
-- - 15 Students with interests
-- - 34 Categories (hierarchical)
-- - 60 Tags
-- - 20 Courses with full details
-- - 120+ Course tags and categories
-- - 120+ Learning outcomes
-- - 42 Requirements
-- - 134 Sections
-- - 56 Lessons with attachments and resources
-- - 29 Quizzes with 99 questions and 90+ options
-- - 20 Assignments with attachments and required files
-- - 15 Coupons
-- - 45 Enrollments
-- - 45 Payments
-- - 9 Certificates
-- - 38 Reviews
-- - 20 Submissions with files
-- - 40+ Quiz attempts
-- - 60+ Lesson progress records
-- ============================================

PRINT 'All data inserted successfully!';
PRINT 'Total records: 1000+';
PRINT 'Database is ready for use!';
