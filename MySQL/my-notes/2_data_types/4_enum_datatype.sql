/**
ENUM TYPE
---------
It is a string object in MySQL. It allows us to choose value(s) from a list where this list is created
at the time of creating table. It uses numeric indexs to represent string which are inside list. It is mostly
useful where the column may have a limited set of specified possible values.
*/
USE dummy_tables;
DROP TABLE IF EXISTS enum_table;
CREATE TABLE enum_table(
    id INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    sizes ENUM("small", "medium", "large", "extra large")
);
-- Inserting data using index
INSERT INTO enum_table(sizes) VALUES (1);
INSERT INTO enum_table(sizes) VALUES (4);
-- Inserting data directly using string
INSERT INTO enum_table(sizes) VALUES ("large");
-- It will throw an erro if you try to insert any new value
-- INSERT INTO enum_table(sizes) VALUES ("extra large, medium");
SELECT * FROM enum_table;