
								-- =====================================================
								-- Project Title: Online Course Enrollment Management System
								-- Description: A relational database project to manage
								-- students, courses, and enrollments.
								-- Author: Kanchana
								-- =====================================================

CREATE DATABASE course_project;
USE course_project;				#CREATING A DATABASE

CREATE TABLE students(
student_id INT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
phone_number VARCHAR(15),
email VARCHAR(50),
join_date DATE);				#CREATING A STUDENTS TABLE

SELECT * FROM students;			#Retrieves all columns and rows from the students table

INSERT INTO students VALUES
(1,'Kanchana','9876543219','kanchana@gmail.com','2024-01-01'),
(2,'Vijayakumar','9876054322','vijayakumar@gmail.com','2024-01-05'),
(3,'Karthiga','6356987425','karthiga@gmail.com','2024-01-10'),
(4,'Mahalakshmi','9865321475','mahalakshmi@gmail.com','2024-01-12'),
(5,'Madhumitha','6523148075','madhumitha@gmail.com','2024-01-15'),
(6,'Jothi','8564975216','jothi@gmail.com','2024-01-18'),
(7,'Vigneshwary','8954762132','vigneshwary@gmail.com','2024-01-20'),
(8,'Rithika','9658741234','rithika@gmail.com','2024-01-22'),
(9,'Lathika','6598742153','lathika@gmail.com','2024-01-25'),
(10,'Keerthana','9685741236','keerthana@gmail.com','2024-01-28');			

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    course_fee INT,
    duration INT
);

SELECT * FROM courses;

INSERT INTO courses VALUES
(101,'Python',5000,30),
(102,'SQL',4000,20),
(103,'Power BI',4500,15),
(104,'Excel',3000,10),
(105,'Data Science',8000,40),
(106,'Java',6000,35),
(107,'Web Development',7000,50),
(108,'Tableu',8000,30),
(109,'Full Stack',4000,20),
(110,'UI/UX Design',5000,30);

CREATE TABLE enrollments(
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enroll_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

SELECT * FROM enrollments;

INSERT INTO enrollments VALUES
(1,1,101,'2024-02-01'),
(2,1,102,'2024-02-02'),
(3,2,102,'2024-02-03'),
(4,3,101,'2024-02-04'),
(5,3,103,'2024-02-05'),
(6, 4, 104,'2024-02-06'),
(7,4,102,'2024-02-07'),
(8,5,101,'2024-02-08'),
(9,5,105,'2024-02-09'),
(10,6,103,'2024-02-10');


SELECT COUNT(*) FROM students;


SELECT c.course_name, COUNT(e.enroll_id) AS total_students
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
GROUP BY c.course_name
ORDER BY total_students DESC;


SELECT s.student_name, COUNT(e.course_id) AS courses_joined
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
GROUP BY s.student_name;


SELECT SUM(c.course_fee) AS total_revenue
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id;


SELECT s.student_name, COUNT(e.course_id) AS total_courses
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
GROUP BY s.student_name
HAVING COUNT(e.course_id) > 1;