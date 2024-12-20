-- REFERENTIAL ACTIONS
-- 	   CASCADE
--     SET NULL
--     SET DEFAULT
--     RESTRICT

-- SUB QUERIES
	-- SCALAR
	-- SINGLE ROW
    -- MULTIPLE COLUMN
    -- MULTI ROW
    -- CORELATED

-- QUESTION - 1
SELECT 
		* 
FROM 
	ORDERS 
WHERE 
	SALESMAN_ID = (SELECT 
						SALESMAN_IF 
					FROM 
						SALESMAN 
					WHERE 
						NAME='PAUL ADAM');
-- QUESTION 1
SELECT 
	ORD_NO,PRUC_AMT,ORDER_DATE,CUSTOMER_ID,SALESMAN_ID 
FROM 
	ORDERS
JOIN 
	SALAESMAN 
ON 
	ORDERS.SALESMAN_ID = SALESMAN.SALESMAN_ID 
WHERE
	SALESMAN.NAME = 'PAUL ADAM';

-- QUESTION  2
SELECT
	*
FROM 
	ORDERS 
WHERE 
	SALESMAN_ID 
IN
	(SELECT SALESMAN_ID FROM SALESMAN WHERE CITY="LONDON");
    
-- QUESTION - 2
SELECT 
	ORD_NO,PURCH_AMT,ODR_DATE,CUSTOMER_ID,SALESMAN_ID
FROM 
	ORDERS
JOIN 
	SALESMAN
ON 
	SALESMAN.SALESMAN_ID = ORDERS.SALESMAN_ID
WHERE
	SALESMAN.CITY = "LONDON";
    
-- QUESTION 3
SELECT 
	*
FROM
	ORDERS
WHERE 
	PURCH_AMT > (SELECT 
					AVG(PURCH_AMT)
				FROM 
					ORDERS
				WHERE
					ORD_DATE = "2012-10-10");
                    
-- QUESTION 4
SELECT 
	COMMISSION 
FROM 
	SALESMAN 
WHERE 
	CITY="PARIS";
    
-- QUESTION 5

-- QUESTION 5
SELECT
	SALESMAN_ID,SALESMAN_NAME
FROM 
	SALESMAN AS A
WHERE 
	(SELECT 
		COUNT(*) 
	FROM 
		CUSTOMERS 
	WHERE
		SALESMAN_ID = A.SALESMAN_ID) > 1;

-- QUESTION - 5
SELECT 
	SALESMAN_ID,SALESMAN_NAME
FROM 
	SALESMAN 
WHERE
	SALESMAN_ID 
IN
	(SELECT 
		SALESMAN_ID
	FROM
		CUSTOMERS 
	WHERE
		COUNT(SALESMAN_ID) > 1);
-- QUESTION - 5
SELECT
	SALESMAN_ID,SALESMAN_NAME
FROM 
	SALESMAN 
JOIN
	CUSTOMERS
ON
	SALESMAN.SALESMAN_ID = CUSTOMERS.SALESMAN_ID
WHERE
	COUNT(CUSTOMERS.SALESMAN_ID)>1;
    
-- QUESTION - 5
SELECT
	SALESMAN_ID,SALESMAN_NAME
FROM 
	SALESMAN AS S
JOIN
	CUSTOMERS AS C
ON
	S.SALESMAN_ID = C.SALESMAN_ID
WHERE
	COUNT(C.SALESMAN_ID)>1;
		


