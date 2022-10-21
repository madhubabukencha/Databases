/**
In this MySQL file, we learn about substrings
SUBSTRING(string, start, length)
*/
-- Selecting all character from 6th position. SUBSTR is an alternative method
SELECT SUBSTRING("My name is Madhu", 6) AS "SUBSTRING", SUBSTR("My name is Madhu", 6) as "SUBSTR";
-- To select pertical part of string
SELECT SUBSTRING("I am from India", 3, 7) AS "SUBSTRING";
-- To select last last
SELECT SUBSTRING("I am from India", -5) AS "SUBSTRING";
-- To select string based on delimitar
SELECT SUBSTRING_INDEX("I love my country", " ", 2) AS "SUBSTRING_INDEX";
SELECT SUBSTRING_INDEX("I love my country", " ", -2) AS "SUBSTRING_INDEX";