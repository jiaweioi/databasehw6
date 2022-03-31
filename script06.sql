-- Replace zk1 with your NetID

-- execute data setup script
@dataSetupScript06.sql

spool spool06.txt

PROMPT jz4721
/*

YOU START YOUR ANSWERS AFTER THE END OF THIS COMMENT BLOCK

ANSWER0 is an example to show you the structure of what you need to produce, unless instructed otherwise in the assignment. Please read carefully what you are asked to do.

Insert your solution for ANSWERX between the string -- ANSWERX and the string PROMPT ANSWERX

You DO NOT have to run the "spool on" comand yourself. This script file does that for you.

The spool06.txt file generated when you run this script will be a part of your submission.

*/

-- Answer 0 represents a sample quert that uses the temp table TEMP0 just to demonstrate the usage of temp table.
-- ANSWER0
CREATE TABLE TEMP0
AS SELECT *
FROM DOG;

CREATE TABLE ANSWER0
AS SELECT DISTINCT Breed
FROM TEMP0
ORDER BY Breed DESC;


PROMPT ANSWER0
SELECT * FROM ANSWER0;

-- ANSWER1


PROMPT ANSWER1
SELECT * FROM ANSWER1;

-- ANSWER2


PROMPT ANSWER2
SELECT * FROM ANSWER2;

-- ANSWER3


PROMPT ANSWER3
SELECT * FROM ANSWER3;

-- ANSWER4


PROMPT ANSWER4
SELECT * FROM ANSWER4;

-- ANSWER5


PROMPT ANSWER5
SELECT * FROM ANSWER5;

-- ANSWER6


PROMPT ANSWER6
SELECT * FROM ANSWER6;

-- ANSWER7


PROMPT ANSWER7
SELECT * FROM ANSWER7;



spool off
