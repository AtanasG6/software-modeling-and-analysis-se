-- ============================================
-- UDEMY DATABASE - INSERT DATA PART 3
-- Course Tags, Categories, Learning Outcomes, Requirements
-- ============================================

USE UdemyDB;
GO

-- ============================================
-- COURSE TAGS
-- ============================================

INSERT INTO CourseTag (CourseID, TagID)
VALUES
-- Course 1: Complete Web Development Bootcamp
(1, 2), (1, 5), (1, 6), (1, 3), (1, 4), (1, 9), (1, 10), (1, 30),
-- Course 2: Python Pro Bootcamp
(2, 1), (2, 14), (2, 13), (2, 47), (2, 48),
-- Course 3: React Complete Guide
(3, 2), (3, 3), (3, 19), (3, 53), (3, 54),
-- Course 4: NodeJS Complete Guide
(4, 2), (4, 4), (4, 9), (4, 10), (4, 51), (4, 55),
-- Course 5: Python Data Science
(5, 1), (5, 13), (5, 14), (5, 15), (5, 46), (5, 47), (5, 59), (5, 60),
-- Course 6: SQL Bootcamp
(6, 9), (6, 52), (6, 53), (6, 15),
-- Course 7: Web Developer Bootcamp
(7, 2), (7, 5), (7, 6), (7, 4), (7, 9), (7, 10),
-- Course 8: Modern JavaScript
(8, 2), (8, 53),
-- Course 9: React with Redux
(9, 2), (9, 3), (9, 19), (9, 54), (9, 55),
-- Course 10: Microservices
(10, 4), (10, 3), (10, 16), (10, 17), (10, 56), (10, 57), (10, 58),
-- Course 11: Zero to Mastery
(11, 2), (11, 5), (11, 6), (11, 3), (11, 4), (11, 13),
-- Course 12: Machine Learning Bootcamp
(12, 1), (12, 13), (12, 15), (12, 59), (12, 60), (12, 61),
-- Course 13: Modern JS from Beginning
(13, 2), (13, 19),
-- Course 14: MERN Stack
(14, 2), (14, 3), (14, 4), (14, 10), (14, 55),
-- Course 15: Complete JavaScript 2025
(15, 2), (15, 19),
-- Course 16: Advanced CSS and Sass
(16, 6), (16, 5),
-- Course 17: iOS Development
(17, 22), (17, 26),
-- Course 18: Android Development
(18, 23), (18, 27),
-- Course 19: Java Masterclass
(19, 7),
-- Course 20: Spring & Hibernate
(20, 7), (20, 50), (20, 53);

-- ============================================
-- COURSE CATEGORIES
-- ============================================

INSERT INTO CourseCategory (CourseID, CategoryID, IsPrimary)
VALUES
-- Course 1: Complete Web Development (Web Development - primary)
(1, 11, 1), (1, 1, 0),
-- Course 2: Python Bootcamp (Programming Languages - primary, Data Science)
(2, 13, 1), (2, 1, 0),
-- Course 3: React Complete (Web Development - primary)
(3, 11, 1), (3, 1, 0),
-- Course 4: NodeJS Complete (Web Development - primary)
(4, 11, 1), (4, 1, 0),
-- Course 5: Python Data Science (Programming Languages - primary)
(5, 13, 1), (5, 1, 0),
-- Course 6: SQL Bootcamp (Database Design - primary)
(6, 15, 1), (6, 1, 0),
-- Course 7: Web Developer Bootcamp (Web Development - primary)
(7, 11, 1), (7, 1, 0),
-- Course 8: Modern JavaScript (Web Development - primary)
(8, 11, 1), (8, 13, 0),
-- Course 9: React with Redux (Web Development - primary)
(9, 11, 1), (9, 1, 0),
-- Course 10: Microservices (Software Engineering - primary)
(10, 17, 1), (10, 11, 0), (10, 1, 0),
-- Course 11: Zero to Mastery (Web Development - primary)
(11, 11, 1), (11, 1, 0),
-- Course 12: ML Bootcamp (Programming Languages - primary)
(12, 13, 1), (12, 1, 0),
-- Course 13: Modern JS Beginning (Web Development - primary)
(13, 11, 1), (13, 13, 0),
-- Course 14: MERN Stack (Web Development - primary)
(14, 11, 1), (14, 15, 0), (14, 1, 0),
-- Course 15: Complete JavaScript (Web Development - primary)
(15, 11, 1), (15, 13, 0),
-- Course 16: Advanced CSS (Web Design - primary)
(16, 23, 1), (16, 11, 0),
-- Course 17: iOS Development (Mobile Development - primary)
(17, 12, 1), (17, 1, 0),
-- Course 18: Android Development (Mobile Development - primary)
(18, 12, 1), (18, 1, 0),
-- Course 19: Java Masterclass (Programming Languages - primary)
(19, 13, 1), (19, 1, 0),
-- Course 20: Spring & Hibernate (Programming Languages - primary, Database)
(20, 13, 1), (20, 15, 0), (20, 1, 0);

