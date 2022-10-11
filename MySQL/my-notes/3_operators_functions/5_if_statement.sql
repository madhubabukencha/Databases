USE dummy_tables;
DROP TABLE IF EXISTS case_table;
CREATE TABLE case_table (
    name VARCHAR(255),
    Age INTEGER
);
INSERT INTO case_table VALUES ("Madhu Babu Kencha", 26), ("Charles", 56), ("Martin", 15), ("James", NULL);
SELECT name, age,  IF(age >= 18, "Eligible for voting", "Not eligible for voting") AS "Voting Validity" FROM case_table;
    

