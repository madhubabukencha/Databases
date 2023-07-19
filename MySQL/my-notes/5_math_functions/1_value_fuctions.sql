/**
This query file contains mathematical functions
*/

-- The ABS() function returns the absolute (positive) value of a number
SELECT ABS(14.456), ABS(-56.332);
-- The CEILING() function returns the smallest integer value that is bigger than or equal to a number
SELECT CEILING(12.34), CEIL(45);
-- The floor function is the function that takes as input a real number x, 
-- and gives as output the greatest integer less than or equal to x
SELECT FLOOR(12.9);
-- The ROUND() function rounds a number to a specified number of decimal places.
SELECT ROUND(17.2345, 2);
-- The TRUNCATE() function truncates a number to the specified number of decimal places
SELECT TRUNCATE(123.233454, 2), TRUNCATE(123.234, 0), TRUNCATE(12334.234, -2);

