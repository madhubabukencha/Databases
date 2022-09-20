/**
In this MySQL file, we are going learn how to use SELECT statement
I'm using default databases that comes with MySQL
*/
SHOW DATABASES;
-- We are using world database
USE world;
-- listing tables in world databases
SHOW TABLES;
-- print literal string
SELECT "Hello World";
-- Performing calculations
SELECT 100-5;
-- Selecting all rows and columns from country table
SELECT * FROM country;
-- Sorting the rows by "Name" filed
SELECT * FROM country ORDER BY "Name";
-- Selecting specific columns
SELECT `Name`, `LifeExpectancy` AS "Life Expe" FROM country ORDER BY "Name";
-- We can also use functions
SELECT count(*) FROM country;
-- To select certain number of rows
SELECT * FROM country LIMIT 10;
-- Start from 5th row and select 5 rows after that
SELECT * FROM country LIMIT 5, 5;
