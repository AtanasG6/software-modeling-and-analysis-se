-- ============================================
-- UDEMY DATABASE - INSERT DATA PART 4
-- Sections, Lessons, Attachments, Resources
-- ============================================

USE UdemyDB;
GO

-- ============================================
-- SECTIONS
-- ============================================

INSERT INTO Section (CourseID, Title, Description)
VALUES
-- Course 1: Web Development Bootcamp - Sections
(1, 'Introduction to Web Development', 'Get started with web development fundamentals'),
(1, 'HTML Fundamentals', 'Learn HTML5 and semantic markup'),
(1, 'CSS Styling', 'Master CSS3 styling and layouts'),
(1, 'JavaScript Basics', 'Introduction to JavaScript programming'),
(1, 'Advanced JavaScript', 'Deep dive into JavaScript concepts'),
(1, 'Node.js and Express', 'Backend development with Node.js'),
(1, 'Databases and SQL', 'Working with databases'),
(1, 'React Fundamentals', 'Introduction to React library'),
(1, 'Full Stack Projects', 'Build complete web applications'),
(1, 'Web3 and Blockchain', 'Introduction to decentralized applications'),

-- Course 2: Python Bootcamp - Sections
(2, 'Python Basics', 'Getting started with Python'),
(2, 'Data Structures', 'Lists, dictionaries, tuples and sets'),
(2, 'Object-Oriented Programming', 'OOP concepts in Python'),
(2, 'File Operations', 'Working with files and directories'),
(2, 'Web Scraping', 'Scraping websites with Beautiful Soup'),
(2, 'Data Science Libraries', 'NumPy, Pandas, and Matplotlib'),
(2, 'Web Development with Flask', 'Building web apps with Flask'),
(2, 'GUI Programming', 'Creating desktop applications'),
(2, 'Automation Projects', 'Automate boring tasks'),
(2, 'Final Projects', 'Capstone projects'),

-- Course 3: React Complete Guide - Sections
(3, 'Getting Started', 'Introduction to React'),
(3, 'React Basics & Components', 'Understanding React components'),
(3, 'React State & Events', 'Managing state and handling events'),
(3, 'React Hooks', 'Working with hooks'),
(3, 'Advanced Components', 'Advanced component patterns'),
(3, 'React Router', 'Navigation and routing'),
(3, 'Redux for State Management', 'Global state management'),
(3, 'Next.js Introduction', 'Server-side rendering with Next.js'),

-- Course 4: NodeJS Complete Guide - Sections
(4, 'Introduction', 'Getting started with Node.js'),
(4, 'JavaScript Refresher', 'Modern JavaScript features'),
(4, 'Node.js Basics', 'Core Node.js concepts'),
(4, 'Express.js Framework', 'Building web servers with Express'),
(4, 'Working with Databases', 'SQL and NoSQL databases'),
(4, 'REST APIs', 'Building RESTful APIs'),
(4, 'GraphQL APIs', 'Introduction to GraphQL'),
(4, 'Authentication', 'User authentication and authorization'),

-- Course 5: Python Data Science - Sections
(5, 'Python Crash Course', 'Quick Python overview'),
(5, 'NumPy Arrays', 'Numerical computing with NumPy'),
(5, 'Pandas DataFrames', 'Data manipulation with Pandas'),
(5, 'Data Visualization', 'Matplotlib and Seaborn'),
(5, 'Machine Learning Basics', 'Introduction to ML'),
(5, 'Linear Regression', 'Regression analysis'),
(5, 'Classification Algorithms', 'Classification techniques'),
(5, 'Deep Learning', 'Neural networks with TensorFlow'),

-- Course 6: SQL Bootcamp - Sections
(6, 'SQL Basics', 'Introduction to SQL'),
(6, 'Advanced SQL Queries', 'Complex queries and joins'),
(6, 'Database Design', 'Creating and designing databases'),
(6, 'Views and Indexes', 'Database optimization'),

