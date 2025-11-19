-- ============================================
-- UDEMY DATABASE - INSERT DATA PART 1
-- Instructors, Specializations, Students, Interests
-- ============================================

USE UdemyDB;
GO

-- ============================================
-- INSTRUCTORS
-- ============================================

INSERT INTO Instructor (FirstName, LastName, Email, PasswordHash, Bio, ProfilePictureUrl, Street, City, Country, PostalCode, BirthDate, JoinDate)
VALUES 
('Angela', 'Yu', 'angela.yu@techacademy.com', 'hashed_password_001', 
'Full-stack developer and lead instructor with 10+ years of experience teaching web development. Former lead developer at a major tech company.', 
'https://cdn.udemy.com/instructors/angela-yu.jpg', 
'123 Tech Street', 'London', 'United Kingdom', 'SW1A 1AA', '1985-03-15', '2018-01-15'),

('Maximilian', 'Schwarzmüller', 'max.schwarzmuller@webdev.com', 'hashed_password_002',
'Professional web developer and instructor. Specialized in modern JavaScript frameworks and full-stack development. Taught over 500,000 students worldwide.',
'https://cdn.udemy.com/instructors/max-schwarzmuller.jpg',
'456 Developer Lane', 'Munich', 'Germany', '80331', '1987-08-22', '2017-05-10'),

('Jose', 'Portilla', 'jose.portilla@datascience.com', 'hashed_password_003',
'Data scientist and professional instructor. PhD in Statistics with expertise in Python, Machine Learning, and Data Analysis.',
'https://cdn.udemy.com/instructors/jose-portilla.jpg',
'789 Data Drive', 'Austin', 'United States', '78701', '1983-11-30', '2016-09-20'),

('Colt', 'Steele', 'colt.steele@webcamp.com', 'hashed_password_004',
'Former bootcamp director and senior web developer. Expert in JavaScript, Node.js, and modern web technologies.',
'https://cdn.udemy.com/instructors/colt-steele.jpg',
'321 Bootcamp Blvd', 'San Francisco', 'United States', '94102', '1988-04-12', '2015-11-05'),

('Stephen', 'Grider', 'stephen.grider@reactmaster.com', 'hashed_password_005',
'Engineering architect and React specialist. Built large-scale applications for Fortune 500 companies.',
'https://cdn.udemy.com/instructors/stephen-grider.jpg',
'654 React Road', 'Seattle', 'United States', '98101', '1986-07-25', '2017-03-18'),

('Andrei', 'Neagoie', 'andrei.neagoie@zerotomastery.com', 'hashed_password_006',
'Senior software developer and founder of Zero To Mastery. Former technical lead at major tech companies.',
'https://cdn.udemy.com/instructors/andrei-neagoie.jpg',
'987 Mastery Avenue', 'Toronto', 'Canada', 'M5H 2N2', '1989-02-14', '2018-06-22'),

('Brad', 'Traversy', 'brad.traversy@traversymedia.com', 'hashed_password_007',
'Full-stack web developer and owner of Traversy Media. Creates practical, project-based programming courses.',
'https://cdn.udemy.com/instructors/brad-traversy.jpg',
'147 Media Street', 'Boston', 'United States', '02101', '1984-12-08', '2016-04-15'),

('Jonas', 'Schmedtmann', 'jonas.schmedtmann@codingheroes.com', 'hashed_password_008',
'Web developer and designer with a passion for teaching. Expert in JavaScript, HTML5, and CSS3.',
'https://cdn.udemy.com/instructors/jonas-schmedtmann.jpg',
'258 Heroes Plaza', 'Lisbon', 'Portugal', '1000-001', '1990-05-19', '2017-08-30'),

('Rob', 'Percival', 'rob.percival@codestars.com', 'hashed_password_009',
'Cambridge University graduate and experienced app developer. Created apps for clients including banks and businesses.',
'https://cdn.udemy.com/instructors/rob-percival.jpg',
'369 Cambridge Road', 'Cambridge', 'United Kingdom', 'CB2 1TN', '1982-09-03', '2015-02-28'),

('Tim', 'Buchalka', 'tim.buchalka@learnprogramming.com', 'hashed_password_010',
'Software developer with 40 years of experience. Java expert and founder of Learn Programming Academy.',
'https://cdn.udemy.com/instructors/tim-buchalka.jpg',
'741 Academy Street', 'Melbourne', 'Australia', '3000', '1963-10-21', '2014-07-12');

-- ============================================
-- INSTRUCTOR PHONES
-- ============================================

INSERT INTO InstructorPhone (PhoneNumber, InstructorID, PhoneType)
VALUES
('+44-20-7946-0958', 1, 'Mobile'),
('+44-20-7946-0959', 1, 'Work'),
('+49-89-1234-5678', 2, 'Mobile'),
('+1-512-555-0123', 3, 'Mobile'),
('+1-512-555-0124', 3, 'Work'),
('+1-415-555-0145', 4, 'Mobile'),
('+1-206-555-0167', 5, 'Mobile'),
('+1-416-555-0189', 6, 'Mobile'),
('+1-617-555-0201', 7, 'Mobile'),
('+351-21-555-0223', 8, 'Mobile'),
('+44-1223-555-0245', 9, 'Mobile'),
('+61-3-5555-0267', 10, 'Mobile'),
('+61-3-5555-0268', 10, 'Work');

