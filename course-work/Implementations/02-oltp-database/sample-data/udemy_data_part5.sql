-- ============================================
-- UDEMY DATABASE - INSERT DATA PART 5
-- Quizzes, Questions, Options, Assignments
-- ============================================

USE UdemyDB;
GO

-- ============================================
-- QUIZZES (29 quizzes total)
-- ============================================

INSERT INTO Quiz (CourseID, Title, QuizTopic, Description, PassingScore, TimeLimitMinutes, MaxAttempts)
VALUES
-- Course 1: Web Development Bootcamp
(1, 'HTML Fundamentals Assessment', 'HTML Fundamentals Quiz', 'Test your knowledge of HTML5, semantic markup, and best practices', 70, 30, 3),
(1, 'CSS Basics Assessment', 'CSS Basics Quiz', 'Evaluate your understanding of CSS selectors, properties, and the box model', 70, 25, 3),
(1, 'JavaScript Essentials Test', 'JavaScript Essentials Quiz', 'Assess your JavaScript fundamentals including variables, functions, and DOM manipulation', 75, 40, 3),
(1, 'React Basics Evaluation', 'React Basics Quiz', 'Test your understanding of React components, JSX, props, and state', 75, 35, 2),
(1, 'Node.js Fundamentals Check', 'Node.js Fundamentals Quiz', 'Evaluate your Node.js knowledge including modules, NPM, and server creation', 75, 30, 3),

-- Course 2: Python Bootcamp
(2, 'Python Basics Test', 'Python Basics Quiz', 'Test your Python fundamentals including syntax, variables, and data types', 70, 25, 3),
(2, 'Data Structures Assessment', 'Data Structures Quiz', 'Assess your knowledge of lists, dictionaries, tuples, and sets', 75, 30, 3),
(2, 'OOP in Python Evaluation', 'OOP in Python Quiz', 'Test your understanding of object-oriented programming in Python', 75, 35, 2),
(2, 'Python Libraries Check', 'Python Libraries Quiz', 'Evaluate your knowledge of NumPy, Pandas, and other Python libraries', 80, 40, 2),

-- Course 3: React Complete Guide
(3, 'React Components Test', 'React Components Quiz', 'Test your understanding of React component architecture', 75, 30, 3),
(3, 'React Hooks Assessment', 'React Hooks Quiz', 'Assess your knowledge of React hooks including useState and useEffect', 80, 35, 2),
(3, 'Redux Fundamentals Evaluation', 'Redux Fundamentals Quiz', 'Test your understanding of Redux state management', 80, 40, 2),

-- Course 4: NodeJS Complete Guide
(4, 'Node.js Basics Test', 'Node.js Basics Quiz', 'Evaluate Node.js core concepts and modules', 70, 30, 3),
(4, 'Express.js Assessment', 'Express.js Quiz', 'Test your Express.js framework knowledge', 75, 35, 3),
(4, 'REST API Evaluation', 'REST API Quiz', 'Assess your understanding of RESTful API design and implementation', 80, 40, 2),

-- Course 5: Python Data Science
(5, 'NumPy and Pandas Test', 'NumPy and Pandas Quiz', 'Test your data manipulation skills with NumPy and Pandas', 75, 35, 3),
(5, 'Machine Learning Basics Assessment', 'Machine Learning Basics Quiz', 'Evaluate your understanding of ML concepts and algorithms', 80, 45, 2),
(5, 'Data Visualization Check', 'Data Visualization Quiz', 'Test your knowledge of Matplotlib, Seaborn, and Plotly', 75, 30, 3),

-- Course 6: SQL Bootcamp
(6, 'SQL Basics Test', 'SQL Basics Quiz', 'Test your SQL query fundamentals', 70, 25, 3),
(6, 'Advanced SQL Assessment', 'Advanced SQL Quiz', 'Evaluate your advanced SQL skills including joins and subqueries', 75, 35, 2),

-- Course 7: Web Developer Bootcamp
(7, 'HTML & CSS Test', 'HTML & CSS Quiz', 'Combined assessment of HTML and CSS knowledge', 70, 30, 3),
(7, 'JavaScript Fundamentals Assessment', 'JavaScript Fundamentals Quiz', 'Test your core JavaScript programming skills', 75, 35, 3),
(7, 'Backend Basics Evaluation', 'Backend Basics Quiz', 'Assess your understanding of backend development concepts', 75, 30, 3),