-- ============================================
-- COURSE LEARNING OUTCOMES
-- ============================================

INSERT INTO CourseLearningOutcome (CourseID, LearningOutcome)
VALUES
-- Course 1: Web Development Bootcamp
(1, 'Build 16 web development projects for your portfolio, ready to apply for junior developer jobs'),
(1, 'Learn the latest technologies, including Javascript, React, Node and even Web3 development'),
(1, 'After the course you will be able to build ANY website you want'),
(1, 'Build fully-fledged websites and web apps for your startup or business'),
(1, 'Master frontend development with React'),
(1, 'Master backend development with Node'),
(1, 'Learn professional developer best practices'),

-- Course 2: Python Bootcamp
(2, 'Build 100 projects over 100 days and become a Python developer'),
(2, 'Master Python programming language from beginner to advanced'),
(2, 'Learn to use Python professionally, learning both Python 2 and Python 3'),
(2, 'Create a portfolio of 100 Python projects to apply for developer jobs'),
(2, 'Be able to build fully fledged websites and web apps with Python'),
(2, 'Understand how to create Python GUIs and Desktop applications'),
(2, 'Learn to use modern frameworks like Selenium, Beautiful Soup, Request, Flask, Pandas, NumPy, Scikit Learn, Plotly, Matplotlib'),

-- Course 3: React Complete Guide
(3, 'Build powerful, fast, user-friendly and reactive web apps'),
(3, 'Provide amazing user experiences by leveraging the power of JavaScript with ease'),
(3, 'Apply for high-paid jobs or work as a freelancer in one of the most-demanded sectors you can find in web dev right now'),
(3, 'Learn React Hooks & Class-based Components'),
(3, 'Learn all about React Router & React Redux'),
(3, 'Explore Next.js for server-side rendering'),

-- Course 4: NodeJS Complete Guide
(4, 'Work with one of the most in-demand web development programming languages'),
(4, 'Learn the basics as well as advanced concepts of NodeJS in great detail'),
(4, 'Build modern, fast and scalable server-side web applications with NodeJS, databases like SQL or MongoDB and more'),
(4, 'Understand the NodeJS ecosystem and build server-side rendered apps, REST APIs and GraphQL APIs'),
(4, 'Get a thorough introduction to DenoJS'),

-- Course 5: Python Data Science
(5, 'Use Python for Data Science and Machine Learning'),
(5, 'Use Spark for Big Data Analysis'),
(5, 'Implement Machine Learning Algorithms'),
(5, 'Learn to use NumPy for Numerical Data'),
(5, 'Learn to use Pandas for Data Analysis'),
(5, 'Learn to use Matplotlib for Python Plotting'),
(5, 'Learn to use Seaborn for statistical plots'),
(5, 'Use Plotly for interactive dynamic visualizations'),
(5, 'Use SciKit-Learn for Machine Learning Tasks'),

-- Course 6: SQL Bootcamp
(6, 'Learn to read and write complex SQL queries to a database'),
(6, 'Learn to perform GROUP BY statements to aggregate data and answer analytical questions'),
(6, 'Replicate real-world situations and query reports'),
(6, 'Learn SQL to work with databases professionally'),
(6, 'Use PostgreSQL to create databases and tables'),

-- Course 7: Web Developer Bootcamp
(7, 'Make REAL web applications using cutting-edge technologies'),
(7, 'Build responsive, accessible and beautiful layouts'),
(7, 'Recognize and prevent common security exploits like SQL-Injection & XSS'),
(7, 'Continue to learn and grow as a developer, long after the course ends'),
(7, 'Create static websites and UIs using Semantic HTML5 and CSS3'),
(7, 'Think like a developer and become an expert at Googling code questions'),
(7, 'Implement responsive websites using modern CSS frameworks'),
(7, 'Create fully-fledged web apps from scratch'),

