/**
Creating table inside a database
*/
USE dummy_tables;
CREATE TABLE IF NOT EXISTS students (
    std_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    age INT,
    gender VARCHAR(10) NOT NULL
)  ENGINE = INNODB;