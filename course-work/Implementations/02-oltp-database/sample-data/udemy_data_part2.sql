-- ============================================
-- UDEMY DATABASE - INSERT DATA PART 2
-- Categories, Tags, Courses, and Related Data
-- ============================================

USE UdemyDB;
GO

-- ============================================
-- CATEGORIES (with hierarchical structure)
-- ============================================

-- Main Categories (ParentCategoryID = NULL)
INSERT INTO Category (ParentCategoryID, Name, Description)
VALUES
(NULL, 'Development', 'Software development and programming courses'),
(NULL, 'Business', 'Business, entrepreneurship and management courses'),
(NULL, 'IT & Software', 'Information technology and software courses'),
(NULL, 'Design', 'Graphic design, UI/UX and creative courses'),
(NULL, 'Marketing', 'Digital marketing and advertising courses'),
(NULL, 'Personal Development', 'Personal growth and productivity courses'),
(NULL, 'Photography & Video', 'Photography, video production and editing'),
(NULL, 'Health & Fitness', 'Health, fitness and wellness courses'),
(NULL, 'Music', 'Music production and instruments'),
(NULL, 'Teaching & Academics', 'Academic subjects and teaching skills');

-- Sub-Categories for Development
INSERT INTO Category (ParentCategoryID, Name, Description)
VALUES
(1, 'Web Development', 'HTML, CSS, JavaScript, and web frameworks'),
(1, 'Mobile Development', 'iOS, Android, and cross-platform development'),
(1, 'Programming Languages', 'Python, Java, C++, and other programming languages'),
(1, 'Game Development', 'Unity, Unreal Engine, and game design'),
(1, 'Database Design', 'SQL, NoSQL, and database management'),
(1, 'Software Testing', 'QA, automated testing, and quality assurance'),
(1, 'Software Engineering', 'Design patterns, architecture, and best practices'),
(1, 'No-Code Development', 'Build apps without coding');

-- Sub-Categories for IT & Software
INSERT INTO Category (ParentCategoryID, Name, Description)
VALUES
(3, 'Network & Security', 'Networking, cybersecurity, and ethical hacking'),
(3, 'Hardware', 'Computer hardware and electronics'),
(3, 'Operating Systems', 'Windows, Linux, macOS administration'),
(3, 'Other IT & Software', 'Various IT topics and certifications');

-- Sub-Categories for Design
INSERT INTO Category (ParentCategoryID, Name, Description)
VALUES
(4, 'Web Design', 'UI/UX design for web applications'),
(4, 'Graphic Design', 'Adobe Photoshop, Illustrator, and design principles'),
(4, '3D & Animation', '3D modeling, animation, and rendering'),
(4, 'User Experience Design', 'UX research, wireframing, and prototyping');

-- Sub-Categories for Business
INSERT INTO Category (ParentCategoryID, Name, Description)
VALUES
(2, 'Entrepreneurship', 'Starting and growing a business'),
(2, 'Finance & Accounting', 'Financial analysis, accounting, and investing'),
(2, 'Business Strategy', 'Strategic planning and business models'),
(2, 'Project Management', 'Agile, Scrum, and project management tools');

-- Sub-Categories for Marketing
INSERT INTO Category (ParentCategoryID, Name, Description)
VALUES
(5, 'Digital Marketing', 'Online marketing strategies and tactics'),
(5, 'Social Media Marketing', 'Facebook, Instagram, TikTok marketing'),
(5, 'SEO', 'Search engine optimization techniques'),
(5, 'Content Marketing', 'Content strategy and creation');

-- ============================================
-- TAGS
-- ============================================

INSERT INTO Tag (Name)
VALUES
('Python'), ('JavaScript'), ('React'), ('Node.js'), ('HTML'), ('CSS'),
('Java'), ('C++'), ('SQL'), ('MongoDB'), ('AWS'), ('Azure'),
('Machine Learning'), ('Data Science'), ('AI'), ('Docker'),
('Kubernetes'), ('DevOps'), ('Git'), ('Angular'), ('Vue.js'),
('Swift'), ('Kotlin'), ('Flutter'), ('React Native'), ('iOS'),
('Android'), ('Unity'), ('Unreal Engine'), ('Web3'), ('Blockchain'),
('Cybersecurity'), ('Ethical Hacking'), ('Linux'), ('Windows'),
('Photoshop'), ('Illustrator'), ('Figma'), ('UI Design'), ('UX Design'),
('SEO'), ('Google Ads'), ('Facebook Ads'), ('Content Marketing'),
('Excel'), ('Power BI'), ('Tableau'), ('Django'), ('Flask'),
('Spring Boot'), ('Express.js'), ('PostgreSQL'), ('MySQL'),
('TypeScript'), ('GraphQL'), ('REST API'), ('Microservices'),
('Agile'), ('Scrum'), ('TensorFlow'), ('PyTorch'), ('Deep Learning');