-- ============================================
-- SPECIALIZATIONS
-- ============================================

INSERT INTO Specialization (Name, Description)
VALUES
('Web Development', 'Full-stack web development including frontend and backend technologies'),
('Mobile Development', 'iOS and Android application development'),
('Data Science', 'Data analysis, visualization, and machine learning'),
('Machine Learning', 'Artificial intelligence and ML algorithms'),
('Python Programming', 'Python language and its frameworks'),
('JavaScript', 'JavaScript and modern frameworks like React, Angular, Vue'),
('Database Management', 'SQL, NoSQL, and database design'),
('Cloud Computing', 'AWS, Azure, Google Cloud platforms'),
('DevOps', 'CI/CD, Docker, Kubernetes, and automation'),
('Cybersecurity', 'Information security and ethical hacking'),
('UI/UX Design', 'User interface and user experience design'),
('Game Development', 'Video game creation and design'),
('Blockchain', 'Cryptocurrency and blockchain technology'),
('Business Analysis', 'Requirements gathering and business intelligence'),
('Digital Marketing', 'SEO, social media, and online marketing strategies');

-- ============================================
-- INSTRUCTOR SPECIALIZATIONS
-- ============================================

INSERT INTO InstructorSpecialization (InstructorID, SpecializationID)
VALUES
-- Angela Yu
(1, 1), (1, 2), (1, 6),
-- Maximilian Schwarzmüller
(2, 1), (2, 6), (2, 2),
-- Jose Portilla
(3, 3), (3, 4), (3, 5),
-- Colt Steele
(4, 1), (4, 6), (4, 7),
-- Stephen Grider
(5, 1), (5, 6), (5, 8),
-- Andrei Neagoie
(6, 1), (6, 5), (6, 4),
-- Brad Traversy
(7, 1), (7, 6), (7, 2),
-- Jonas Schmedtmann
(8, 1), (8, 6),
-- Rob Percival
(9, 1), (9, 2), (9, 6),
-- Tim Buchalka
(10, 5), (10, 1), (10, 2);

-- ============================================
-- STUDENTS
-- ============================================

INSERT INTO Student (FirstName, LastName, Email, PasswordHash, ProfilePictureUrl, Street, City, Country, PostalCode, BirthDate, RegistrationDate, LastLoginDate, TimeZone)
VALUES
('Emily', 'Johnson', 'emily.johnson@email.com', 'hashed_password_s001', 
'https://cdn.udemy.com/students/emily-johnson.jpg',
'123 Main Street', 'New York', 'United States', '10001', '1995-06-15', '2023-01-10 09:30:00', '2025-10-31 14:22:00', 'America/New_York'),

('Michael', 'Chen', 'michael.chen@email.com', 'hashed_password_s002',
'https://cdn.udemy.com/students/michael-chen.jpg',
'456 Tech Avenue', 'San Jose', 'United States', '95110', '1992-03-22', '2022-11-15 11:45:00', '2025-10-30 18:45:00', 'America/Los_Angeles'),

('Sarah', 'Williams', 'sarah.williams@email.com', 'hashed_password_s003',
'https://cdn.udemy.com/students/sarah-williams.jpg',
'789 Learning Lane', 'London', 'United Kingdom', 'SW1A 2AA', '1997-09-08', '2023-03-20 16:20:00', '2025-10-31 10:15:00', 'Europe/London'),

('David', 'Martinez', 'david.martinez@email.com', 'hashed_password_s004',
'https://cdn.udemy.com/students/david-martinez.jpg',
'321 Code Street', 'Barcelona', 'Spain', '08001', '1994-12-30', '2023-05-12 08:15:00', '2025-10-29 20:30:00', 'Europe/Madrid'),

('Jessica', 'Brown', 'jessica.brown@email.com', 'hashed_password_s005',
'https://cdn.udemy.com/students/jessica-brown.jpg',
'654 Developer Drive', 'Toronto', 'Canada', 'M5H 1T1', '1996-07-18', '2022-09-08 13:40:00', '2025-10-31 09:00:00', 'America/Toronto'),

('Ahmed', 'Hassan', 'ahmed.hassan@email.com', 'hashed_password_s006',
'https://cdn.udemy.com/students/ahmed-hassan.jpg',
'987 Study Boulevard', 'Dubai', 'United Arab Emirates', '12345', '1993-04-25', '2023-02-14 10:25:00', '2025-10-30 16:40:00', 'Asia/Dubai'),

('Maria', 'Garcia', 'maria.garcia@email.com', 'hashed_password_s007',
'https://cdn.udemy.com/students/maria-garcia.jpg',
'147 Knowledge Road', 'Mexico City', 'Mexico', '01000', '1998-11-12', '2023-06-30 15:50:00', '2025-10-31 12:20:00', 'America/Mexico_City'),

