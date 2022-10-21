/**
SOUNDEX converts an alphanumeric string to a four-character code that is
based on how the string sounds when spoken in English. . The SOUNDEX algorithm 
returns the initial letter, followed by a number representing the sound of the
rest of the word after vowel sounds have been removed. Standard SOUNDEX is four
characters long
*/
SELECT SOUNDEX("BILL"), SOUNDEX("BELL");
SELECT SOUNDEX("BALL"), SOUNDEX("BOWL");
SELECT SOUNDEX("ACTING"), SOUNDEX("ACTION");
-- We also have similar function like
SELECT "BILL" SOUNDS LIKE "BOIL", "BILL" SOUNDS LIKE "PHIL";
