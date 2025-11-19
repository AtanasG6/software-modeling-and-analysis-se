-- ============================================
-- UDEMY DATABASE - INSERT DATA PART 6
-- Coupons, Enrollments, Payments, Reviews, Certificates
-- ============================================

USE UdemyDB;
GO

-- ============================================
-- COUPONS
-- ============================================

INSERT INTO Coupon (Code, DiscountPercentage, ValidFrom, ValidTo, UsageLimit, Status, Description)
VALUES
('NEWYEAR2025', 85, '2025-01-01 00:00:00', '2025-01-31 23:59:59', 1000, 'active', 'New Year 2025 Special - 85% off all courses'),
('SPRING2025', 75, '2025-03-01 00:00:00', '2025-03-31 23:59:59', 500, 'active', 'Spring Sale - 75% discount'),
('BLACKFRIDAY', 90, '2024-11-25 00:00:00', '2024-11-30 23:59:59', 5000, 'expired', 'Black Friday 2024 - 90% off'),
('CYBERMONDAY', 85, '2024-12-02 00:00:00', '2024-12-02 23:59:59', 2000, 'expired', 'Cyber Monday Special'),
('EARLYBIRD', 50, '2025-01-01 00:00:00', '2025-12-31 23:59:59', NULL, 'active', 'Early bird discount for new courses'),
('STUDENT50', 50, '2025-01-01 00:00:00', '2025-12-31 23:59:59', NULL, 'active', 'Student discount - 50% off'),
('WELCOME10', 10, '2025-01-01 00:00:00', '2025-12-31 23:59:59', NULL, 'active', 'Welcome discount for new users'),
('SUMMER2025', 70, '2025-06-01 00:00:00', '2025-08-31 23:59:59', 1500, 'active', 'Summer learning sale'),
('FREECOURSE', 100, '2025-01-15 00:00:00', '2025-01-20 23:59:59', 100, 'active', 'Limited time - Get course for free'),
('FLASH24H', 80, '2025-10-15 00:00:00', '2025-10-16 23:59:59', 300, 'expired', 'Flash sale - 24 hours only'),
('BUNDLE20', 20, '2025-01-01 00:00:00', '2025-12-31 23:59:59', NULL, 'active', 'Bundle discount - 20% off when buying multiple courses'),
('REFERRAL', 30, '2025-01-01 00:00:00', '2025-12-31 23:59:59', NULL, 'active', 'Referral bonus - 30% off'),
('TESTDISABLED', 50, '2025-01-01 00:00:00', '2025-12-31 23:59:59', 10, 'disabled', 'Test coupon - disabled'),
('HOLIDAY2024', 85, '2024-12-15 00:00:00', '2024-12-31 23:59:59', 2000, 'expired', 'Holiday Season 2024'),
('LOYALTY', 40, '2025-01-01 00:00:00', '2025-12-31 23:59:59', NULL, 'active', 'Loyalty reward for returning customers');

-- ============================================
-- ENROLLMENTS
-- ============================================

INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate, LastAccessedDate, Status, CompletedDate, TotalWatchTimeMinutes)
VALUES
-- Emily Johnson enrollments
(1, 1, '2023-02-15 10:30:00', '2025-10-31 14:22:00', 'active', NULL, 1240),
(1, 3, '2023-05-20 14:15:00', '2025-10-28 16:45:00', 'active', NULL, 890),
(1, 8, '2024-01-10 09:00:00', '2025-10-30 11:20:00', 'completed', '2024-08-15 18:30:00', 1580),

-- Michael Chen enrollments
(2, 2, '2023-01-08 11:20:00', '2025-10-30 18:45:00', 'active', NULL, 2150),
(2, 5, '2023-03-15 13:45:00', '2025-10-29 20:10:00', 'active', NULL, 1920),
(2, 12, '2023-08-22 16:30:00', '2025-10-28 15:30:00', 'completed', '2024-02-10 19:45:00', 2340),

-- Sarah Williams enrollments
(3, 1, '2023-04-05 08:15:00', '2025-10-31 10:15:00', 'active', NULL, 1680),
(3, 7, '2023-06-18 10:45:00', '2025-10-29 12:30:00', 'completed', '2024-01-20 17:00:00', 2100),
(3, 15, '2024-03-12 14:20:00', '2025-10-30 19:15:00', 'active', NULL, 950),

