/**
In this file, we will seee how to delete a row and entire data from table
*/
USE dummy_tables;
-- SHOWING TABLE
SELECT * FROM test;
-- Dropping a row where state language is marati
DELETE FROM test WHERE state_lang="Marati";
SELECT * FROM test;
-- Deleting entire data from table
DELETE FROM test;
SELECT * FROM test;