-- Course 8: Modern JavaScript
(8, 'JavaScript Fundamentals Test', 'JavaScript Fundamentals Quiz', 'Test your modern JavaScript knowledge', 75, 30, 3),
(8, 'Async JavaScript Assessment', 'Async JavaScript Quiz', 'Evaluate your understanding of promises, async/await, and AJAX', 80, 35, 2),

-- Course 9: React with Redux
(9, 'React Fundamentals Test', 'React Fundamentals Quiz', 'Test your React core concepts', 75, 30, 3),
(9, 'Redux Architecture Assessment', 'Redux Architecture Quiz', 'Evaluate your Redux implementation knowledge', 80, 40, 2),

-- Course 10: Microservices
(10, 'Microservices Basics Test', 'Microservices Basics Quiz', 'Test your understanding of microservices architecture', 80, 40, 2),
(10, 'Docker and Kubernetes Assessment', 'Docker and Kubernetes Quiz', 'Evaluate your containerization and orchestration knowledge', 85, 45, 2);

-- ============================================
-- QUIZ QUESTIONS (99 total questions)
-- QuestionID starts at 1 and increments automatically
-- ============================================

-- Quiz 1: HTML Fundamentals (QuestionID 1-5)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(1, 1, 'What does HTML stand for?', 'multiple_choice', 'Hyper Text Markup Language', 1),
(1, 2, 'Which HTML tag is used for the largest heading?', 'multiple_choice', 'h1', 1),
(1, 3, 'HTML is a programming language.', 'true_false', 'False', 1),
(1, 4, 'Which tag is used to create a hyperlink?', 'multiple_choice', 'a', 1),
(1, 5, 'What is the correct HTML element for inserting a line break?', 'multiple_choice', 'br', 1);

-- Quiz 2: CSS Basics (QuestionID 6-10)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(2, 1, 'What does CSS stand for?', 'multiple_choice', 'Cascading Style Sheets', 1),
(2, 2, 'Which property is used to change the text color?', 'multiple_choice', 'color', 1),
(2, 3, 'CSS can be applied inline, internally, and externally.', 'true_false', 'True', 1),
(2, 4, 'Which property is used to change the background color?', 'multiple_choice', 'background-color', 1),
(2, 5, 'The box model includes margin, border, padding, and content.', 'true_false', 'True', 1);

-- Quiz 3: JavaScript Essentials (QuestionID 11-15)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(3, 1, 'JavaScript is the same as Java.', 'true_false', 'False', 1),
(3, 2, 'Which keyword is used to declare a variable in modern JavaScript?', 'multiple_choice', 'let or const', 1),
(3, 3, 'What is the output of: typeof []?', 'multiple_choice', 'object', 1),
(3, 4, 'JavaScript is a case-sensitive language.', 'true_false', 'True', 1),
(3, 5, 'Which method is used to add an element to the end of an array?', 'multiple_choice', 'push', 1);

-- Quiz 4: React Basics (QuestionID 16-19)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(4, 1, 'What is React?', 'multiple_choice', 'A JavaScript library for building user interfaces', 1),
(4, 2, 'React uses a virtual DOM.', 'true_false', 'True', 1),
(4, 3, 'Which method is used to update state in a class component?', 'multiple_choice', 'setState', 1),
(4, 4, 'Props are read-only.', 'true_false', 'True', 1);

-- Quiz 5: Node.js Fundamentals (QuestionID 20-23)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(5, 1, 'Node.js is built on which JavaScript engine?', 'multiple_choice', 'V8', 1),
(5, 2, 'Node.js is single-threaded.', 'true_false', 'True', 1),
(5, 3, 'Which module is used to create a web server in Node.js?', 'multiple_choice', 'http', 1),
(5, 4, 'Node.js can only be used for backend development.', 'true_false', 'False', 1);

-- Quiz 6: Python Basics (QuestionID 24-27)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(6, 1, 'Python is an interpreted language.', 'true_false', 'True', 1),
(6, 2, 'Which keyword is used to define a function in Python?', 'multiple_choice', 'def', 1),
(6, 3, 'Python is case-sensitive.', 'true_false', 'True', 1),
(6, 4, 'What is the correct way to create a list in Python?', 'multiple_choice', '[]', 1);

