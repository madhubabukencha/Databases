/**
In this file we can learn basic usage of date time
*/

USE dummy_tables;
DROP TABLE IF EXISTS temp;
CREATE TABLE temp(
    id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY,
    -- creation_date TIMESTAMP,
    -- In earlier versions above code was supported and updated the time stamp automatically
    -- We should be code in newer versions
    creation_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    name VARCHAR(233)
);
INSERT INTO temp(name) VALUES ("Madhu Babu Kencha");
INSERT INTO temp(name) VALUES ("James Bond");
INSERT INTO temp(name) VALUES ("Prabas");
SELECT * FROM temp;
SELECT NOW();
SHOW VARIABLES LIKE "%time_zone%";