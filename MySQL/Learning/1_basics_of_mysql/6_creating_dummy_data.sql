/**
Creating dummy data. This data we are going to for deleting chapter
*/
USE dummy_tables;
-- Dropping a table if already exists
DROP TABLE IF EXISTS test;
-- Creating a table
CREATE TABLE test(
  id INT AUTO_INCREMENT PRIMARY KEY,
  state char(100),
  state_lang char(100)
) ENGINE=INNODB;

INSERT INTO test (state, state_lang) VALUES ("Andhra Pradesh", "Telugu");
INSERT INTO test (state, state_lang) VALUES ("Tamilnadu", "Tamil");
INSERT INTO test (state, state_lang) VALUES ("Karnataka", "Kannada");
INSERT INTO test (state, state_lang) VALUES ("Maharastra", "Marati");

SELECT * FROM test;