-- Quiz 7: Data Structures (QuestionID 28-31)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(7, 1, 'Lists in Python are mutable.', 'true_false', 'True', 1),
(7, 2, 'Which data structure uses key-value pairs?', 'multiple_choice', 'Dictionary', 1),
(7, 3, 'Tuples can be modified after creation.', 'true_false', 'False', 1),
(7, 4, 'Sets allow duplicate values.', 'true_false', 'False', 1);

-- Quiz 8: OOP in Python (QuestionID 32-35)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(8, 1, 'What keyword is used to create a class in Python?', 'multiple_choice', 'class', 1),
(8, 2, 'Python supports multiple inheritance.', 'true_false', 'True', 1),
(8, 3, 'What does self represent in a class method?', 'multiple_choice', 'The instance of the class', 1),
(8, 4, 'Encapsulation is a principle of OOP.', 'true_false', 'True', 1);

-- Quiz 9: Python Libraries (QuestionID 36-39)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(9, 1, 'NumPy is used for numerical computing.', 'true_false', 'True', 1),
(9, 2, 'Which library is best for data manipulation?', 'multiple_choice', 'Pandas', 1),
(9, 3, 'Matplotlib is used for machine learning.', 'true_false', 'False', 1),
(9, 4, 'Flask is a Python web framework.', 'true_false', 'True', 1);

-- Quiz 10: React Components (QuestionID 40-42)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(10, 1, 'Components must return a single root element.', 'true_false', 'True', 1),
(10, 2, 'What is the purpose of props in React?', 'multiple_choice', 'To pass data from parent to child components', 1),
(10, 3, 'State can be passed down to child components as props.', 'true_false', 'True', 1);

-- Quiz 11: React Hooks (QuestionID 43-45)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(11, 1, 'Hooks can only be used in functional components.', 'true_false', 'True', 1),
(11, 2, 'Which hook is used for side effects?', 'multiple_choice', 'useEffect', 1),
(11, 3, 'useState returns an array with two elements.', 'true_false', 'True', 1);

-- Quiz 12: Redux Fundamentals (QuestionID 46-48)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(12, 1, 'Redux is used for state management.', 'true_false', 'True', 1),
(12, 2, 'What triggers state changes in Redux?', 'multiple_choice', 'Actions', 1),
(12, 3, 'Reducers must be pure functions.', 'true_false', 'True', 1);

-- Quiz 13: Node.js Basics (QuestionID 49-51)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(13, 1, 'Node.js uses an event-driven architecture.', 'true_false', 'True', 1),
(13, 2, 'Which command installs a package with npm?', 'multiple_choice', 'npm install', 1),
(13, 3, 'Node.js is built on Chrome V8 engine.', 'true_false', 'True', 1);

-- Quiz 14: Express.js (QuestionID 52-54)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(14, 1, 'Express is a Node.js framework.', 'true_false', 'True', 1),
(14, 2, 'Which method handles GET requests?', 'multiple_choice', 'app.get()', 1),
(14, 3, 'Middleware functions have access to request and response objects.', 'true_false', 'True', 1);

-- Quiz 15: REST API (QuestionID 55-57)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(15, 1, 'REST stands for Representational State Transfer.', 'true_false', 'True', 1),
(15, 2, 'Which HTTP method is used to update a resource?', 'multiple_choice', 'PUT', 1),
(15, 3, 'RESTful APIs are stateless.', 'true_false', 'True', 1);

-- Quiz 16: NumPy and Pandas (QuestionID 58-60)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(16, 1, 'NumPy arrays are faster than Python lists.', 'true_false', 'True', 1),
(16, 2, 'What is the main data structure in Pandas?', 'multiple_choice', 'DataFrame', 1),
(16, 3, 'Pandas can read CSV files.', 'true_false', 'True', 1);

-- Quiz 17: Machine Learning Basics (QuestionID 61-63)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(17, 1, 'Supervised learning uses labeled data.', 'true_false', 'True', 1),
(17, 2, 'Which library is commonly used for ML in Python?', 'multiple_choice', 'scikit-learn', 1),
(17, 3, 'Overfitting is when a model performs well on training data but poorly on test data.', 'true_false', 'True', 1);

