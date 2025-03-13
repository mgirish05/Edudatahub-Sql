Edudatahub MySQL Project

The Edudatahub is a MySQL-based database system designed to manage the records of students, courses, enrollments, and faculty in an educational institution. It helps keep track of students' academic information, the courses they are enrolled in, the faculty teaching the courses, and various statistical insights into the education system.

Features

- Student Management:
  - Tracks student information such as name, email, phone number, date of birth, and enrollment date.
  - Enables easy retrieval of student data, including contact details and academic records.
  
- Course Management:
  - Stores information about the courses offered, including course names, descriptions, and credit values.
  - Helps in tracking the number of students enrolled in each course and the course’s associated faculty.
  
- Enrollment Management:
  - Manages student enrollments in courses, capturing the date of enrollment.
  - Facilitates queries to track how many students are enrolled in specific courses or how many courses a student is enrolled in.
  
- Faculty Management:
  - Keeps track of faculty members, including their names, departments, contact information, and the courses they are teaching.
  
- Statistical Queries:
  - Supports various queries that provide insights into the academic system, such as the number of students in each department, the average number of credits per course, the total number of students enrolled in courses in a specific year, etc.

Technologies

- MySQL:  
  MySQL is the relational database management system (RDBMS) used to store and manage data related to students, courses, enrollments, and faculty.

- SQL:  
  SQL (Structured Query Language) is used to define the database schema, insert records, and query the database for specific insights.

Features and Insights

- Student Enrollment:
  - Find out how many students are enrolled in the system, or filter students by specific criteria, such as birth dates or enrollment duration.
  
- Course Information:
  - Get detailed information about courses, including descriptions, credit values, and enrollments.
  
- Faculty Assignment:
  - View which faculty members are teaching specific courses and manage their details.

- Data Queries:
  - Get the total number of students enrolled in specific courses, count students in each department, and analyze student data by various conditions (e.g., birth year, enrollment duration).

- Data Management:
  - Update student contact information or remove student enrollments as necessary.
  
How to Run

Prerequisites

- MySQL:  
  Ensure that MySQL is installed and running on your system. You will need to set up a MySQL client (like MySQL Workbench or PhpMyAdmin) to interact with the database.

Steps to Run

1. Clone the Repository:  
   Clone this repository to your local machine to access the SQL schema and data files.

2. Set Up the Database:  
   Create the `Edudatahub` database and populate it with the tables for students, courses, enrollments, and faculty.

3. Insert Data:  
   Add sample data for students, courses, and faculty members, and populate the enrollments table to simulate real-world academic scenarios.

4. Run Queries:  
   You can run predefined queries or create your own to analyze various aspects of the academic records. Some common queries include counting the total number of students or listing courses a specific student is enrolled in.

Example Queries

- Total Students:  
  Get the total number of students enrolled in the system.

- Student Contact Info:  
  Retrieve the first name, last name, email, and phone number for all students.

- Enrollments per Course:  
  Count how many students are enrolled in specific courses.

- Courses per Student:  
  List all courses a specific student is enrolled in.

- Average Course Credits:  
  Find the average number of credits per course across the system.

- Department-wise Enrollment:  
  Track how many students are enrolled in each department.

- Update Records:  
  Modify a student’s phone number or delete enrollment records if necessary.

Future Enhancements

- Student Portal:  
  A web-based portal could be developed where students can log in to view their courses, grades, and faculty information.

- Automated Enrollment:  
  Implement an automated system where students can enroll in courses based on availability and their academic progress.

- Advanced Reporting:  
  Integrate detailed reporting and analytics features to gain insights into course popularity, student performance, and faculty workload.

- Integration with Learning Management Systems (LMS):  
  Integrate the system with popular LMS platforms for seamless data transfer between the institution's academic systems.