-- Course 8: Modern JavaScript
(8, 'Learn modern JavaScript from the very beginning'),
(8, 'Complex features like closures and prototypes'),
(8, 'Asynchronous JavaScript using Promises, Async/Await, and AJAX calls'),
(8, 'Build several beautiful real-world projects'),
(8, 'Object-oriented programming and ES6 classes'),

-- Course 9: React with Redux
(9, 'Build amazing single page applications with React JS and Redux'),
(9, 'Master fundamental concepts behind structuring Redux applications'),
(9, 'Realize the power of building composable components'),
(9, 'Be the engineer who explains how Redux works to everyone else'),
(9, 'Build complex applications with modern React and Redux'),

-- Course 10: Microservices
(10, 'Build a full-featured ecommerce application with microservices architecture'),
(10, 'Understand how to solve concurrency issues in a distributed systems environment'),
(10, 'Leverage your Javascript skills to build a complex app with multiple services'),
(10, 'Understand how to build and deploy microservices using Docker and Kubernetes'),
(10, 'Write comprehensive tests to ensure each service works as designed'),

-- Course 11: Zero to Mastery
(11, 'Build 10+ real world Web Development projects you can show off'),
(11, 'Learn modern technologies that are ACTUALLY being used behind tech companies in 2025'),
(11, 'Go from Zero to getting hired as a Web Developer'),
(11, 'Learn to build reactive, performant, large scale applications like a senior developer'),
(11, 'Build a professional Portfolio Website'),

-- Course 12: ML Bootcamp
(12, 'Use TensorFlow for Artificial Neural Networks'),
(12, 'Use Scikit-Learn for Machine Learning Tasks'),
(12, 'Use Pandas for Data Manipulation'),
(12, 'Use Matplotlib and Seaborn for Data Visualizations'),
(12, 'Use Numpy for Numerical Processing'),
(12, 'Build Machine Learning Models in Python'),

-- Course 13: Modern JS Beginning
(13, 'Learn JavaScript programming step-by-step from the ground up'),
(13, 'Build 10 real world JavaScript projects'),
(13, 'Learn modern ES6+ features'),
(13, 'Learn the DOM in depth'),
(13, 'Work with external APIs using Fetch & Async / Await'),

-- Course 14: MERN Stack
(14, 'Build a full stack social network app with React, Redux, Node, Express & MongoDB'),
(14, 'Create an extensive backend API with Node.js & Express'),
(14, 'Integrate React with our backend in an elegant way'),
(14, 'Learn Redux for state management'),
(14, 'Deploy the application to Heroku with a production build'),

-- Course 15: Complete JavaScript
(15, 'Become an advanced, confident, and modern JavaScript developer from scratch'),
(15, 'Build 6 beautiful real-world projects'),
(15, 'Become job-ready by understanding how JavaScript really works behind the scenes'),
(15, 'JavaScript fundamentals: variables, if/else, operators, boolean logic, functions, arrays, objects, loops, strings, etc'),
(15, 'Modern ES6+ features: arrow functions, destructuring, spread operator, optional chaining, etc'),
(15, 'Modern OOP: Classes, constructors, prototypal inheritance, encapsulation'),
(15, 'Asynchronous JavaScript: Event loop, promises, async/await, AJAX calls'),

-- Course 16: Advanced CSS
(16, 'Tons of modern CSS techniques to create stunning designs and effects'),
(16, 'Advanced CSS animations with @keyframes, animation, and transition'),
(16, 'How CSS works behind the scenes: the cascade, specificity, inheritance, etc'),
(16, 'CSS architecture: component-based design, BEM, writing reusable code'),
(16, 'Flexbox layouts: build a huge real-world project with flexbox'),
(16, 'CSS Grid layouts: build a huge real-world project with CSS Grid'),
(16, 'Using Sass in real-world projects: global variables, architecting CSS, managing media queries'),
(16, 'Advanced responsive design: media queries, mobile-first vs desktop-first, em vs rem units'),

-- Course 17: iOS Development
(17, 'Learn to make iOS apps using Swift 5 and SwiftUI'),
(17, 'Learn both the old UIKit and the new SwiftUI'),
(17, 'Build beautiful iOS apps with SwiftUI'),
(17, 'Create Machine Learning apps using CoreML and CreateML'),
(17, 'Build Augmented Reality apps using ARKit'),
(17, 'Learn to integrate APIs and use JSON data'),

