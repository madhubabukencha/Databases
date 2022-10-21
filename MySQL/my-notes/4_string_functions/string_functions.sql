USE world;
-- Fetching all country names which has 'a' as second character
-- Underscore(_), matches single character
-- Percentage(%), matches 0 or more character
SELECT name FROM country WHERE name LIKE "_a%" ORDER BY name;
-- RLIKE helps to pass regular expression
-- Fectching all country names ending with 'y'
SELECT name FROM country WHERE name RLIKE "y$" ORDER BY name;
-- Another regex example
SELECT name FROM country WHERE NAME RLIKE "[xy][ai]" ORDER BY name;
-- STRCMP() function in MySQL is used to compare two strings. If both of 
-- the strings are same then it returns 0, if the first argument is smaller
-- than the second according to the defined order it returns -1 and it returns
-- 1 when the second one is smaller the first one
SELECT name FROM country WHERE STRCMP(name, "France") <= 0 ORDER BY name;
-- To concat strings
SELECT CONCAT("I", " ", "Love", " ", name) FROM COUNTRY ORDER BY name;
SELECT CONCAT('MADHU BABU KENCHA', " ", 26) AS INFO;