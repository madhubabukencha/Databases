/**
MySQL provides various data types to store string data. We learn some of the data types
in this chapter.
* CHARACTER STRINGS: Used to store text base strings
* VARIABLE STRINGS: Used to store the string which does not fixed length
* BINARY STRINGS: Used to store non text based data
* LARGE OBJECTS: Used to store large documents and media files
*/
USE dummy_tables;
DROP TABLE IF EXISTS dictionary;
CREATE TABLE dictionary(
   letter CHAR(1),
   word VARCHAR(255),
   meaning LONGTEXT
);
INSERT INTO dictionary(letter, word, meaning)
 VALUES ("A", "Aberration", "disorder, defect, disease"),
		("E", "Evation", "Avoidance, dodging, eluding, sidestepping");
SELECT * FROM dictionary;