-- Course 7: Web Developer Bootcamp - Sections
(7, 'Course Introduction', 'Welcome to the course'),
(7, 'HTML: The Essentials', 'HTML fundamentals'),
(7, 'CSS: The Essentials', 'CSS basics and styling'),
(7, 'JavaScript Fundamentals', 'JavaScript basics'),
(7, 'The World of Backend', 'Introduction to backend'),
(7, 'MongoDB', 'Working with MongoDB'),
(7, 'Authentication & Security', 'User authentication'),
(7, 'YelpCamp Project', 'Building a full-stack application'),

-- Course 8: Modern JavaScript - Sections
(8, 'JavaScript Fundamentals', 'Core JavaScript concepts'),
(8, 'DOM Manipulation', 'Working with the DOM'),
(8, 'Async JavaScript', 'Promises and async/await'),
(8, 'OOP in JavaScript', 'Object-oriented programming'),
(8, 'ES6+ Features', 'Modern JavaScript features'),

-- Course 9: React with Redux - Sections
(9, 'Introduction', 'Course overview'),
(9, 'React Fundamentals', 'Core React concepts'),
(9, 'Redux Architecture', 'Understanding Redux'),
(9, 'Middleware', 'Redux middleware'),
(9, 'React Router', 'Routing in React'),
(9, 'Complex Projects', 'Building real applications'),

-- Course 10: Microservices - Sections
(10, 'Microservices Architecture', 'Understanding microservices'),
(10, 'Docker and Containers', 'Containerization basics'),
(10, 'Kubernetes Orchestration', 'Managing containers'),
(10, 'Database Management', 'Databases in microservices'),
(10, 'Event Bus', 'Communication between services'),
(10, 'Testing Microservices', 'Testing strategies'),

-- Course 11: Zero to Mastery - Sections
(11, 'Introduction', 'Getting started'),
(11, 'HTML 5', 'HTML fundamentals'),
(11, 'CSS', 'Styling with CSS'),
(11, 'JavaScript', 'JavaScript programming'),
(11, 'React', 'React library'),
(11, 'Backend Development', 'Node.js and databases'),
(11, 'Career Development', 'Getting hired as a developer'),

-- Course 12: ML Bootcamp - Sections
(12, 'Python for ML', 'Python essentials'),
(12, 'Data Analysis', 'Analyzing data'),
(12, 'Machine Learning Algorithms', 'ML fundamentals'),
(12, 'Deep Learning', 'Neural networks'),
(12, 'Real World Projects', 'Practical applications'),

-- Course 13: Modern JS Beginning - Sections
(13, 'Introduction & Setup', 'Getting started'),
(13, 'JavaScript Fundamentals', 'Basic concepts'),
(13, 'DOM Projects', 'Building DOM projects'),
(13, 'Asynchronous JavaScript', 'Async programming'),
(13, 'API Projects', 'Working with APIs'),

-- Course 14: MERN Stack - Sections
(14, 'Introduction', 'Course overview'),
(14, 'Express & MongoDB', 'Backend setup'),
(14, 'Authentication', 'User authentication'),
(14, 'React Frontend', 'Building the frontend'),
(14, 'Redux State Management', 'Managing state'),
(14, 'Deployment', 'Deploying to production'),

-- Course 15: Complete JavaScript - Sections
(15, 'Welcome & Setup', 'Getting started'),
(15, 'JavaScript Fundamentals Part 1', 'Basic concepts'),
(15, 'JavaScript Fundamentals Part 2', 'More fundamentals'),
(15, 'DOM and Events', 'Interactive websites'),
(15, 'Advanced JavaScript', 'Advanced concepts'),
(15, 'Asynchronous JavaScript', 'Promises and async'),
(15, 'Modern JavaScript', 'ES6+ features'),

-- Course 16: Advanced CSS - Sections
(16, 'Introduction', 'Course introduction'),
(16, 'Natours Project', 'Building a landing page'),
(16, 'CSS Behind the Scenes', 'How CSS works'),
(16, 'Sass and NPM', 'Using Sass'),
(16, 'Flexbox', 'Flexbox layouts'),
(16, 'CSS Grid', 'Grid layouts'),
(16, 'Responsive Design', 'Mobile-first design'),