-- Quiz 18: Data Visualization (QuestionID 64-66)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(18, 1, 'Matplotlib is a Python visualization library.', 'true_false', 'True', 1),
(18, 2, 'Which library is built on top of Matplotlib?', 'multiple_choice', 'Seaborn', 1),
(18, 3, 'Plotly creates interactive visualizations.', 'true_false', 'True', 1);

-- Quiz 19: SQL Basics (QuestionID 67-69)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(19, 1, 'SQL stands for Structured Query Language.', 'true_false', 'True', 1),
(19, 2, 'Which command retrieves data from a database?', 'multiple_choice', 'SELECT', 1),
(19, 3, 'The WHERE clause is used to filter results.', 'true_false', 'True', 1);

-- Quiz 20: Advanced SQL (QuestionID 70-72)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(20, 1, 'INNER JOIN returns only matching rows.', 'true_false', 'True', 1),
(20, 2, 'Which clause groups rows?', 'multiple_choice', 'GROUP BY', 1),
(20, 3, 'Subqueries can be nested.', 'true_false', 'True', 1);

-- Quiz 21: HTML & CSS (QuestionID 73-75)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(21, 1, 'HTML and CSS work together to create web pages.', 'true_false', 'True', 1),
(21, 2, 'Which CSS property controls text size?', 'multiple_choice', 'font-size', 1),
(21, 3, 'Semantic HTML improves accessibility.', 'true_false', 'True', 1);

-- Quiz 22: JavaScript Fundamentals (QuestionID 76-78)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(22, 1, 'JavaScript can run in the browser.', 'true_false', 'True', 1),
(22, 2, 'Which keyword declares a constant?', 'multiple_choice', 'const', 1),
(22, 3, 'Arrow functions were introduced in ES6.', 'true_false', 'True', 1);

-- Quiz 23: Backend Basics (QuestionID 79-81)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(23, 1, 'Backend handles server-side logic.', 'true_false', 'True', 1),
(23, 2, 'Which database is NoSQL?', 'multiple_choice', 'MongoDB', 1),
(23, 3, 'APIs allow communication between systems.', 'true_false', 'True', 1);

-- Quiz 24: JavaScript Fundamentals (QuestionID 82-84)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(24, 1, 'ES6 introduced let and const.', 'true_false', 'True', 1),
(24, 2, 'Which method creates a new array?', 'multiple_choice', 'map', 1),
(24, 3, 'Template literals use backticks.', 'true_false', 'True', 1);

-- Quiz 25: Async JavaScript (QuestionID 85-87)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(25, 1, 'Promises have three states.', 'true_false', 'True', 1),
(25, 2, 'Which keyword pauses async function execution?', 'multiple_choice', 'await', 1),
(25, 3, 'Async/await is built on promises.', 'true_false', 'True', 1);

-- Quiz 26: React Fundamentals (QuestionID 88-90)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(26, 1, 'React uses JSX syntax.', 'true_false', 'True', 1),
(26, 2, 'Which method renders a component?', 'multiple_choice', 'render', 1),
(26, 3, 'React is maintained by Facebook.', 'true_false', 'True', 1);

-- Quiz 27: Redux Architecture (QuestionID 91-93)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(27, 1, 'Redux has a single store.', 'true_false', 'True', 1),
(27, 2, 'What connects React to Redux?', 'multiple_choice', 'react-redux', 1),
(27, 3, 'Actions are plain JavaScript objects.', 'true_false', 'True', 1);

-- Quiz 28: Microservices Basics (QuestionID 94-96)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(28, 1, 'Microservices are independently deployable.', 'true_false', 'True', 1),
(28, 2, 'Which pattern is common in microservices?', 'multiple_choice', 'Event-driven', 1),
(28, 3, 'Microservices can use different databases.', 'true_false', 'True', 1);

-- Quiz 29: Docker and Kubernetes (QuestionID 97-99)
INSERT INTO QuizQuestion (QuizID, QuestionNumber, QuestionText, QuestionType, CorrectAnswer, Points)
VALUES
(29, 1, 'Docker containers are lightweight.', 'true_false', 'True', 1),
(29, 2, 'What does Kubernetes orchestrate?', 'multiple_choice', 'Containers', 1),
(29, 3, 'Docker images are built from Dockerfiles.', 'true_false', 'True', 1);