-- ============================================
-- COURSES
-- ============================================

INSERT INTO Course (InstructorID, Title, Subtitle, Description, Price, DiscountPrice, Level, Language, ThumbnailUrl, PromoVideoUrl, CreatedDate, LastUpdatedDate)
VALUES
-- Course 1: Angela Yu - Web Development
(1, 'The Complete 2025 Web Development Bootcamp', 'Learn Web Development from Scratch', 
'Become a Full-Stack Web Developer with just ONE course. HTML, CSS, Javascript, Node, React, PostgreSQL, Web3 and DApps. The only course you need to learn to code and become a full-stack web developer. With 150,000+ ratings and a 4.7 average, this comprehensive course is one of the HIGHEST RATED courses in the history of Udemy!',
89.99, 13.99, 'beginner', 'English',
'https://cdn.udemy.com/course/web-dev-bootcamp.jpg',
'https://cdn.udemy.com/promo/web-dev-bootcamp.mp4',
'2023-01-15 10:00:00', '2025-10-15 14:30:00'),

-- Course 2: Angela Yu - Python
(1, '100 Days of Code: The Complete Python Pro Bootcamp', 'Master Python by building 100 projects in 100 days',
'Master Python programming by building 100 unique projects in 100 days. Learn data science, automation, build websites, games and apps! The only course you need to learn Python programming from beginners to advanced.',
84.99, 12.99, 'beginner', 'English',
'https://cdn.udemy.com/course/python-bootcamp.jpg',
'https://cdn.udemy.com/promo/python-bootcamp.mp4',
'2022-08-20 09:00:00', '2025-09-20 16:45:00'),

-- Course 3: Maximilian - React
(2, 'React - The Complete Guide 2025', 'Dive in and learn React.js from scratch!',
'Dive in and learn React.js from scratch! Learn React, Hooks, Redux, React Router, Next.js, Best Practices and way more! This course is fully up-to-date with React 19 and includes all the latest features.',
94.99, 14.99, 'intermediate', 'English',
'https://cdn.udemy.com/course/react-complete.jpg',
'https://cdn.udemy.com/promo/react-complete.mp4',
'2022-05-10 11:30:00', '2025-10-01 10:20:00'),

-- Course 4: Maximilian - Node.js
(2, 'NodeJS - The Complete Guide', 'Master Node JS & Deno.js, build REST APIs with Node.js',
'Master Node.js & Deno.js, build REST APIs with Node.js, GraphQL APIs, add Authentication, use MongoDB, SQL & much more! Learn Node.js from scratch and build amazing applications.',
89.99, 13.99, 'intermediate', 'English',
'https://cdn.udemy.com/course/nodejs-complete.jpg',
'https://cdn.udemy.com/promo/nodejs-complete.mp4',
'2023-02-18 14:00:00', '2025-08-25 12:10:00'),

-- Course 5: Jose Portilla - Python Data Science
(3, 'Python for Data Science and Machine Learning Bootcamp', 'Learn to use Python for Data Science and Machine Learning',
'Learn how to use NumPy, Pandas, Seaborn, Matplotlib, Plotly, Scikit-Learn, Machine Learning, Tensorflow, and more! This comprehensive course will teach you Python for data science and machine learning.',
94.99, 14.99, 'intermediate', 'English',
'https://cdn.udemy.com/course/python-data-science.jpg',
'https://cdn.udemy.com/promo/python-data-science.mp4',
'2022-03-12 10:15:00', '2025-07-30 15:40:00'),

-- Course 6: Jose Portilla - SQL
(3, 'The Complete SQL Bootcamp: Go from Zero to Hero', 'Learn SQL quickly and easily',
'Become an expert at SQL! Learn SQL for database management and querying. PostgreSQL, MySQL, and more! This course will teach you how to read and write complex queries to a database using PostgreSQL.',
79.99, 11.99, 'beginner', 'English',
'https://cdn.udemy.com/course/sql-bootcamp.jpg',
'https://cdn.udemy.com/promo/sql-bootcamp.mp4',
'2023-06-05 09:30:00', '2025-09-10 11:25:00'),