-- Course 17: iOS Development - Sections
(17, 'Getting Started with iOS', 'Introduction to iOS development'),
(17, 'Swift Programming', 'Learning Swift'),
(17, 'SwiftUI Basics', 'Building UIs with SwiftUI'),
(17, 'UIKit Fundamentals', 'Working with UIKit'),
(17, 'Networking', 'Working with APIs'),
(17, 'Core Data', 'Data persistence'),
(17, 'Machine Learning', 'CoreML and ML'),
(17, 'Augmented Reality', 'ARKit fundamentals'),

-- Course 18: Android Development - Sections
(18, 'Introduction to Android', 'Getting started'),
(18, 'Kotlin Basics', 'Learning Kotlin'),
(18, 'Android UI', 'Building user interfaces'),
(18, 'Activities and Intents', 'Navigation'),
(18, 'Data Persistence', 'Room database'),
(18, 'Networking', 'Working with APIs'),
(18, 'Material Design', 'Beautiful Android apps'),

-- Course 19: Java Masterclass - Sections
(19, 'Java Basics', 'Introduction to Java'),
(19, 'Object-Oriented Programming', 'OOP concepts'),
(19, 'Collections Framework', 'Working with collections'),
(19, 'Generics', 'Generic programming'),
(19, 'Lambda Expressions', 'Functional programming'),
(19, 'Java 17 Features', 'Modern Java features'),

-- Course 20: Spring & Hibernate - Sections
(20, 'Spring Core', 'Spring framework basics'),
(20, 'Spring Boot', 'Spring Boot introduction'),
(20, 'Hibernate/JPA', 'Database persistence'),
(20, 'REST APIs', 'Building REST services'),
(20, 'Spring Security', 'Authentication and authorization'),
(20, 'Spring Data JPA', 'Advanced database operations');

-- ============================================
-- LESSONS
-- ============================================

-- Course 1, Section 1: Introduction to Web Development
INSERT INTO Lesson (SectionID, Title, Description, VideoUrl, DurationMinutes, IsPreview)
VALUES
(1, 'Welcome to the Course', 'Course introduction and overview', 'https://cdn.udemy.com/videos/course1-s1-l1.mp4', 8, 1),
(1, 'How the Internet Works', 'Understanding web fundamentals', 'https://cdn.udemy.com/videos/course1-s1-l2.mp4', 15, 1),
(1, 'Setting Up Your Development Environment', 'Installing necessary tools', 'https://cdn.udemy.com/videos/course1-s1-l3.mp4', 20, 0),
(1, 'Your First Web Page', 'Creating your first HTML page', 'https://cdn.udemy.com/videos/course1-s1-l4.mp4', 25, 0);

-- Course 1, Section 2: HTML Fundamentals
INSERT INTO Lesson (SectionID, Title, Description, VideoUrl, DurationMinutes, IsPreview)
VALUES
(2, 'HTML Basics', 'Introduction to HTML syntax', 'https://cdn.udemy.com/videos/course1-s2-l1.mp4', 18, 1),
(2, 'HTML Tags and Elements', 'Common HTML elements', 'https://cdn.udemy.com/videos/course1-s2-l2.mp4', 22, 0),
(2, 'Semantic HTML', 'Using semantic HTML5 elements', 'https://cdn.udemy.com/videos/course1-s2-l3.mp4', 20, 0),
(2, 'Forms and Input', 'Creating HTML forms', 'https://cdn.udemy.com/videos/course1-s2-l4.mp4', 30, 0),
(2, 'HTML Project', 'Build a complete HTML page', 'https://cdn.udemy.com/videos/course1-s2-l5.mp4', 45, 0);