-- ============================================
-- QUESTION OPTIONS (only for multiple_choice questions)
-- Using correct QuestionID references
-- ============================================

-- Quiz 1 - QuestionID 1, 2, 4, 5
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(1, 'Hyper Text Markup Language', 1), (1, 'High Tech Modern Language', 0), (1, 'Home Tool Markup Language', 0),
(2, 'h1', 1), (2, 'h6', 0), (2, 'heading', 0),
(4, 'a', 1), (4, 'link', 0), (4, 'href', 0),
(5, 'br', 1), (5, 'break', 0), (5, 'lb', 0);

-- Quiz 2 - QuestionID 6, 7, 9
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(6, 'Cascading Style Sheets', 1), (6, 'Computer Style Sheets', 0), (6, 'Creative Style Sheets', 0),
(7, 'color', 1), (7, 'text-color', 0), (7, 'font-color', 0),
(9, 'background-color', 1), (9, 'bgcolor', 0), (9, 'color', 0);

-- Quiz 3 - QuestionID 12, 13, 15
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(12, 'let or const', 1), (12, 'var only', 0), (12, 'variable', 0),
(13, 'object', 1), (13, 'array', 0), (13, 'list', 0),
(15, 'push', 1), (15, 'add', 0), (15, 'append', 0);

-- Quiz 4 - QuestionID 16, 18
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(16, 'A JavaScript library for building user interfaces', 1), (16, 'A framework', 0), (16, 'A programming language', 0),
(18, 'setState', 1), (18, 'updateState', 0), (18, 'changeState', 0);

-- Quiz 5 - QuestionID 20, 22
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(20, 'V8', 1), (20, 'SpiderMonkey', 0), (20, 'Chakra', 0),
(22, 'http', 1), (22, 'server', 0), (22, 'express', 0);

-- Quiz 6 - QuestionID 25, 27
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(25, 'def', 1), (25, 'function', 0), (25, 'func', 0),
(27, '[]', 1), (27, '{}', 0), (27, '()', 0);

-- Quiz 7 - QuestionID 29
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(29, 'Dictionary', 1), (29, 'List', 0), (29, 'Tuple', 0);

-- Quiz 8 - QuestionID 32, 34
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(32, 'class', 1), (32, 'Class', 0), (32, 'def', 0),
(34, 'The instance of the class', 1), (34, 'The class itself', 0), (34, 'A reference', 0);

-- Quiz 9 - QuestionID 37
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(37, 'Pandas', 1), (37, 'NumPy', 0), (37, 'Matplotlib', 0);

-- Quiz 10 - QuestionID 41
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(41, 'To pass data from parent to child components', 1), (41, 'To store state', 0), (41, 'To style components', 0);

-- Quiz 11 - QuestionID 44
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(44, 'useEffect', 1), (44, 'useState', 0), (44, 'useContext', 0);

-- Quiz 12 - QuestionID 47
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(47, 'Actions', 1), (47, 'Reducers', 0), (47, 'Store', 0);

-- Quiz 13 - QuestionID 50
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(50, 'npm install', 1), (50, 'npm add', 0), (50, 'npm get', 0);

-- Quiz 14 - QuestionID 53
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(53, 'app.get()', 1), (53, 'app.request()', 0), (53, 'app.fetch()', 0);

-- Quiz 15 - QuestionID 56
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(56, 'PUT', 1), (56, 'POST', 0), (56, 'GET', 0);

-- Quiz 16 - QuestionID 59
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(59, 'DataFrame', 1), (59, 'Array', 0), (59, 'Matrix', 0);

-- Quiz 17 - QuestionID 62
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(62, 'scikit-learn', 1), (62, 'NumPy', 0), (62, 'Pandas', 0);

-- Quiz 18 - QuestionID 65
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(65, 'Seaborn', 1), (65, 'Plotly', 0), (65, 'Bokeh', 0);

-- Quiz 19 - QuestionID 68
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(68, 'SELECT', 1), (68, 'GET', 0), (68, 'FETCH', 0);

-- Quiz 20 - QuestionID 71
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(71, 'GROUP BY', 1), (71, 'ORDER BY', 0), (71, 'SORT BY', 0);

