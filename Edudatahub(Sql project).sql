CREATE DATABASE `Edudatahub`;
use Edudatahub;
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    date_of_birth DATE,
    enrollment_date DATE
);
CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    course_description TEXT,
    course_credits INT
);
CREATE TABLE Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
CREATE TABLE Faculty (
    faculty_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15)
);
INSERT INTO Students (first_name, last_name, email, phone_number, date_of_birth, enrollment_date)
VALUES
('John', 'Doe', 'johndoe@example.com', '555-1234', '2000-05-15', '2022-09-01'),
('Jane', 'Smith', 'janesmith@example.com', '555-2345', '1999-08-22', '2021-09-01'),
('Alice', 'Johnson', 'alicej@example.com', '555-3456', '2001-02-10', '2023-01-15'),
('Bob', 'Brown', 'bobbrown@example.com', '555-4567', '2000-11-05', '2020-09-01'),
('Charlie', 'Davis', 'charlied@example.com', '555-5678', '1998-04-20', '2022-03-05'),
('Eve', 'Miller', 'evemiller@example.com', '555-6789', '2002-06-18', '2023-02-10'),
('Grace', 'Wilson', 'gracew@example.com', '555-7890', '1999-12-30', '2022-07-01'),
('David', 'Moore', 'davidm@example.com', '555-8901', '2001-01-25', '2020-06-01'),
('Hannah', 'Taylor', 'hannahtaylor@example.com', '555-9012', '2003-03-15', '2021-08-01'),
('James', 'Anderson', 'jamesa@example.com', '555-1122', '1997-07-07', '2020-10-05'),
('Lily', 'Thomas', 'lilythomas@example.com', '555-2233', '2000-09-30', '2022-05-15'),
('Daniel', 'Jackson', 'danielj@example.com', '555-3344', '1998-10-10', '2021-06-15'),
('Sophia', 'White', 'sophiaw@example.com', '555-4455', '2001-05-13', '2022-08-25'),
('Michael', 'Harris', 'michaelh@example.com', '555-5566', '1999-01-30', '2023-03-01'),
('Isabella', 'Clark', 'isabellac@example.com', '555-6677', '2002-12-05', '2021-12-12'),
('Jack', 'Lewis', 'jackl@example.com', '555-7788', '2000-03-22', '2020-11-10'),
('Amelia', 'Young', 'amelia@example.com', '555-8899', '1997-08-11', '2022-01-17'),
('Lucas', 'Allen', 'lucasa@example.com', '555-9900', '2003-07-25', '2023-04-01'),
('Mia', 'King', 'miak@example.com', '555-1010', '1999-11-09', '2022-02-20'),
('William', 'Scott', 'williams@example.com', '555-2121', '2001-09-17', '2021-09-01');
select * from Students;
INSERT INTO Courses (course_name, course_description, course_credits)
VALUES
('Mathematics 101', 'An introductory course to algebra and calculus.', 3),
('Computer Science 101', 'Introduction to computer programming and problem solving.', 4),
('Physics 101', 'Basic principles of mechanics, energy, and thermodynamics.', 3),
('Chemistry 101', 'Fundamental principles of chemistry including organic and inorganic chemistry.', 3),
('Biology 101', 'Introduction to biology, covering cells, genetics, and evolution.', 4),
('History 101', 'Study of world history, with emphasis on modern civilizations.', 3),
('Psychology 101', 'Introduction to the study of human behavior and mental processes.', 3),
('Economics 101', 'Basic principles of economics, including supply and demand and economic systems.', 3),
('Literature 101', 'Survey of classic literature and the development of literary genres.', 3),
('Philosophy 101', 'Introduction to philosophical thought and key historical philosophers.', 3),
('Engineering 101', 'Basic principles of engineering, focusing on mechanical and electrical fields.', 4),
('Political Science 101', 'Introduction to political theory, systems, and governance.', 3),
('Sociology 101', 'Study of human society, including social behaviors and structures.', 3),
('Art History 101', 'Introduction to the history of art and the development of art movements.', 3),
('Music 101', 'Overview of music theory, history, and different genres of music.', 3),
('Business 101', 'Fundamentals of business, including management, marketing, and finance.', 4),
('Accounting 101', 'Introduction to financial accounting, including balance sheets and income statements.', 3),
('Anthropology 101', 'Study of human societies, cultures, and their development.', 3),
('Astronomy 101', 'Introduction to the study of the universe, stars, and galaxies.', 3);
select * from Courses;
INSERT INTO Enrollments (student_id, course_id, enrollment_date)
VALUES
(1, 1, '2022-09-01'),
(1, 2, '2022-09-01'),
(2, 3, '2021-09-01'),
(2, 4, '2021-09-01'),
(3, 5, '2023-01-15'),
(3, 6, '2023-01-15'),
(4, 7, '2020-09-01'),
(4, 8, '2020-09-01'),
(5, 9, '2022-03-05'),
(5, 10, '2022-03-05'),
(6, 11, '2023-02-10'),
(6, 12, '2023-02-10'),
(7, 13, '2022-07-01'),
(7, 14, '2022-07-01'),
(8, 15, '2020-06-01'),
(8, 16, '2020-06-01'),
(9, 17, '2021-08-01'),
(9, 18, '2021-08-01'),
(10, 19, '2022-05-15'),
(10, 20, '2022-05-15');
select * from Enrollments;
INSERT INTO Faculty (first_name, last_name, department, email, phone_number)
VALUES
('John', 'Doe', 'Computer Science', 'johndoe@university.com', '555-1001'),
('Jane', 'Smith', 'Mathematics', 'janesmith@university.com', '555-1002'),
('Alice', 'Johnson', 'Biology', 'alicejohnson@university.com', '555-1003'),
('Bob', 'Brown', 'Physics', 'bobbrown@university.com', '555-1004'),
('Charlie', 'Davis', 'Chemistry', 'charliedavis@university.com', '555-1005'),
('Eve', 'Miller', 'Psychology', 'evemiller@university.com', '555-1006'),
('Grace', 'Wilson', 'History', 'gracewilson@university.com', '555-1007'),
('David', 'Moore', 'Political Science', 'davidmoore@university.com', '555-1008'),
('Hannah', 'Taylor', 'Sociology', 'hannahtaylor@university.com', '555-1009'),
('James', 'Anderson', 'Philosophy', 'jamesanderson@university.com', '555-1010'),
('Lily', 'Thomas', 'Literature', 'lilythomas@university.com', '555-1011'),
('Daniel', 'Jackson', 'Economics', 'danieljackson@university.com', '555-1012'),
('Sophia', 'White', 'Art History', 'sophiawhite@university.com', '555-1013'),
('Michael', 'Harris', 'Music', 'michaelharris@university.com', '555-1014'),
('Isabella', 'Clark', 'Business', 'isabellaclark@university.com', '555-1015'),
('Jack', 'Lewis', 'Engineering', 'jacklewis@university.com', '555-1016'),
('Amelia', 'Young', 'Accounting', 'ameliayoung@university.com', '555-1017'),
('Lucas', 'Allen', 'Anthropology', 'lucasallen@university.com', '555-1018'),
('Mia', 'King', 'Astronomy', 'miaking@university.com', '555-1019'),
('William', 'Scott', 'Architecture', 'williamscott@university.com', '555-1020');
select * from Faculty;

