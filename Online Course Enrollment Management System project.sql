                                                          #PROJECT
                                                          
#TITLE : Online Course Enrollment Management System

CREATE DATABASE course_project;
USE course_project;				#CREATING A DATABASE

CREATE TABLE students(
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
phone_number VARCHAR(15),
email VARCHAR(50),
join_date DATE);				#CREATING A STUDENTS TABLE

SELECT * FROM students;			#Retrieves all columns and rows from the students table

INSERT INTO students VALUES
(1,'Karthiga','9876543219','karthiga@gmail.com','2024-01-01'),
(2,'Anu','9876054322','anu@gmail.com','2024-01-05'),
(3,'Ravi','6356987425','ravi@gmail.com','2024-01-10'),
(4,'Priya','9865321475','priya@gmail.com','2024-01-12'),
(5,'Arun','6523148075','arun@gmail.com','2024-01-15'),
(6,'Divya','8564975216','divya@gmail.com','2024-01-18'),
(7,'Suresh','8954762132','suresh@gmail.com','2024-01-20'),
(8,'Mani','9658741234','mani@gmail.com','2024-01-22'),
(9,'Meena','6598742153','meena@gmail.com','2024-01-25'),
(10,'Vikram','9685741236','vikram@gmail.com','2024-01-28');		

DROP TABLE students;