-- Course 1, Section 3: CSS Styling
INSERT INTO Lesson (SectionID, Title, Description, VideoUrl, DurationMinutes, IsPreview)
VALUES
(3, 'Introduction to CSS', 'CSS basics and syntax', 'https://cdn.udemy.com/videos/course1-s3-l1.mp4', 16, 0),
(3, 'CSS Selectors', 'Selecting HTML elements', 'https://cdn.udemy.com/videos/course1-s3-l2.mp4', 24, 0),
(3, 'The Box Model', 'Understanding the CSS box model', 'https://cdn.udemy.com/videos/course1-s3-l3.mp4', 20, 0),
(3, 'Flexbox Layout', 'Modern layouts with Flexbox', 'https://cdn.udemy.com/videos/course1-s3-l4.mp4', 35, 0),
(3, 'CSS Grid', 'Grid layout system', 'https://cdn.udemy.com/videos/course1-s3-l5.mp4', 40, 0),
(3, 'Responsive Design', 'Making websites responsive', 'https://cdn.udemy.com/videos/course1-s3-l6.mp4', 28, 0);

-- Course 1, Section 4: JavaScript Basics
INSERT INTO Lesson (SectionID, Title, Description, VideoUrl, DurationMinutes, IsPreview)
VALUES
(4, 'JavaScript Introduction', 'What is JavaScript?', 'https://cdn.udemy.com/videos/course1-s4-l1.mp4', 12, 0),
(4, 'Variables and Data Types', 'Working with data', 'https://cdn.udemy.com/videos/course1-s4-l2.mp4', 25, 0),
(4, 'Functions', 'Creating and using functions', 'https://cdn.udemy.com/videos/course1-s4-l3.mp4', 30, 0),
(4, 'Arrays and Objects', 'Data structures in JavaScript', 'https://cdn.udemy.com/videos/course1-s4-l4.mp4', 32, 0),
(4, 'DOM Manipulation', 'Interacting with HTML', 'https://cdn.udemy.com/videos/course1-s4-l5.mp4', 38, 0);

-- Course 2, Section 1: Python Basics
INSERT INTO Lesson (SectionID, Title, Description, VideoUrl, DurationMinutes, IsPreview)
VALUES
(11, 'Python Installation', 'Setting up Python', 'https://cdn.udemy.com/videos/course2-s1-l1.mp4', 15, 1),
(11, 'Your First Python Program', 'Hello World in Python', 'https://cdn.udemy.com/videos/course2-s1-l2.mp4', 10, 1),
(11, 'Variables in Python', 'Understanding variables', 'https://cdn.udemy.com/videos/course2-s1-l3.mp4', 20, 0),
(11, 'Data Types', 'Strings, integers, floats', 'https://cdn.udemy.com/videos/course2-s1-l4.mp4', 25, 0),
(11, 'Control Flow', 'If statements and loops', 'https://cdn.udemy.com/videos/course2-s1-l5.mp4', 30, 0);

-- Course 2, Section 2: Data Structures
INSERT INTO Lesson (SectionID, Title, Description, VideoUrl, DurationMinutes, IsPreview)
VALUES
(12, 'Lists', 'Working with Python lists', 'https://cdn.udemy.com/videos/course2-s2-l1.mp4', 28, 0),
(12, 'Dictionaries', 'Key-value pairs in Python', 'https://cdn.udemy.com/videos/course2-s2-l2.mp4', 26, 0),
(12, 'Tuples and Sets', 'More data structures', 'https://cdn.udemy.com/videos/course2-s2-l3.mp4', 22, 0),
(12, 'List Comprehensions', 'Elegant list creation', 'https://cdn.udemy.com/videos/course2-s2-l4.mp4', 24, 0);

-- Course 3, Section 1: Getting Started
INSERT INTO Lesson (SectionID, Title, Description, VideoUrl, DurationMinutes, IsPreview)
VALUES
(21, 'Course Introduction', 'What you will learn', 'https://cdn.udemy.com/videos/course3-s1-l1.mp4', 10, 1),
(21, 'What is React?', 'Understanding React', 'https://cdn.udemy.com/videos/course3-s1-l2.mp4', 15, 1),
(21, 'Setting Up React', 'Development environment setup', 'https://cdn.udemy.com/videos/course3-s1-l3.mp4', 20, 0);

