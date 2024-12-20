USE CODEGNAN;

CREATE TABLE PRODUCTS (
	PID INT PRIMARY KEY AUTO_INCREMENT,
    PNAME VARCHAR(10),
    PRICE INT,
    QUANTITY INT
);

INSERT INTO PRODUCTS (PNAME,PRICE,QUANTITY) VALUES ("IPHONE 11",35000,5),("IPHONE 12",45000,3),("IPHONE 13",60000,3);

INSERT INTO PRODUCTS (PNAME,PRICE) VALUES ("SAMSUNG",30000),("NOKIA",15000),("XIOMI",12000);
 
SELECT * FROM PRODUCTS;
#ARITHEMETIC
#ADDITION
UPDATE PRODUCTS SET QUANTITY = QUANTITY + 4 WHERE PID=2;
SELECT * FROM PRODUCTS;
#SUBTRACTION
UPDATE PRODUCTS SET QUANTITY = QUANTITY - 2 WHERE PID = 3;
SELECT * FROM PRODUCTS;
#MULTIPLICATION
SELECT *,(PRICE*QUANTITY) AS BUDGET FROM PRODUCTS;
#DIVISION
SELECT *,(PRICE*QUANTITY)/QUANTITY AS AVERAGE FROM PRODUCTS;
#MODULO
UPDATE PRODUCTS SET QUANTITY = QUANTITY + 1 WHERE PID = 3;
SELECT * FROM PRODUCTS;
SELECT * FROM PRODUCTS WHERE (QUANTITY%2)=0;
#LOGICAL
#AND
SELECT * FROM PRODUCTS WHERE PRICE > 30000 AND QUANTITY < 3;
#OR
SELECT * FROM PRODUCTS WHERE PRICE > 30000 OR QUANTITY < 3;
#NOT
SELECT * FROM PRODUCTS WHERE NOT PRICE > 30000;
#COMPARISION
#GREATER THAN
SELECT * FROM PRODUCTS WHERE PRICE > 30000;
#LESS THAN
SELECT * FROM PRODUCTS WHERE PRICE <30000;
#GREATER THE OR EQUALS TO
SELECT * FROM PRODUCTS WHERE PRICE >= 30000;
#LESS THAN OR EQUALS TO
SELECT * FROM PRODUCTS WHERE PRICE <= 30000;
#EQUALS TO
SELECT * FROM PRODUCTS WHERE QUANTITY = 2;
#NOT EQUALS TO
SELECT * FROM PRODUCTS WHERE PRICE != 30000;
#NULL
#IS NULL
SET SQL_SAFE_UPDATES = 0;
UPDATE PRODUCTS SET QUANTITY = 0 WHERE QUANTITY IS NULL;
#IS NOT NULL
SELECT * FROM PRODUCTS WHERE QUANTITY IS NOT NULL;
#SPECIAL
#BETWEEN
SELECT * FROM PRODUCTS WHERE PRICE BETWEEN 25000 AND 45000;
#IN
SELECT * FROM PRODUCTS WHERE QUANTITY IN (2,3,7);
#CASE
SELECT *,
	CASE
		WHEN QUANTITY>5 THEN PRICE*0.10
        WHEN QUANTITY>3 THEN PRICE*0.05
        WHEN QUANTITY>1 THEN PRICE*0.03
        ELSE 0
	END AS DISCOUNT
FROM PRODUCTS