-- David Martinez enrollments
(4, 1, '2023-05-28 12:30:00', '2025-10-29 20:30:00', 'active', NULL, 1420),
(4, 4, '2023-09-14 15:00:00', '2025-10-27 14:45:00', 'active', NULL, 1150),
(4, 17, '2024-02-08 11:15:00', '2025-10-26 16:20:00', 'dropped', NULL, 320),

-- Jessica Brown enrollments
(5, 2, '2022-11-20 09:45:00', '2025-10-31 09:00:00', 'active', NULL, 2580),
(5, 5, '2023-02-14 13:00:00', '2025-10-30 10:30:00', 'completed', '2023-09-05 20:15:00', 2890),
(5, 12, '2023-10-05 16:20:00', '2025-10-29 13:45:00', 'active', NULL, 1670),

-- Ahmed Hassan enrollments
(6, 1, '2023-03-22 10:00:00', '2025-10-30 16:40:00', 'active', NULL, 1540),
(6, 11, '2023-07-10 14:30:00', '2025-10-28 18:20:00', 'active', NULL, 1280),
(6, 10, '2024-01-25 11:45:00', '2025-10-27 15:10:00', 'active', NULL, 890),

-- Maria Garcia enrollments
(7, 1, '2023-07-15 12:15:00', '2025-10-31 12:20:00', 'active', NULL, 1390),
(7, 16, '2023-09-28 15:45:00', '2025-10-29 14:35:00', 'completed', '2024-03-10 19:00:00', 1120),
(7, 13, '2024-04-05 10:30:00', '2025-10-30 17:25:00', 'active', NULL, 780),

-- James Anderson enrollments
(8, 17, '2022-12-10 09:30:00', '2025-10-30 22:10:00', 'completed', '2023-06-15 21:30:00', 2450),
(8, 18, '2023-11-18 13:20:00', '2025-10-29 20:45:00', 'active', NULL, 1680),
(8, 8, '2024-02-22 11:00:00', '2025-10-28 16:55:00', 'active', NULL, 920),

-- Sophie Dubois enrollments
(9, 1, '2023-05-10 11:30:00', '2025-10-31 11:35:00', 'active', NULL, 1470),
(9, 7, '2023-08-05 14:15:00', '2025-10-30 13:20:00', 'active', NULL, 1250),
(9, 15, '2024-01-15 10:45:00', '2025-10-29 15:40:00', 'active', NULL, 1040),

-- Rajesh Kumar enrollments
(10, 5, '2023-01-18 10:00:00', '2025-10-30 14:50:00', 'completed', '2023-08-22 18:45:00', 2650),
(10, 12, '2023-09-30 13:30:00', '2025-10-29 11:30:00', 'active', NULL, 1890),
(10, 19, '2024-03-08 15:20:00', '2025-10-28 17:15:00', 'active', NULL, 850),

-- Olivia Taylor enrollments
(11, 1, '2023-09-01 13:00:00', '2025-10-31 16:45:00', 'active', NULL, 1310),
(11, 4, '2024-01-20 10:30:00', '2025-10-30 14:20:00', 'active', NULL, 980),
(11, 11, '2024-05-15 12:45:00', '2025-10-29 18:30:00', 'active', NULL, 720),

-- Lucas Silva enrollments
(12, 1, '2023-08-12 11:15:00', '2025-10-29 19:25:00', 'active', NULL, 1520),
(12, 2, '2023-11-25 14:45:00', '2025-10-30 15:10:00', 'active', NULL, 1180),
(12, 18, '2024-04-18 16:00:00', '2025-10-28 20:35:00', 'active', NULL, 670),

-- Emma Wilson enrollments
(13, 1, '2023-02-10 09:20:00', '2025-10-31 13:55:00', 'completed', '2023-09-18 20:00:00', 2180),
(13, 7, '2023-10-22 12:30:00', '2025-10-30 16:25:00', 'active', NULL, 1420),
(13, 6, '2024-02-28 14:15:00', '2025-10-29 12:40:00', 'active', NULL, 890),

-- Mohammed Ali enrollments
(14, 1, '2022-11-08 10:45:00', '2025-10-30 15:30:00', 'active', NULL, 1890),
(14, 2, '2023-04-15 13:15:00', '2025-10-29 17:20:00', 'active', NULL, 1560),
(14, 19, '2023-09-05 15:30:00', '2025-10-28 19:10:00', 'completed', '2024-03-20 21:15:00', 1980),

