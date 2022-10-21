/**
In this notebook we will learn how to trim and pad a string
*/
USE world;
-- Here we are trimming around a searching string
SELECT name FROM country WHERE name LIKE TRIM("   India   ");
-- We also do LTRIM and RTRIM
SELECT CONCAT(":", LTRIM("   Madhu    "), ":") as "LTRIM";
SELECT CONCAT(":", RTRIM("   Madhu    "), ":") as "RTRIM";
-- We will pad a string with some other string
SELECT LPAD("madhu", "10", "*") as "LPAD",  RPAD("madhu", "10", "*") as "RPAD";
