/**
A table in database created using CREATE keyword
*/
USE dummy_tables;
DROP TABLE IF EXISTS dummy;
CREATE TABLE dummy (
    name VARCHAR(255),
    age INT,
    country VARCHAR(255),
    state CHAR(2),
    zipcode CHAR(6)
) engine = INNODB;

-- To know basic info about table
DESCRIBE dummy;

-- To know more about a tables in database
SHOW TABLE STATUS;

-- To know the command used for creating table
SHOW CREATE TABLE dummy;