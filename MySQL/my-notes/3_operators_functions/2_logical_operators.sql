USE world;
-- Return True only if two operands returns True
SELECT (23 < 34) AND (34 > 12) AS "AND";
-- Return True if one of operand is True
SELECT (23 > 34) OR (34 > 12) AS "OR";
-- Using OR (||) operator on strings, return False becuase non of the string returning True or False
SELECT 'string1' || 'string2';
-- Return True only if one of the operand is False
SELECT (23 < 34) XOR (34 > 12) AS "XOR";
-- MySQL IS operator tests a value against a Boolean value
SELECT "Madhu" IS FALSE;
-- In MySQL other than 0 everything else treated as True
SELECT 5 IS TRUE;
