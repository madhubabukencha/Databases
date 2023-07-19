/**
FULL OUTER JOIN OR OUTER JOIN
-----------------------------
FULL OUTER JOIN (aks OUTER JOIN) join are the joins that returns matched values and unmatched values from either or both
tables.
*/
-- Creating joins database
CREATE DATABASE IF NOT EXISTS MYJOINS;
USE MYJOINS;

-- Creating student table
CREATE TABLE IF NOT EXISTS Student(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200)
);
-- Inserting data into students table
INSERT INTO Student (name) VALUES ("Madhu"), ("Kiran"), ("Ravi"), ("Martin");
SELECT * FROM Student;

-- Creating book table
CREATE TABLE Book(
	book_num INT,
    student_id INT,
    book_name VARCHAR(200)
);

INSERT INTO Book VALUES (1234, 1, "The Life of Pie"),
(3452, 2, "Bahubali"),
(4562, null, "King of Percia"),
(2342, 200, "The handsome boy");

SELECT * FROM Book;
-- > We don't have direct full join in mysql, So we replicating similar functionality using union
SELECT * FROM Student LEFT JOIN Book ON Student.id=Book.student_id
UNION
SELECT * FROM Student RIGHT JOIN Book ON Student.id=Book.student_id;