-- Course 18: Android Development
(18, 'Build professional Android apps using Kotlin'),
(18, 'Learn both Java and Kotlin for Android development'),
(18, 'Build apps with Material Design principles'),
(18, 'Learn to use Android Studio professionally'),
(18, 'Work with databases using Room'),
(18, 'Integrate third-party libraries and APIs'),

-- Course 19: Java Masterclass
(19, 'Learn the core Java skills needed to apply for Java developer positions'),
(19, 'Be able to demonstrate your understanding of Java to future employers'),
(19, 'Learn Java 17 and Java 11 new features'),
(19, 'Obtain proficiency in Java, one of the most demanded programming languages'),
(19, 'Learn object-oriented programming with Java'),

-- Course 20: Spring & Hibernate
(20, 'Build a complete Spring Boot 3 application'),
(20, 'Learn Spring Framework 6 in depth'),
(20, 'Build REST APIs with Spring Boot'),
(20, 'Use Hibernate and JPA for database persistence'),
(20, 'Learn Spring Security for authentication and authorization'),
(20, 'Build real-world projects with Spring and Hibernate');

-- ============================================
-- COURSE REQUIREMENTS
-- ============================================

INSERT INTO CourseRequirement (CourseID, Requirement)
VALUES
-- Course 1: Web Development Bootcamp
(1, 'No programming experience needed - I will teach you everything you need to know'),
(1, 'A Mac or PC computer with access to the internet'),
(1, 'No paid software required'),
(1, 'I will walk you through step-by-step how to get all the software installed and set up'),

-- Course 2: Python Bootcamp
(2, 'No programming experience needed'),
(2, 'A Mac or PC computer with access to the internet'),
(2, 'No paid software required'),

-- Course 3: React Complete Guide
(3, 'JavaScript knowledge required'),
(3, 'ES6+ JavaScript knowledge is recommended'),
(3, 'NO prior React or any other JS framework experience is required'),

-- Course 4: NodeJS Complete Guide
(4, 'Basic JavaScript knowledge is required'),
(4, 'Knowledge about HTML and HTTP is helpful but not required'),
(4, 'NO Node.js knowledge is required'),

-- Course 5: Python Data Science
(5, 'Some programming experience is recommended'),
(5, 'Basic math skills'),

-- Course 6: SQL Bootcamp
(6, 'A computer with internet access'),
(6, 'No prior experience necessary'),

-- Course 7: Web Developer Bootcamp
(7, 'A computer with internet connection'),
(7, 'No prior programming experience required'),
(7, 'Willingness to learn an amazing new skill'),

-- Course 8: Modern JavaScript
(8, 'Basic understanding of HTML and CSS helpful but not required'),
(8, 'No prior JavaScript knowledge required'),

-- Course 9: React with Redux
(9, 'Basic JavaScript knowledge'),
(9, 'Familiarity with ES6 syntax'),

-- Course 10: Microservices
(10, 'A basic understanding of Javascript and NPM is required'),
(10, 'You must know the basic terminal/console commands'),
(10, 'Experience with React and NodeJS is helpful but not required'),

-- Course 11: Zero to Mastery
(11, 'A computer (Windows, Mac, or Linux)'),
(11, 'No programming experience needed'),

-- Course 12: ML Bootcamp
(12, 'Some programming experience'),
(12, 'Basic Python knowledge recommended'),

-- Course 13: Modern JS Beginning
(13, 'Basic understanding of HTML/CSS'),
(13, 'A computer with internet connection'),

-- Course 14: MERN Stack
(14, 'Basic React & Node knowledge required'),
(14, 'ES6 JavaScript knowledge'),

-- Course 15: Complete JavaScript
(15, 'No coding experience necessary'),
(15, 'Basic understanding of HTML and CSS is a plus'),
(15, 'Any computer and OS will work'),

-- Course 16: Advanced CSS
(16, 'Basic CSS and HTML is required'),
(16, 'Basic JavaScript knowledge is a plus'),

-- Course 17: iOS Development
(17, 'A Mac with Xcode installed'),
(17, 'No prior programming experience required'),

-- Course 18: Android Development
(18, 'A computer capable of running Android Studio'),
(18, 'No prior programming experience required'),

-- Course 19: Java Masterclass
(19, 'A computer running Windows, Mac, or Linux'),
(19, 'No prior programming experience required'),

-- Course 20: Spring & Hibernate
(20, 'Basic Java knowledge required'),
(20, 'Understanding of object-oriented programming');

GO