-- Course 3, Section 2: React Basics & Components
INSERT INTO Lesson (SectionID, Title, Description, VideoUrl, DurationMinutes, IsPreview)
VALUES
(22, 'React Components', 'Creating components', 'https://cdn.udemy.com/videos/course3-s2-l1.mp4', 25, 0),
(22, 'JSX Syntax', 'Understanding JSX', 'https://cdn.udemy.com/videos/course3-s2-l2.mp4', 22, 0),
(22, 'Props', 'Passing data to components', 'https://cdn.udemy.com/videos/course3-s2-l3.mp4', 28, 0),
(22, 'Component Composition', 'Building complex UIs', 'https://cdn.udemy.com/videos/course3-s2-l4.mp4', 30, 0);

-- Course 4, Section 1: Introduction
INSERT INTO Lesson (SectionID, Title, Description, VideoUrl, DurationMinutes, IsPreview)
VALUES
(29, 'Welcome to Node.js', 'Course introduction', 'https://cdn.udemy.com/videos/course4-s1-l1.mp4', 12, 1),
(29, 'What is Node.js?', 'Understanding Node.js', 'https://cdn.udemy.com/videos/course4-s1-l2.mp4', 18, 1),
(29, 'Installing Node.js', 'Setup and installation', 'https://cdn.udemy.com/videos/course4-s1-l3.mp4', 15, 0);

-- Course 4, Section 3: Node.js Basics
INSERT INTO Lesson (SectionID, Title, Description, VideoUrl, DurationMinutes, IsPreview)
VALUES
(31, 'Node.js Modules', 'Understanding modules', 'https://cdn.udemy.com/videos/course4-s3-l1.mp4', 24, 0),
(31, 'NPM Package Manager', 'Working with npm', 'https://cdn.udemy.com/videos/course4-s3-l2.mp4', 26, 0),
(31, 'File System Module', 'Reading and writing files', 'https://cdn.udemy.com/videos/course4-s3-l3.mp4', 28, 0),
(31, 'Creating a Server', 'Building HTTP servers', 'https://cdn.udemy.com/videos/course4-s3-l4.mp4', 32, 0);

-- Course 5, Section 1: Python Crash Course
INSERT INTO Lesson (SectionID, Title, Description, VideoUrl, DurationMinutes, IsPreview)
VALUES
(37, 'Python Setup', 'Installing Python for data science', 'https://cdn.udemy.com/videos/course5-s1-l1.mp4', 14, 1),
(37, 'Jupyter Notebooks', 'Introduction to Jupyter', 'https://cdn.udemy.com/videos/course5-s1-l2.mp4', 18, 1),
(37, 'Python Refresher', 'Quick Python review', 'https://cdn.udemy.com/videos/course5-s1-l3.mp4', 35, 0);

-- Course 5, Section 2: NumPy Arrays
INSERT INTO Lesson (SectionID, Title, Description, VideoUrl, DurationMinutes, IsPreview)
VALUES
(38, 'NumPy Introduction', 'Getting started with NumPy', 'https://cdn.udemy.com/videos/course5-s2-l1.mp4', 20, 0),
(38, 'NumPy Arrays', 'Creating and manipulating arrays', 'https://cdn.udemy.com/videos/course5-s2-l2.mp4', 28, 0),
(38, 'Array Operations', 'Mathematical operations', 'https://cdn.udemy.com/videos/course5-s2-l3.mp4', 25, 0),
(38, 'Array Indexing', 'Selecting array elements', 'https://cdn.udemy.com/videos/course5-s2-l4.mp4', 22, 0);