('James', 'Anderson', 'james.anderson@email.com', 'hashed_password_s008',
'https://cdn.udemy.com/students/james-anderson.jpg',
'258 Programming Plaza', 'Sydney', 'Australia', '2000', '1991-08-05', '2022-07-22 07:30:00', '2025-10-30 22:10:00', 'Australia/Sydney'),

('Sophie', 'Dubois', 'sophie.dubois@email.com', 'hashed_password_s009',
'https://cdn.udemy.com/students/sophie-dubois.jpg',
'369 Education Avenue', 'Paris', 'France', '75001', '1999-02-28', '2023-04-18 12:05:00', '2025-10-31 11:35:00', 'Europe/Paris'),

('Rajesh', 'Kumar', 'rajesh.kumar@email.com', 'hashed_password_s010',
'https://cdn.udemy.com/students/rajesh-kumar.jpg',
'741 Tech Tower', 'Bangalore', 'India', '560001', '1990-10-14', '2022-12-03 09:15:00', '2025-10-30 14:50:00', 'Asia/Kolkata'),

('Olivia', 'Taylor', 'olivia.taylor@email.com', 'hashed_password_s011',
'https://cdn.udemy.com/students/olivia-taylor.jpg',
'852 Innovation Street', 'Austin', 'United States', '78701', '1997-05-20', '2023-08-15 14:30:00', '2025-10-31 16:45:00', 'America/Chicago'),

('Lucas', 'Silva', 'lucas.silva@email.com', 'hashed_password_s012',
'https://cdn.udemy.com/students/lucas-silva.jpg',
'963 Coding Circle', 'São Paulo', 'Brazil', '01310-100', '1995-01-09', '2023-07-08 11:20:00', '2025-10-29 19:25:00', 'America/Sao_Paulo'),

('Emma', 'Wilson', 'emma.wilson@email.com', 'hashed_password_s013',
'https://cdn.udemy.com/students/emma-wilson.jpg',
'159 Learn Lane', 'Dublin', 'Ireland', 'D01 F5P2', '1996-09-17', '2023-01-25 10:40:00', '2025-10-31 13:55:00', 'Europe/Dublin'),

('Mohammed', 'Ali', 'mohammed.ali@email.com', 'hashed_password_s014',
'https://cdn.udemy.com/students/mohammed-ali.jpg',
'357 Tech District', 'Cairo', 'Egypt', '11511', '1994-03-11', '2022-10-12 08:50:00', '2025-10-30 15:30:00', 'Africa/Cairo'),

('Anna', 'Kowalski', 'anna.kowalski@email.com', 'hashed_password_s015',
'https://cdn.udemy.com/students/anna-kowalski.jpg',
'753 Developer Square', 'Warsaw', 'Poland', '00-001', '1998-12-03', '2023-09-05 13:15:00', '2025-10-31 10:40:00', 'Europe/Warsaw');

-- ============================================
-- INTERESTS
-- ============================================

INSERT INTO Interest (Name, Description)
VALUES
('Web Development', 'Interest in building websites and web applications'),
('Mobile Apps', 'Interest in creating iOS and Android applications'),
('Data Analysis', 'Interest in analyzing and interpreting data'),
('Machine Learning', 'Interest in AI and machine learning algorithms'),
('Game Development', 'Interest in creating video games'),
('Cloud Computing', 'Interest in cloud platforms and services'),
('Cybersecurity', 'Interest in information security'),
('UI/UX Design', 'Interest in user interface and experience design'),
('DevOps', 'Interest in development operations and automation'),
('Python', 'Interest in Python programming language'),
('JavaScript', 'Interest in JavaScript and related frameworks'),
('Business Intelligence', 'Interest in BI and data visualization'),
('Digital Marketing', 'Interest in online marketing strategies'),
('Blockchain', 'Interest in blockchain and cryptocurrency'),
('Photography', 'Interest in digital photography and editing');

-- ============================================
-- STUDENT INTERESTS
-- ============================================

INSERT INTO StudentInterest (StudentID, InterestID)
VALUES
-- Emily Johnson
(1, 1), (1, 11), (1, 8),
-- Michael Chen
(2, 3), (2, 4), (2, 10),
-- Sarah Williams
(3, 1), (3, 13), (3, 8),
-- David Martinez
(4, 1), (4, 11), (4, 2),
-- Jessica Brown
(5, 10), (5, 4), (5, 3),
-- Ahmed Hassan
(6, 6), (6, 9), (6, 1),
-- Maria Garcia
(7, 8), (7, 1), (7, 15),
-- James Anderson
(8, 2), (8, 5), (8, 11),
-- Sophie Dubois
(9, 1), (9, 8), (9, 13),
-- Rajesh Kumar
(10, 3), (10, 4), (10, 6),
-- Olivia Taylor
(11, 1), (11, 11), (11, 9),
-- Lucas Silva
(12, 1), (12, 2), (12, 10),
-- Emma Wilson
(13, 1), (13, 8), (13, 7),
-- Mohammed Ali
(14, 1), (14, 10), (14, 12),
-- Anna Kowalski
(15, 3), (15, 12), (15, 13);

GO
