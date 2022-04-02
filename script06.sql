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
CREATE TABLE ANSWER1
AS SELECT NNumber,Deposit
FROM STUDENT
ORDER BY NNumber DESC;


PROMPT ANSWER1
SELECT * FROM ANSWER1;

-- ANSWER2
CREATE TABLE ANSWER2
AS SELECT NNumber
FROM STUDENT
WHERE Deposit > 100
ORDER BY NNumber ASC;

PROMPT ANSWER2
SELECT * FROM ANSWER2;

-- ANSWER3
CREATE TABLE TEMP1
AS SELECT STUDENT.NetID AS NetID,DOG.Breed AS Breed
FROM STUDENT,DOG
WHERE STUDENT.NNumber = DOG.NNumber;

CREATE TABLE ANSWER3
AS SELECT TEMP1.NetID AS student1NetID,TEMP1_2.NetID AS student2NetID
FROM TEMP1,TEMP1 TEMP1_2
WHERE TEMP1.NetID <> TEMP1_2.NetID AND TEMP1.Breed = TEMP1_2.Breed
ORDER BY student1NetID ASC, student2NetID ASC;


PROMPT ANSWER3
SELECT * FROM ANSWER3;

-- ANSWER4
CREATE TABLE TEMP2
AS SELECT BITES.Biter AS SerialNumber
FROM BITES,BITES BITES2
WHERE BITES.Biter = BITES2.Biter AND BITES.Bitee = '2' AND BITES2.Bitee = '3';

CREATE TABLE ANSWER4
AS SELECT TEMP2.SerialNumber,DOG.NNumber
FROM DOG,TEMP2
WHERE TEMP2.SerialNumber = DOG.SerialNumber
ORDER BY SerialNumber ASC, NNumber ASC;


PROMPT ANSWER4
SELECT * FROM ANSWER4;

-- ANSWER5
CREATE TABLE ANSWER5
AS SELECT DISTINCT NetID, NNumber
FROM STUDENT
MINUS (
    SELECT DISTINCT NetID, S.NNumber
    FROM STUDENT S, DOG D
    WHERE S.NNumber = D.NNumber AND CAST(DOG.SerialNumber AS INT) BETWEEN 1 AND 1000
)
ORDER BY NetID ASC, NNumber ASC;

PROMPT ANSWER5
SELECT * FROM ANSWER5;

-- ANSWER6
CREATE TABLE ANSWER6
AS SELECT BITES.Biter AS SerialNumberA,BITES2.Bitee AS SerialNumberC
FROM BITES,BITES BITES2
WHERE BITES.Bitee = BITES2.Biter
ORDER BY SerialNumberA ASC, SerialNumberC ASC;

PROMPT ANSWER6
SELECT * FROM ANSWER6;

-- ANSWER7
CREATE TABLE TEMP3
AS SELECT BITES.Biter AS SerialNumber
FROM BITES
WHERE BITES.Bitee = '4';

CREATE TABLE TEMP4
AS SELECT BITES.Bitee AS SerialNumber
FROM BITES,BITES BITES2
WHERE BITES.Biter = '5' AND BITES2.Biter = '6' AND BITES.Bitee = BITES2.Bitee;

CREATE TABLE TEMP5
AS SELECT SerialNumber FROM TEMP3
UNION 
SELECT SerialNumber TEMP4;

CREATE TABLE ANSWER7
AS SELECT DISTINCT DOG.SerialNumber AS SerialNumber,DOG.NNumber AS NNumber
FROM DOG,TEMP5
WHERE TEMP5.SerialNumber = DOG.SerialNumber
ORDER BY SerialNumber ASC, NNumber ASC;


PROMPT ANSWER7
SELECT * FROM ANSWER7;



spool off
