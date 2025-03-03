/**
###### Primary Key and Foreign Key ######
- Primary Keys ensure uniqueness and identify each row. They are the backbone of a table.
- Foreign Keys establish relationships between tables. They link rows in one table to rows
  in another table based on the primary key of the referenced table.
- Foreign Keys help maintain data integrity. For example, you can't enroll a student in a 
  class if that student doesn't exist in the students table (because the student_id in 
  student_enrollment must reference a valid student_id in students).
*/

CREATE DATABASE IF NOT EXISTS MYKEYSTABLES;
USE MYKEYSTABLES;

-- Creating student table
DROP TABLE IF EXISTS STUDENTS;
CREATE TABLE IF NOT EXISTS STUDENTS(
	STUDENT_ID INT PRIMARY KEY AUTO_INCREMENT,
    FRIST_NAME VARCHAR(200),
    LAST_NAME VARCHAR(200),
    EMAIL VARCHAR(200)
);
INSERT INTO STUDENTS (FRIST_NAME, LAST_NAME, EMAIL) VALUES
("Alice", "Smith", "alice.smith@email.com"),
("Bob", "Johnson",	"bob.johnson@email.com"),
("Charlie", "Brown", "charlie.brown@email.com");
SELECT * FROM STUDENTS;

-- Creating class table
DROP TABLE IF EXISTS CLASS;
CREATE TABLE IF NOT EXISTS CLASS (
	CLASS_ID INT PRIMARY KEY AUTO_INCREMENT,
    CLASS_NAME VARCHAR(200),
    TEACHER_NAME VARCHAR(200)
);
INSERT INTO CLASS (CLASS_NAME, TEACHER_NAME) VALUES
("Math 101", "Mr. Jones"),
("Science 201", "Ms. Davis");
SELECT * FROM CLASS;

-- Creating referenc with foreign key
DROP TABLE IF EXISTS STUDENT_ENROLLMENT;
CREATE TABLE IF NOT EXISTS STUDENT_ENROLLMENT(
	ENROLLMENT_ID INT PRIMARY KEY AUTO_INCREMENT,
    STUDENT_ID INT,
    CLASS_ID INT,
    ENROLLMENT_DATE VARCHAR(200),
    FOREIGN KEY (STUDENT_ID) REFERENCES STUDENTS (STUDENT_ID),
    FOREIGN KEY (CLASS_ID) REFERENCES CLASS (CLASS_ID)
);

-- If you pass any id which not in student_id and class_id then it will through an error
INSERT INTO STUDENT_ENROLLMENT (STUDENT_ID, CLASS_ID, ENROLLMENT_DATE) VALUES
(1, 2, "2025-02-01"),
(2, 1, "2025-01-13"),
(3, 1, "2024-12-31");

SELECT * FROM STUDENT_ENROLLMENT;