-- Anna Kowalski enrollments
(15, 5, '2023-10-12 11:00:00', '2025-10-31 10:40:00', 'active', NULL, 1720),
(15, 6, '2024-01-30 14:20:00', '2025-10-30 13:15:00', 'active', NULL, 1050),
(15, 12, '2024-06-10 16:45:00', '2025-10-29 18:55:00', 'active', NULL, 580);

-- ============================================
-- PAYMENTS
-- ============================================

INSERT INTO Payment (StudentID, PaymentTimestamp, EnrollmentID, CouponID, Amount, Currency, PaymentMethod, TransactionID, Status, BillingStreet, BillingCity, BillingCountry, BillingPostalCode)
VALUES
-- Emily Johnson payments
(1, '2023-02-15 10:25:00', 1, 3, 12.59, 'USD', 'Credit Card', 'TXN-2023-001-A1B2C3', 'completed', '123 Main Street', 'New York', 'United States', '10001'),
(1, '2023-05-20 14:10:00', 2, 5, 47.50, 'USD', 'PayPal', 'TXN-2023-002-D4E5F6', 'completed', '123 Main Street', 'New York', 'United States', '10001'),
(1, '2024-01-10 08:55:00', 3, 7, 71.99, 'USD', 'Credit Card', 'TXN-2024-001-G7H8I9', 'completed', '123 Main Street', 'New York', 'United States', '10001'),

-- Michael Chen payments
(2, '2023-01-08 11:15:00', 4, 3, 11.89, 'USD', 'Credit Card', 'TXN-2023-003-J1K2L3', 'completed', '456 Tech Avenue', 'San Jose', 'United States', '95110'),
(2, '2023-03-15 13:40:00', 5, 5, 47.50, 'USD', 'Debit Card', 'TXN-2023-004-M4N5O6', 'completed', '456 Tech Avenue', 'San Jose', 'United States', '95110'),
(2, '2023-08-22 16:25:00', 6, 6, 47.50, 'USD', 'PayPal', 'TXN-2023-005-P7Q8R9', 'completed', '456 Tech Avenue', 'San Jose', 'United States', '95110'),

-- Sarah Williams payments
(3, '2023-04-05 08:10:00', 7, 5, 45.00, 'GBP', 'Credit Card', 'TXN-2023-006-S1T2U3', 'completed', '789 Learning Lane', 'London', 'United Kingdom', 'SW1A 2AA'),
(3, '2023-06-18 10:40:00', 8, 6, 42.50, 'GBP', 'PayPal', 'TXN-2023-007-V4W5X6', 'completed', '789 Learning Lane', 'London', 'United Kingdom', 'SW1A 2AA'),
(3, '2024-03-12 14:15:00', 9, 7, 76.49, 'GBP', 'Credit Card', 'TXN-2024-002-Y7Z8A9', 'completed', '789 Learning Lane', 'London', 'United Kingdom', 'SW1A 2AA'),

-- David Martinez payments
(4, '2023-05-28 12:25:00', 10, 5, 45.00, 'EUR', 'Credit Card', 'TXN-2023-008-B1C2D3', 'completed', '321 Code Street', 'Barcelona', 'Spain', '08001'),
(4, '2023-09-14 14:55:00', 11, 6, 45.00, 'EUR', 'Debit Card', 'TXN-2023-009-E4F5G6', 'completed', '321 Code Street', 'Barcelona', 'Spain', '08001'),
(4, '2024-02-08 11:10:00', 12, 7, 80.99, 'EUR', 'PayPal', 'TXN-2024-003-H7I8J9', 'refunded', '321 Code Street', 'Barcelona', 'Spain', '08001'),

-- Jessica Brown payments
(5, '2022-11-20 09:40:00', 13, 3, 11.89, 'CAD', 'Credit Card', 'TXN-2022-001-K1L2M3', 'completed', '654 Developer Drive', 'Toronto', 'Canada', 'M5H 1T1'),
(5, '2023-02-14 12:55:00', 14, 5, 47.50, 'CAD', 'PayPal', 'TXN-2023-010-N4O5P6', 'completed', '654 Developer Drive', 'Toronto', 'Canada', 'M5H 1T1'),
(5, '2023-10-05 16:15:00', 15, 6, 47.50, 'CAD', 'Credit Card', 'TXN-2023-011-Q7R8S9', 'completed', '654 Developer Drive', 'Toronto', 'Canada', 'M5H 1T1'),