#How many students are enrolled in the system?#
SELECT COUNT(*) FROM Students;

#List all students with their email and phone numbers.#
SELECT first_name, last_name, email, phone_number FROM Students;

#How many students are enrolled in a specific course (e.g., 'Mathematics 101')?#
SELECT COUNT(*) FROM Enrollments WHERE course_id = (SELECT course_id FROM Courses WHERE course_name = 'Mathematics 101');

#List all courses that a specific student is enrolled in.#
 SELECT Courses.course_name FROM Enrollments INNER JOIN Courses ON Enrollments.course_id = Courses.course_id WHERE Enrollments.student_id = 1;
 
 #Get a list of all courses along with their descriptions and credits.#
 SELECT course_name, course_description, course_credits FROM Courses;
 
 #How many courses are being offered in the system?#
SELECT COUNT(*) FROM Courses;

#List the names of all students enrolled in a specific course (e.g., 'Computer Science 101').#
SELECT Students.first_name, Students.last_name FROM Enrollments INNER JOIN Students ON Enrollments.student_id = Students.student_id
 WHERE Enrollments.course_id = (SELECT course_id FROM Courses WHERE course_name = 'Computer Science 101');
 
 #Find the average number of credits per course.#
SELECT AVG(course_credits) FROM Courses;

#Which students are enrolled in multiple courses?#
SELECT student_id, COUNT(*) FROM Enrollments GROUP BY student_id HAVING COUNT(*) > 1;

#List the courses along with the total number of students enrolled in each course.#
SELECT Courses.course_name, COUNT(Enrollments.student_id) AS total_enrolled FROM Enrollments INNER JOIN Courses ON
 Enrollments.course_id = Courses.course_id GROUP BY Courses.course_name;
 
 #Show the details of a student by their ID.#
 SELECT * FROM Students WHERE student_id = 1;
 
 #What is the latest course that has been added to the database?#
 SELECT * FROM Courses ORDER BY course_id DESC LIMIT 1;
 
 #Find the total number of students who enrolled in courses in a specific year (e.g., 2023).#
 SELECT COUNT(DISTINCT student_id) FROM Enrollments WHERE YEAR(enrollment_date) = 2023;
 
 #List all faculty members and their courses.#
 SELECT Faculty.first_name, Faculty.last_name, Courses.course_name FROM Faculty INNER JOIN Courses ON Faculty.faculty_id = Courses.faculty_id;
 
 #How many students are enrolled in each department?#
 SELECT department, COUNT(student_id) FROM Students GROUP BY department;
 
 #Update a student's phone number in the database.#
 UPDATE Students SET phone_number = 'new_phone_number' WHERE student_id = 1;
 
 #Delete a student's enrollment record from a specific course.#
 DELETE FROM Enrollments WHERE student_id = 1 AND course_id = 101;
 
 #List all students born after 2000.#
 SELECT * FROM Students WHERE date_of_birth > '2000-01-01';
 
 #Find students who have been enrolled for more than 1 year.#
 SELECT * FROM Students WHERE DATEDIFF(CURDATE(), enrollment_date) > 365;
 
 #Get the total number of students in each course, ordered by course name.#
 SELECT Courses.course_name, COUNT(Enrollments.student_id) AS total_enrolled FROM Enrollments INNER JOIN Courses ON 
 Enrollments.course_id = Courses.course_id
GROUP BY Courses.course_name ORDER BY Courses.course_name;