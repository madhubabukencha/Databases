/**
ARITHMETIC OPERATORS
--------------------
In MySQL, Arthematic operations are processed as per PEDMAS rules
P- Parentheses, E- Exponents, D- Division, M- Multiplication, A- Addition, S- Substraction
*/
SELECT 4 + 5 AS ADDITION;
SELECT 5 - 6 AS SUBSTRACTION;
SELECT 7 * 10 AS MULTIPLICATION;
SELECT 56 / 4 AS DIVISION;
SELECT 5 / 0 AS NULL_DIVISION;
-- To integer division
SELECT 7 DIV 4 AS "INTEGER DIVISION"; 
SELECT 11 % 2 AS REMAINDER;
SELECT 11 - 22 % 4 - 67 + 22 * 4 AS EQUATION_1;
SELECT (11 - 22) % 4 - (67 + 22) * 4  AS EQUATION_2;
-- Below comments execution syntax only support in MySQL not in any other SQL
SELECT 1 + /*! 2 + 3 */ AS "COMMENT EXE";
 
 