-- Ahmed Hassan payments
(6, '2023-03-22 09:55:00', 16, 5, 45.00, 'AED', 'Credit Card', 'TXN-2023-012-T1U2V3', 'completed', '987 Study Boulevard', 'Dubai', 'UAE', '12345'),
(6, '2023-07-10 14:25:00', 17, 6, 45.00, 'AED', 'Debit Card', 'TXN-2023-013-W4X5Y6', 'completed', '987 Study Boulevard', 'Dubai', 'UAE', '12345'),
(6, '2024-01-25 11:40:00', 18, 7, 89.99, 'AED', 'PayPal', 'TXN-2024-004-Z7A8B9', 'completed', '987 Study Boulevard', 'Dubai', 'UAE', '12345'),

-- Maria Garcia payments
(7, '2023-07-15 12:10:00', 19, 5, 45.00, 'MXN', 'Credit Card', 'TXN-2023-014-C1D2E3', 'completed', '147 Knowledge Road', 'Mexico City', 'Mexico', '01000'),
(7, '2023-09-28 15:40:00', 20, 6, 40.00, 'MXN', 'PayPal', 'TXN-2023-015-F4G5H6', 'completed', '147 Knowledge Road', 'Mexico City', 'Mexico', '01000'),
(7, '2024-04-05 10:25:00', 21, 7, 71.99, 'MXN', 'Credit Card', 'TXN-2024-005-I7J8K9', 'completed', '147 Knowledge Road', 'Mexico City', 'Mexico', '01000'),

-- James Anderson payments
(8, '2022-12-10 09:25:00', 22, 3, 12.59, 'AUD', 'Credit Card', 'TXN-2022-002-L1M2N3', 'completed', '258 Programming Plaza', 'Sydney', 'Australia', '2000'),
(8, '2023-11-18 13:15:00', 23, 6, 42.50, 'AUD', 'PayPal', 'TXN-2023-016-O4P5Q6', 'completed', '258 Programming Plaza', 'Sydney', 'Australia', '2000'),
(8, '2024-02-22 10:55:00', 24, 7, 71.99, 'AUD', 'Credit Card', 'TXN-2024-006-R7S8T9', 'completed', '258 Programming Plaza', 'Sydney', 'Australia', '2000'),

-- Sophie Dubois payments
(9, '2023-05-10 11:25:00', 25, 5, 45.00, 'EUR', 'Credit Card', 'TXN-2023-017-U1V2W3', 'completed', '369 Education Avenue', 'Paris', 'France', '75001'),
(9, '2023-08-05 14:10:00', 26, 6, 42.50, 'EUR', 'Debit Card', 'TXN-2023-018-X4Y5Z6', 'completed', '369 Education Avenue', 'Paris', 'France', '75001'),
(9, '2024-01-15 10:40:00', 27, 7, 76.49, 'EUR', 'PayPal', 'TXN-2024-007-A7B8C9', 'completed', '369 Education Avenue', 'Paris', 'France', '75001'),

-- Rajesh Kumar payments
(10, '2023-01-18 09:55:00', 28, 3, 13.30, 'INR', 'Credit Card', 'TXN-2023-019-D1E2F3', 'completed', '741 Tech Tower', 'Bangalore', 'India', '560001'),
(10, '2023-09-30 13:25:00', 29, 6, 47.50, 'INR', 'UPI', 'TXN-2023-020-G4H5I6', 'completed', '741 Tech Tower', 'Bangalore', 'India', '560001'),
(10, '2024-03-08 15:15:00', 30, 7, 71.99, 'INR', 'Credit Card', 'TXN-2024-008-J7K8L9', 'completed', '741 Tech Tower', 'Bangalore', 'India', '560001'),

-- Olivia Taylor payments
(11, '2023-09-01 12:55:00', 31, 6, 45.00, 'USD', 'Credit Card', 'TXN-2023-021-M1N2O3', 'completed', '852 Innovation Street', 'Austin', 'United States', '78701'),
(11, '2024-01-20 10:25:00', 32, 7, 80.99, 'USD', 'PayPal', 'TXN-2024-009-P4Q5R6', 'completed', '852 Innovation Street', 'Austin', 'United States', '78701'),
(11, '2024-05-15 12:40:00', 33, 1, 13.50, 'USD', 'Credit Card', 'TXN-2024-010-S7T8U9', 'completed', '852 Innovation Street', 'Austin', 'United States', '78701'),

