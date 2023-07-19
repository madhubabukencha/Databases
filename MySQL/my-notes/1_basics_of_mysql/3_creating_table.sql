/**
This file gives basic information about tables operations. It also gives an idea about DDL commands

DDL (Data Definition Language): It is used to build and modify the
structure of your tables and other objects in the database

NOTE: One table contains only one primary key
*/

-- Table will be created inside dummy_tables database
USE dummy_tables;
-- To show existing table
SHOW TABLES;
-- To drop table
DROP TABLE IF EXISTS students;
-- To create tables
CREATE TABLE IF NOT EXISTS students (
    std_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    age INT,
    gender VARCHAR(10) NOT NULL
)  ENGINE = INNODB;
-- To get description about the table
DESC students;
-- To adding new column to table by altering table
ALTER TABLE students add address VARCHAR(200);
DESC students;
-- To modify size of address field
ALTER TABLE students modify name VARCHAR(100);
DESC students;
-- To delete column from table
ALTER TABLE students DROP COLUMN gender;
DESC students;