-- Course 6, Section 1: SQL Basics
INSERT INTO Lesson (SectionID, Title, Description, VideoUrl, DurationMinutes, IsPreview)
VALUES
(45, 'Introduction to SQL', 'What is SQL?', 'https://cdn.udemy.com/videos/course6-s1-l1.mp4', 12, 1),
(45, 'Installing PostgreSQL', 'Database setup', 'https://cdn.udemy.com/videos/course6-s1-l2.mp4', 18, 1),
(45, 'SELECT Statement', 'Querying data', 'https://cdn.udemy.com/videos/course6-s1-l3.mp4', 22, 0),
(45, 'WHERE Clause', 'Filtering results', 'https://cdn.udemy.com/videos/course6-s1-l4.mp4', 20, 0),
(45, 'ORDER BY', 'Sorting data', 'https://cdn.udemy.com/videos/course6-s1-l5.mp4', 18, 0);

-- Course 6, Section 2: Advanced SQL Queries
INSERT INTO Lesson (SectionID, Title, Description, VideoUrl, DurationMinutes, IsPreview)
VALUES
(46, 'JOIN Operations', 'Combining tables', 'https://cdn.udemy.com/videos/course6-s2-l1.mp4', 30, 0),
(46, 'GROUP BY', 'Aggregating data', 'https://cdn.udemy.com/videos/course6-s2-l2.mp4', 28, 0),
(46, 'Subqueries', 'Nested queries', 'https://cdn.udemy.com/videos/course6-s2-l3.mp4', 26, 0);

-- ============================================
-- LESSON ATTACHMENTS
-- ============================================

INSERT INTO LessonAttachment (LessonID, FileName, FileUrl, FileType)
VALUES
(1, 'course-syllabus.pdf', 'https://cdn.udemy.com/attachments/course1-syllabus.pdf', 'PDF'),
(1, 'resources-list.pdf', 'https://cdn.udemy.com/attachments/course1-resources.pdf', 'PDF'),
(3, 'dev-tools-installation.pdf', 'https://cdn.udemy.com/attachments/dev-tools.pdf', 'PDF'),
(4, 'html-starter-template.html', 'https://cdn.udemy.com/attachments/html-template.html', 'HTML'),
(5, 'html-cheatsheet.pdf', 'https://cdn.udemy.com/attachments/html-cheatsheet.pdf', 'PDF'),
(8, 'html-project-starter.zip', 'https://cdn.udemy.com/attachments/html-project.zip', 'ZIP'),
(9, 'css-basics-slides.pdf', 'https://cdn.udemy.com/attachments/css-slides.pdf', 'PDF'),
(12, 'flexbox-guide.pdf', 'https://cdn.udemy.com/attachments/flexbox-guide.pdf', 'PDF'),
(13, 'grid-layout-examples.zip', 'https://cdn.udemy.com/attachments/grid-examples.zip', 'ZIP'),
(15, 'javascript-notes.pdf', 'https://cdn.udemy.com/attachments/js-notes.pdf', 'PDF'),
(18, 'dom-manipulation-exercises.zip', 'https://cdn.udemy.com/attachments/dom-exercises.zip', 'ZIP'),
(19, 'python-installation-guide.pdf', 'https://cdn.udemy.com/attachments/python-install.pdf', 'PDF'),
(20, 'hello-world-example.py', 'https://cdn.udemy.com/attachments/hello-world.py', 'Python'),
(24, 'list-exercises.py', 'https://cdn.udemy.com/attachments/list-exercises.py', 'Python'),
(25, 'dictionary-examples.py', 'https://cdn.udemy.com/attachments/dict-examples.py', 'Python'),
(28, 'react-setup-guide.pdf', 'https://cdn.udemy.com/attachments/react-setup.pdf', 'PDF'),
(30, 'component-examples.zip', 'https://cdn.udemy.com/attachments/components.zip', 'ZIP'),
(34, 'node-installation.pdf', 'https://cdn.udemy.com/attachments/node-install.pdf', 'PDF'),
(37, 'npm-commands.pdf', 'https://cdn.udemy.com/attachments/npm-commands.pdf', 'PDF'),
(42, 'jupyter-setup.pdf', 'https://cdn.udemy.com/attachments/jupyter-setup.pdf', 'PDF'),
(43, 'python-ds-cheatsheet.pdf', 'https://cdn.udemy.com/attachments/ds-cheatsheet.pdf', 'PDF'),
(44, 'numpy-basics.ipynb', 'https://cdn.udemy.com/attachments/numpy-basics.ipynb', 'Jupyter Notebook'),
(50, 'postgresql-setup.pdf', 'https://cdn.udemy.com/attachments/postgres-setup.pdf', 'PDF'),
(51, 'sql-select-examples.sql', 'https://cdn.udemy.com/attachments/select-examples.sql', 'SQL'),
(54, 'join-examples.sql', 'https://cdn.udemy.com/attachments/join-examples.sql', 'SQL');