-- Quiz 21 - QuestionID 74
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(74, 'font-size', 1), (74, 'text-size', 0), (74, 'size', 0);

-- Quiz 22 - QuestionID 77
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(77, 'const', 1), (77, 'let', 0), (77, 'var', 0);

-- Quiz 23 - QuestionID 80
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(80, 'MongoDB', 1), (80, 'MySQL', 0), (80, 'PostgreSQL', 0);

-- Quiz 24 - QuestionID 83
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(83, 'map', 1), (83, 'filter', 0), (83, 'reduce', 0);

-- Quiz 25 - QuestionID 86
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(86, 'await', 1), (86, 'async', 0), (86, 'pause', 0);

-- Quiz 26 - QuestionID 89
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(89, 'render', 1), (89, 'display', 0), (89, 'show', 0);

-- Quiz 27 - QuestionID 92
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(92, 'react-redux', 1), (92, 'redux-react', 0), (92, 'connect', 0);

-- Quiz 28 - QuestionID 95
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(95, 'Event-driven', 1), (95, 'Monolithic', 0), (95, 'Layered', 0);

-- Quiz 29 - QuestionID 98
INSERT INTO QuestionOption (QuestionID, OptionText, IsCorrect) VALUES
(98, 'Containers', 1), (98, 'Virtual machines', 0), (98, 'Servers', 0);

-- ============================================
-- ASSIGNMENTS
-- ============================================

INSERT INTO Assignment (CourseID, DueDate, Title, Description, MaxScore, EstimatedTimeHours, DifficultyLevel)
VALUES
(1, '2025-12-15', 'Build a Personal Portfolio Website', 'Create a responsive personal portfolio website using HTML, CSS, and JavaScript.', 100, 8, 'medium'),
(1, '2025-12-30', 'Todo List Application', 'Build a fully functional Todo List application using vanilla JavaScript.', 100, 6, 'medium'),
(1, '2026-01-20', 'Blog Website with Node.js', 'Create a blog application using Node.js, Express, and MongoDB.', 150, 15, 'hard'),
(2, '2025-12-10', 'Python CLI Calculator', 'Build a command-line calculator using OOP principles.', 80, 4, 'easy'),
(2, '2025-12-25', 'Web Scraper Project', 'Create a web scraper using Beautiful Soup.', 100, 8, 'medium'),
(2, '2026-01-15', 'Data Analysis Dashboard', 'Build a data analysis dashboard using Flask and Plotly.', 150, 12, 'hard'),
(3, '2025-12-20', 'React Weather App', 'Build a weather application using React.', 100, 10, 'medium'),
(3, '2026-01-10', 'E-commerce Product Catalog', 'Create a product catalog with React and Redux.', 150, 16, 'hard'),
(4, '2025-12-18', 'RESTful API for Task Management', 'Build a RESTful API using Node.js and Express.', 120, 12, 'medium'),
(4, '2026-01-25', 'Real-time Chat Application', 'Create a real-time chat using Socket.io.', 150, 20, 'hard'),
(5, '2025-12-22', 'Exploratory Data Analysis Project', 'Perform EDA on a dataset using Pandas.', 100, 10, 'medium'),
(5, '2026-01-18', 'Machine Learning Classification Model', 'Build a classification model using scikit-learn.', 150, 15, 'hard'),
(6, '2025-12-12', 'Database Design Project', 'Design a database for a library management system.', 100, 8, 'medium'),
(7, '2025-12-28', 'YelpCamp Clone Project', 'Build a campground review website.', 150, 20, 'hard'),
(8, '2025-12-16', 'JavaScript Mini Projects', 'Complete 5 mini JavaScript projects.', 100, 8, 'medium'),
(9, '2026-01-12', 'Social Media Dashboard', 'Build a social media dashboard with React and Redux.', 150, 18, 'hard'),
(10, '2026-02-01', 'Microservices E-commerce Platform', 'Build a microservices-based e-commerce platform.', 200, 30, 'hard'),
(11, '2025-12-20', 'Landing Page with Form', 'Create a professional landing page.', 80, 6, 'easy'),
(15, '2025-12-14', 'JavaScript Game Project', 'Build a browser-based game.', 100, 10, 'medium'),
(19, '2025-12-30', 'Java Banking System', 'Create a banking system using Java.', 120, 12, 'medium');

GO
