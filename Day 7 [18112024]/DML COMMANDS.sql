USE CODEGNAN;

CREATE TABLE EMPLOYEES(
	ROLLNO INT PRIMARY KEY,
    NAME VARCHAR(100) NOT NULL,
    SUBJECT VARCHAR(15),
    HEIGHT FLOAT
);

ALTER TABLE EMPLOYEES ADD BRANCH CHAR(5);
DESCRIBE EMPLOYEES;
CREATE TABLE CSEEMPLOYEES(
	ROLL INT PRIMARY KEY,
    CNAME VARCHAR(100),
    SALARY INT
); 
#DQL - SELECT 
SELECT * FROM EMPLOYEES;
#DML - INSERT
#INSERT - SINGLE ROW (VALUES)
INSERT INTO EMPLOYEES VALUES (101,"SAI VARDHAN","PYTHON",5.78,"CSE");
INSERT INTO EMPLOYEES VALUES (102,"VARDHAN","HTML",5.88,"CSE");
INSERT INTO EMPLOYEES (ROLLNO,NAME,SUBJECT,BRANCH) VALUES (103,"MALLI","JAVA","CSE");
INSERT INTO EMPLOYEES (ROLLNO,NAME,HEIGHT,BRANCH) VALUES (104,"SUDHEER",7.12,"CSE");
#INSERT - MULTIPLE ROWS (VALUES)
INSERT INTO EMPLOYEES VALUES (105,"PRASANNA","APTI",6.12,"NONTH"),(106,"ZAMEER","SOFTSKILLS",5.11,"NONTH");
INSERT INTO EMPLOYEES (ROLLNO,NAME,SUBJECT,BRANCH) VALUES (107,"SAMUEL","PYTHON","CSE"),(108,"MANO","GD","NONTH");
#INSERT - ROWS (SELECT)
INSERT INTO CSEEMPLOYEES (ROLL,CNAME) 
SELECT ROLLNO,NAME FROM EMPLOYEES WHERE BRANCH = "CSE";
SELECT * FROM CSEEMPLOYEES;
#DML - UPDATE
UPDATE EMPLOYEES SET SUBJECT = "JAVA" WHERE ROLLNO = 104;
SELECT * FROM EMPLOYEES;
UPDATE EMPLOYEES SET HEIGHT = 5.8 WHERE ROLLNO = 103;
SELECT * FROM CSEEMPLOYEES;
SET SQL_SAFE_UPDATES = 0;
UPDATE CSEEMPLOYEES SET SALARY = 0;

#DML - DELETE
SELECT * FROM EMPLOYEES;
DELETE FROM EMPLOYEES WHERE HEIGHT <= 6.0;
SELECT * FROM EMPLOYEES;
SELECT * FROM CSEEMPLOYEES;
DELETE FROM CSEEMPLOYEES;

#TRUNCATE
SELECT * FROM EMPLOYEES;
TRUNCATE TABLE EMPLOYEES;

#DROP
DROP TABLE CSEEMPLOYEES;
SELECT * FROM CSEEMPLOYEES;







