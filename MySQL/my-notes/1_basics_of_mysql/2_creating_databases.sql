/**
Creating databases
*/
-- If database already present then it will through an error
CREATE DATABASE IF NOT EXISTS dummy_tables;

-- To list existing databasae
SHOW DATABASES;
-- To drop if database already exists
DROP DATABASE IF EXISTS XYZ;
-- Creating database after verifying it's presence
CREATE DATABASE IF NOT EXISTS XYZ;
-- To use XYZ table to create table inside it, database name is not case sensitive
USE xyz;



