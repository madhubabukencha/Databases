/**
SERIAL Type
-----------
SERIAL data type is an alias for BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE 
*/
USE dummy_tables;
DROP TABLE IF EXISTS serial_demo;
CREATE TABLE serial_demo(
    id SERIAL,
    name VARCHAR(100)
);
INSERT INTO serial_demo(name) VALUES ("Madhu Babu Kencha"), ("RAM"), ("Laxman"), ("Hanuman");
SELECT * FROM serial_demo;
SHOW CREATE TABLE serial_demo;




