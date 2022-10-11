USE dummy_tables;
DROP TABLE IF EXISTS case_table;
CREATE TABLE case_table (
    name VARCHAR(255),
    Age INTEGER
);
INSERT INTO case_table VALUES ("Madhu Babu Kencha", 26), ("Charles", 56), ("Martin", 15), ("James", NULL);
SELECT name, CASE
    WHEN age >= 18 THEN "Eligible for voting"
    WHEN age < 18 THEN "Not eligible for voting"
    ELSE "Age not mentioned"
    END AS "Voting Eligibility" FROM case_table;
    