-- Lucas Silva payments
(12, '2023-08-12 11:10:00', 34, 6, 45.00, 'BRL', 'Credit Card', 'TXN-2023-022-V1W2X3', 'completed', '963 Coding Circle', 'São Paulo', 'Brazil', '01310-100'),
(12, '2023-11-25 14:40:00', 35, 6, 42.50, 'BRL', 'Pix', 'TXN-2023-023-Y4Z5A6', 'completed', '963 Coding Circle', 'São Paulo', 'Brazil', '01310-100'),
(12, '2024-04-18 15:55:00', 36, 7, 76.49, 'BRL', 'Credit Card', 'TXN-2024-011-B7C8D9', 'completed', '963 Coding Circle', 'São Paulo', 'Brazil', '01310-100'),

-- Emma Wilson payments
(13, '2023-02-10 09:15:00', 37, 3, 12.59, 'EUR', 'Credit Card', 'TXN-2023-024-E1F2G3', 'completed', '159 Learn Lane', 'Dublin', 'Ireland', 'D01 F5P2'),
(13, '2023-10-22 12:25:00', 38, 6, 42.50, 'EUR', 'PayPal', 'TXN-2023-025-H4I5J6', 'completed', '159 Learn Lane', 'Dublin', 'Ireland', 'D01 F5P2'),
(13, '2024-02-28 14:10:00', 39, 7, 71.99, 'EUR', 'Credit Card', 'TXN-2024-012-K7L8M9', 'completed', '159 Learn Lane', 'Dublin', 'Ireland', 'D01 F5P2'),

-- Mohammed Ali payments
(14, '2022-11-08 10:40:00', 40, 3, 12.59, 'EGP', 'Credit Card', 'TXN-2022-003-N1O2P3', 'completed', '357 Tech District', 'Cairo', 'Egypt', '11511'),
(14, '2023-04-15 13:10:00', 41, 5, 42.50, 'EGP', 'Cash', 'TXN-2023-026-Q4R5S6', 'completed', '357 Tech District', 'Cairo', 'Egypt', '11511'),
(14, '2023-09-05 15:25:00', 42, 6, 40.00, 'EGP', 'Credit Card', 'TXN-2023-027-T7U8V9', 'completed', '357 Tech District', 'Cairo', 'Egypt', '11511'),

-- Anna Kowalski payments
(15, '2023-10-12 10:55:00', 43, 6, 47.50, 'PLN', 'Credit Card', 'TXN-2023-028-W1X2Y3', 'completed', '753 Developer Square', 'Warsaw', 'Poland', '00-001'),
(15, '2024-01-30 14:15:00', 44, 7, 71.99, 'PLN', 'PayPal', 'TXN-2024-013-Z4A5B6', 'completed', '753 Developer Square', 'Warsaw', 'Poland', '00-001'),
(15, '2024-06-10 16:40:00', 45, 1, 14.25, 'PLN', 'Credit Card', 'TXN-2024-014-C7D8E9', 'completed', '753 Developer Square', 'Warsaw', 'Poland', '00-001');

-- ============================================
-- CERTIFICATES (only for completed enrollments)
-- ============================================