-- Course 7: Colt Steele - Web Developer
(4, 'The Web Developer Bootcamp 2025', 'The only course you need to learn web development',
'10 projects, HTML5, CSS3, Flexbox, animations, responsive design, Bootstrap 5, JavaScript, DOM manipulation, Node, Express, MongoDB, RESTful routing, authentication, deployment. Learn the latest technologies used by top tech companies.',
84.99, 12.99, 'beginner', 'English',
'https://cdn.udemy.com/course/web-dev-bootcamp-colt.jpg',
'https://cdn.udemy.com/promo/web-dev-bootcamp-colt.mp4',
'2022-09-15 13:45:00', '2025-10-05 14:15:00'),

-- Course 8: Colt Steele - JavaScript
(4, 'The Modern JavaScript Bootcamp', 'Learn JavaScript by building real-world apps',
'Learn modern JavaScript from scratch! From the very basics to advanced topics like OOP, closures, and more. Build beautiful, real-world apps and master modern JavaScript. ES6, ES7, ES8, ES9, ES10, ES11, ES12 covered.',
79.99, 11.99, 'intermediate', 'English',
'https://cdn.udemy.com/course/modern-javascript.jpg',
'https://cdn.udemy.com/promo/modern-javascript.mp4',
'2023-04-22 11:00:00', '2025-08-18 16:30:00'),

-- Course 9: Stephen Grider - React & Redux
(5, 'Modern React with Redux', 'Master React and Redux with this comprehensive course',
'Master React v18! Learn Redux, React Router, React Hooks, and Next.js. Build amazing single page applications with React JS and Redux. Includes hundreds of examples and detailed explanations.',
94.99, 14.99, 'intermediate', 'English',
'https://cdn.udemy.com/course/react-redux.jpg',
'https://cdn.udemy.com/promo/react-redux.mp4',
'2022-07-08 10:20:00', '2025-09-28 13:50:00'),

-- Course 10: Stephen Grider - Microservices
(5, 'Microservices with Node JS and React', 'Build, deploy, and scale an E-Commerce app using Microservices',
'Build, deploy, and scale an E-Commerce app using Microservices built with Node, React, Docker and Kubernetes. Learn how to build, test, and deploy microservices in production.',
99.99, 15.99, 'advanced', 'English',
'https://cdn.udemy.com/course/microservices.jpg',
'https://cdn.udemy.com/promo/microservices.mp4',
'2023-03-30 15:30:00', '2025-10-12 10:45:00'),

-- Course 11: Andrei Neagoie - Web Developer
(6, 'The Complete Web Developer in 2025: Zero to Mastery', 'Learn to code and become a Web Developer',
'Learn to code and become a Web Developer in 2025 with HTML, CSS, Javascript, React, Node.js, Machine Learning & more! Go from Zero to getting hired as a developer.',
89.99, 13.99, 'beginner', 'English',
'https://cdn.udemy.com/course/zero-to-mastery.jpg',
'https://cdn.udemy.com/promo/zero-to-mastery.mp4',
'2022-11-10 09:15:00', '2025-10-20 15:20:00'),

-- Course 12: Andrei Neagoie - Machine Learning
(6, 'Complete Machine Learning & Data Science Bootcamp', 'Learn ML and Data Science with Python, TensorFlow, and more',
'Learn Data Science, Data Analysis, Machine Learning (Artificial Intelligence) and Python with TensorFlow, Pandas & more! This course will guide you through the fundamentals of ML.',
94.99, 14.99, 'intermediate', 'English',
'https://cdn.udemy.com/course/ml-bootcamp.jpg',
'https://cdn.udemy.com/promo/ml-bootcamp.mp4',
'2023-05-18 12:40:00', '2025-09-05 14:10:00'),

-- Course 13: Brad Traversy - Modern JavaScript
(7, 'Modern JavaScript From The Beginning', 'Learn Modern JavaScript from scratch',
'Learn Modern JavaScript from the beginning, all the way up to JS frameworks. Build projects and master JavaScript! This course teaches you modern JavaScript from scratch with 10 real-world projects.',
79.99, 11.99, 'beginner', 'English',
'https://cdn.udemy.com/course/modern-js-beginning.jpg',
'https://cdn.udemy.com/promo/modern-js-beginning.mp4',
'2022-10-25 14:25:00', '2025-07-15 11:35:00'),

