-- JOINS
USE CODEGNAN;

CREATE TABLE EMPDETAILS(
	ID INT,
    EMPNAME VARCHAR(100),
    SALARY INT
);
CREATE TABLE MSTATUS(
	ID INT,
    EMPNAME VARCHAR(100),
    MSTATUS VARCHAR(30)
);
INSERT INTO EMPDETAILS VALUES (1,"JOHN",40000),(2,"ALEX",25000),(3,"SIMON",43000);
INSERT INTO MSTATUS VALUES (1,"JOHN","MARRIED"),(3,"SIMON","MARRIED"),(4,"STELLA","UNMARRIED");
SELECT * FROM EMPDETAILS;
SELECT * FROM MSTATUS;
-- INNER JOIN 
SELECT EMPDETAILS.ID,EMPDETAILS.EMPNAME,SALARY,MSTATUS FROM EMPDETAILS INNER JOIN MSTATUS 
WHERE EMPDETAILS.ID = MSTATUS.ID;
SELECT EMPDETAILS.ID,EMPDETAILS.EMPNAME,SALARY,MSTATUS FROM EMPDETAILS JOIN MSTATUS 
WHERE EMPDETAILS.ID = MSTATUS.ID;
-- LEFT JOIN
SELECT EMPDETAILS.ID,EMPDETAILS.EMPNAME,SALARY,MSTATUS FROM EMPDETAILS LEFT JOIN MSTATUS 
ON EMPDETAILS.ID = MSTATUS.ID;
-- RIGHT JOIN
SELECT EMPDETAILS.ID,EMPDETAILS.EMPNAME,SALARY,MSTATUS FROM EMPDETAILS RIGHT JOIN MSTATUS 
ON EMPDETAILS.ID = MSTATUS.ID;
-- SELF JOIN
CREATE TABLE SELFEXAMPLE(
	C1 VARCHAR(10),
    NAME VARCHAR(10),
    C2 VARCHAR(10)
);
INSERT INTO SELFEXAMPLE VALUES ("BLUE","JOHN","RED"),("GREEN","ALEX","BLUE"),("RED","SIMON","GREEN");
SELECT * FROM SELFEXAMPLE;
SELECT A.NAME,B.NAME FROM SELFEXAMPLE AS A , SELFEXAMPLE AS B WHERE A.C1 = B.C2;
-- CROSS JOIN
CREATE TABLE TABLE11(
	HAIRTYPE VARCHAR(10)
);
CREATE TABLE TABLE22(
	HAIRSTYLE VARCHAR(10)
);
INSERT INTO TABLE11 VALUES ("A"),("B"),("C");
INSERT INTO TABLE22 VALUES ("STRAIGHT"),("CURLY");
SELECT * FROM TABLE11;
SELECT * FROM TABLE22;
SELECT HAIRSTYLE,HAIRTYPE FROM TABLE11 CROSS JOIN TABLE22;
SELECT HAIRSTYLE,HAIRTYPE FROM TABLE11,TABLE22;