INSERT INTO Certificate (EnrollmentID, IssueDate, CertificateUrl, VerificationCode)
VALUES
(3, '2024-08-16 09:00:00', 'https://cdn.udemy.com/certificates/UC-EMILY-COURSE8-2024.pdf', 'UC-A1B2C3D4E5F6'),
(6, '2024-02-11 10:30:00', 'https://cdn.udemy.com/certificates/UC-MICHAEL-COURSE12-2024.pdf', 'UC-G7H8I9J0K1L2'),
(8, '2024-01-21 11:15:00', 'https://cdn.udemy.com/certificates/UC-SARAH-COURSE7-2024.pdf', 'UC-M3N4O5P6Q7R8'),
(14, '2023-09-06 14:45:00', 'https://cdn.udemy.com/certificates/UC-JESSICA-COURSE5-2023.pdf', 'UC-S9T0U1V2W3X4'),
(20, '2024-03-11 16:20:00', 'https://cdn.udemy.com/certificates/UC-MARIA-COURSE16-2024.pdf', 'UC-Y5Z6A7B8C9D0'),
(22, '2023-06-16 13:00:00', 'https://cdn.udemy.com/certificates/UC-JAMES-COURSE17-2023.pdf', 'UC-E1F2G3H4I5J6'),
(28, '2023-08-23 15:30:00', 'https://cdn.udemy.com/certificates/UC-RAJESH-COURSE5-2023.pdf', 'UC-K7L8M9N0O1P2'),
(37, '2023-09-19 17:45:00', 'https://cdn.udemy.com/certificates/UC-EMMA-COURSE1-2023.pdf', 'UC-Q3R4S5T6U7V8'),
(42, '2024-03-21 12:30:00', 'https://cdn.udemy.com/certificates/UC-MOHAMMED-COURSE19-2024.pdf', 'UC-W9X0Y1Z2A3B4');

-- ============================================
-- REVIEWS
-- ============================================

INSERT INTO Review (StudentID, CourseID, Rating, Comment, ReviewDate, HelpfulCount)
VALUES
-- Course 1 reviews
(1, 1, 5, 'Amazing course! Angela is an excellent instructor. The projects are practical and helped me build a strong portfolio. Highly recommended for beginners!', '2023-03-20 15:30:00', 342),
(3, 1, 5, 'Best web development course I have taken. Clear explanations, great projects, and excellent support from the instructor.', '2023-05-15 11:20:00', 287),
(4, 1, 4, 'Very comprehensive course. Covers a lot of material. Sometimes felt a bit rushed, but overall great value for money.', '2023-07-10 14:45:00', 156),
(6, 1, 5, 'This course changed my career! I went from zero coding knowledge to building full-stack applications. Thank you Angela!', '2023-04-28 16:10:00', 419),
(7, 1, 5, 'Excellent teaching style. The course is well-structured and easy to follow. The projects are challenging and rewarding.', '2023-08-22 10:35:00', 201),
(9, 1, 4, 'Great course with lots of content. Would have liked more advanced topics, but perfect for beginners to intermediate.', '2023-06-18 13:50:00', 178),
(11, 1, 5, 'Angela explains complex concepts in a simple way. The hands-on projects make learning fun and practical.', '2023-10-05 12:25:00', 234),
(12, 1, 5, 'Worth every penny! This course covers everything you need to become a web developer.', '2023-09-14 15:40:00', 298),
(13, 1, 5, 'Completed the course and got my first job as a junior developer. The portfolio projects really impressed my employer!', '2023-10-30 17:15:00', 512),
(14, 1, 4, 'Very good course. Sometimes the pace is fast, but you can always rewatch. Lots of practical examples.', '2022-12-20 11:30:00', 145),

-- Course 2 reviews
(2, 2, 5, 'The 100 Days of Code challenge is brilliant! Each day builds on the previous one. Angela makes Python fun and accessible.', '2023-02-25 14:20:00', 456),
(5, 2, 5, 'Best Python course on Udemy! The projects are diverse and interesting. I learned so much in 100 days.', '2022-12-18 16:45:00', 389),
(12, 2, 4, 'Great course for learning Python. The daily structure keeps you motivated. Some projects could be more challenging.', '2024-01-05 10:15:00', 167),
(14, 2, 5, 'Angela is an amazing teacher. The course covers Python from basics to advanced topics with real-world projects.', '2023-05-30 13:40:00', 421),

-- Course 3 reviews
(1, 3, 5, 'Maximilian is the best React instructor! This course is comprehensive and up-to-date with React 19.', '2023-06-28 11:50:00', 398),

-- Course 4 reviews
(4, 4, 4, 'Solid Node.js course. Covers both basics and advanced topics. Good explanation of asynchronous programming.', '2023-10-22 15:20:00', 213),
(11, 4, 5, 'Excellent course for learning Node.js. Max explains everything clearly with practical examples.', '2024-02-15 12:35:00', 178),