-- Course 14: Brad Traversy - MERN Stack
(7, 'MERN Stack Front To Back: Full Stack React, Redux & Node.js', 'Build and deploy a social network with Node.js, Express, React, Redux & MongoDB',
'Build and deploy a social network with Node.js, Express, React, Redux & MongoDB. Learn the MERN stack by building a real-world application from scratch.',
84.99, 12.99, 'advanced', 'English',
'https://cdn.udemy.com/course/mern-stack.jpg',
'https://cdn.udemy.com/promo/mern-stack.mp4',
'2023-07-12 10:50:00', '2025-08-22 16:05:00'),

-- Course 15: Jonas Schmedtmann - JavaScript
(8, 'The Complete JavaScript Course 2025: From Zero to Expert!', 'The modern JavaScript course for everyone',
'The modern JavaScript course for everyone! Master JavaScript with projects, challenges and theory. Many courses in one! Learn modern JavaScript from scratch, and build amazing projects.',
84.99, 12.99, 'beginner', 'English',
'https://cdn.udemy.com/course/complete-javascript.jpg',
'https://cdn.udemy.com/promo/complete-javascript.mp4',
'2022-06-20 11:10:00', '2025-10-08 13:25:00'),

-- Course 16: Jonas Schmedtmann - Advanced CSS
(8, 'Advanced CSS and Sass: Flexbox, Grid, Animations and More!', 'Master modern CSS including Flexbox, CSS Grid, and Sass',
'The most advanced and modern CSS course: master flexbox, CSS Grid, responsive design, and more! Build beautiful, real-world websites with advanced CSS and Sass.',
79.99, 11.99, 'intermediate', 'English',
'https://cdn.udemy.com/course/advanced-css.jpg',
'https://cdn.udemy.com/promo/advanced-css.mp4',
'2023-08-08 15:15:00', '2025-09-14 10:40:00'),

-- Course 17: Rob Percival - iOS Development
(9, 'The Complete iOS App Development Bootcamp', 'From Beginner to iOS App Developer with just one course',
'From Beginner to iOS App Developer with just one course! Learn Swift 5 and build real iOS 17 apps, including ML and ARKit apps. Create beautiful iOS apps with SwiftUI and UIKit.',
89.99, 13.99, 'beginner', 'English',
'https://cdn.udemy.com/course/ios-bootcamp.jpg',
'https://cdn.udemy.com/promo/ios-bootcamp.mp4',
'2022-12-05 09:45:00', '2025-10-18 14:50:00'),

-- Course 18: Rob Percival - Android Development
(9, 'The Complete Android Development Bootcamp', 'Learn Android App Development from scratch',
'Learn Android App Development from scratch. Build Android apps with Kotlin and Java. From beginner to advanced, learn everything you need to become an Android developer.',
84.99, 12.99, 'beginner', 'English',
'https://cdn.udemy.com/course/android-bootcamp.jpg',
'https://cdn.udemy.com/promo/android-bootcamp.mp4',
'2023-09-20 13:20:00', '2025-08-30 15:55:00'),

-- Course 19: Tim Buchalka - Java Programming
(10, 'Java Programming Masterclass covering Java 11 & Java 17', 'Learn Java In This Course And Become a Computer Programmer',
'Learn Java In This Course And Become a Computer Programmer. Obtain valuable Core Java Skills And Java Certification. This course covers Java 17, Java 11, and older versions.',
79.99, 11.99, 'beginner', 'English',
'https://cdn.udemy.com/course/java-masterclass.jpg',
'https://cdn.udemy.com/promo/java-masterclass.mp4',
'2022-04-15 10:30:00', '2025-07-25 12:15:00'),

-- Course 20: Tim Buchalka - Spring Framework
(10, 'Spring & Hibernate for Beginners', 'Spring 6, Spring Boot 3, Hibernate, JPA, REST, MySQL',
'Spring 6, Spring Boot 3, Hibernate, JPA, REST, MySQL - Build REAL projects with the most popular Java frameworks. Learn Spring Framework 6, Spring Boot 3, Hibernate, and JPA.',
84.99, 12.99, 'intermediate', 'English',
'https://cdn.udemy.com/course/spring-hibernate.jpg',
'https://cdn.udemy.com/promo/spring-hibernate.mp4',
'2023-10-10 14:40:00', '2025-09-22 11:20:00');

GO