-- ============================================
-- LESSON RESOURCES
-- ============================================

INSERT INTO LessonResource (LessonID, ResourceUrl, Description)
VALUES
(1, 'https://developer.mozilla.org/en-US/docs/Learn', 'MDN Web Docs - Learning Web Development'),
(1, 'https://www.w3schools.com/', 'W3Schools Online Tutorials'),
(2, 'https://www.youtube.com/watch?v=7_LPdttKXPc', 'How the Internet Works - Video'),
(3, 'https://code.visualstudio.com/', 'Visual Studio Code Download'),
(3, 'https://nodejs.org/', 'Node.js Official Website'),
(5, 'https://developer.mozilla.org/en-US/docs/Web/HTML', 'HTML Reference - MDN'),
(6, 'https://html.spec.whatwg.org/', 'HTML Living Standard'),
(9, 'https://developer.mozilla.org/en-US/docs/Web/CSS', 'CSS Reference - MDN'),
(9, 'https://cssreference.io/', 'CSS Reference - Visual Guide'),
(12, 'https://css-tricks.com/snippets/css/a-guide-to-flexbox/', 'Complete Guide to Flexbox'),
(13, 'https://css-tricks.com/snippets/css/complete-guide-grid/', 'Complete Guide to CSS Grid'),
(14, 'https://www.responsivebreakpoints.com/', 'Responsive Breakpoints Generator'),
(15, 'https://developer.mozilla.org/en-US/docs/Web/JavaScript', 'JavaScript Reference - MDN'),
(15, 'https://javascript.info/', 'The Modern JavaScript Tutorial'),
(18, 'https://eloquentjavascript.net/', 'Eloquent JavaScript Book'),
(19, 'https://www.python.org/downloads/', 'Download Python'),
(19, 'https://docs.python.org/3/', 'Python Documentation'),
(21, 'https://www.learnpython.org/', 'Learn Python Interactive Tutorial'),
(24, 'https://docs.python.org/3/tutorial/datastructures.html', 'Python Data Structures'),
(28, 'https://react.dev/', 'React Official Documentation'),
(29, 'https://react.dev/learn', 'React Quick Start Guide'),
(30, 'https://react.dev/reference/react', 'React API Reference'),
(34, 'https://nodejs.org/en/docs/', 'Node.js Documentation'),
(35, 'https://www.npmjs.com/', 'NPM Package Registry'),
(37, 'https://docs.npmjs.com/', 'NPM Documentation'),
(42, 'https://jupyter.org/', 'Jupyter Project Website'),
(43, 'https://pandas.pydata.org/', 'Pandas Documentation'),
(44, 'https://numpy.org/doc/', 'NumPy Documentation'),
(45, 'https://www.numpy.org/learn/', 'Learn NumPy'),
(50, 'https://www.postgresql.org/docs/', 'PostgreSQL Documentation'),
(51, 'https://www.postgresqltutorial.com/', 'PostgreSQL Tutorial'),
(54, 'https://joins.spathon.com/', 'SQL Joins Visualizer'),
(55, 'https://www.sqlstyle.guide/', 'SQL Style Guide');

GO