-- Course 5 reviews
(2, 5, 5, 'Jose is an excellent instructor. This course covers everything from NumPy to Deep Learning. Highly recommended!', '2023-04-18 14:10:00', 567),
(5, 5, 5, 'Best data science course I have taken. Practical projects and clear explanations. Got a data analyst job after completing this!', '2023-09-12 16:55:00', 489),
(10, 5, 5, 'Comprehensive course covering all essential data science topics. Jose makes complex concepts easy to understand.', '2023-08-30 13:25:00', 412),
(15, 5, 4, 'Very good course with lots of content. Some sections could be more detailed, but overall excellent value.', '2023-11-20 11:40:00', 234),

-- Course 6 reviews
(13, 6, 5, 'Perfect SQL course for beginners. Jose explains queries clearly with practical examples.', '2024-04-05 10:20:00', 198),
(15, 6, 4, 'Good introduction to SQL. Covers the fundamentals well. Would like more advanced topics.', '2024-03-10 14:35:00', 156),

-- Course 7 reviews
(3, 7, 5, 'Colt is an amazing teacher! This course is comprehensive and fun. The YelpCamp project is fantastic.', '2024-02-05 15:40:00', 445),
(9, 7, 5, 'Best bootcamp-style course. Colt explains everything step by step. Great for beginners!', '2023-09-18 12:15:00', 378),
(13, 7, 5, 'This course gave me the confidence to build full-stack applications. Colt is funny and makes learning enjoyable.', '2023-11-28 16:30:00', 421),

-- Course 8 reviews
(1, 8, 5, 'Excellent JavaScript course. Covers modern ES6+ features thoroughly. Colt is a great instructor.', '2024-09-10 14:20:00', 289),
(8, 8, 4, 'Good course for learning modern JavaScript. Some parts could be more concise, but overall very helpful.', '2024-04-15 11:45:00', 167),

-- Course 10 reviews
(6, 10, 4, 'Advanced course on microservices. Requires prior knowledge but very detailed and practical.', '2024-03-20 13:55:00', 234),

-- Course 11 reviews
(6, 11, 5, 'Andrei is fantastic! This course covers everything to become a web developer. Great community support too.', '2023-08-18 15:10:00', 512),
(11, 11, 5, 'Zero to Mastery delivers on its promise. Comprehensive, practical, and career-focused.', '2024-07-05 12:40:00', 356),

-- Course 12 reviews
(2, 12, 5, 'Excellent ML course! Andrei and Daniel explain complex topics clearly. Great projects and exercises.', '2024-03-15 14:25:00', 401),
(5, 12, 4, 'Very comprehensive ML course. Covers theory and practice well. Some sections could be more hands-on.', '2023-11-10 16:50:00', 289),
(10, 12, 5, 'Best machine learning course for beginners. Clear explanations and practical examples throughout.', '2023-10-28 13:20:00', 378),
(15, 12, 5, 'This course helped me transition into data science. The projects are industry-relevant and challenging.', '2024-08-22 15:35:00', 298),

-- Course 13 reviews
(7, 13, 4, 'Good modern JavaScript course. Brad explains concepts clearly with practical examples.', '2024-05-18 11:30:00', 198),

-- Course 15 reviews
(3, 15, 5, 'Jonas is an exceptional teacher! This course is comprehensive and teaches JavaScript the right way.', '2024-04-25 14:10:00', 489),
(9, 15, 5, 'Best JavaScript course ever! Jonas explains everything from basics to advanced topics brilliantly.', '2024-02-20 12:45:00', 567),

-- Course 16 reviews
(7, 16, 5, 'Amazing CSS course! Jonas teaches advanced techniques that transformed my design skills.', '2024-04-15 16:25:00', 334),

-- Course 17 reviews
(8, 17, 5, 'Rob is an excellent iOS instructor. This course is comprehensive and up-to-date with iOS 17.', '2023-07-20 14:40:00', 412),

-- Course 18 reviews
(8, 18, 4, 'Good Android development course. Covers Kotlin well. Would like more Material Design examples.', '2023-12-15 15:55:00', 245),
(12, 18, 4, 'Solid course for learning Android development. Clear explanations and practical projects.', '2024-05-22 13:10:00', 201),

-- Course 19 reviews
(10, 19, 5, 'Tim is a legend! This Java course is thorough and perfect for both beginners and experienced programmers.', '2024-04-12 11:20:00', 378),
(14, 19, 5, 'Excellent Java course. Tim explains OOP concepts clearly. Great for building strong Java foundations.', '2024-04-28 14:35:00', 423);

GO
