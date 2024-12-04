#EASY
#P-1
SELECT * FROM EMPLOYEES WHERE SALARY > 5000;
#P-2
SELECT COUNT(*) FROM EMPLOYEES;
SELECT COUNT(*) AS TOTAL_CUOUNT FROM EMPLOYEES;
#P-3
SELECT CONCAT(FIRST_NAME," ",LAST_NAME) FROM EMPLOYEES;
SELECT CONCAT_WS(" ",FIRST_NAME,LAST_NAME) FROM EMPLOYEES;
SELECT CONCAT(FIRST_NAME,LAST_NAME) FROM EMPLOYEES;
#P-4
SELECT * FROM EMPLOYEES WHERE DEPARTMENT != 'HR';
SELECT * FROM EMPLOYEES WHERE NOT DEPARTMENT = 'HR';
SELECT * FROM EMPLOYEES WHERE NOT DEPARTMENT LIKE "HR";
SELECT * FROM EMPLOYYES WHERE DEPARTMENT NOT LIKE "HR";
#P-5
SELECT UPPER(NAME) FROM EMPLOYEES;
SELECT UPPER(NAME) AS UPPERCASE FROM EMPLOYEES;
#MEDIUM
#P-6
SELECT MAX(SALARY),MIN(SALARY) FROM EMPLOYEES;
#P-7
SELECT DEPARTMENT,SUM(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT;
#P-8
SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 3000 AND 8000;
#P-9
SELECT NAME,LENGTH(NAME) FROM EMPLOYEES;
SELECT NAME,LENGTH(NAME) AS NAME_LENGTH FROM EMPLOYEES;
#P-10
SELECT * FROM EMPLOYEES WHERE NAME LIKE "%John%";
#HARD
#p=11
SELECT SUM(SALARY) FROM EMPLOYEES WHERE DEPARTMENT IN ("IT","FINANCE");
SELECT SUM(SALARY) FROM EMPLOYEES WHERE DEPARTMENT = "IT" OR DEPARTMENT = "FINANCE";
SELECT DEPARTMENT,SUM(SALARY) FROM EMPLPOYEES GROUP BY DEPARTMENT HAVING DEPARTMENT IN ("IT","FINANCE");
#P-12
SELECT COUNT(*) FROM EMPLOYEES 
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES);
#P-13
SELECT DEPARTMENT,AVG(SALARY) FROM EMPLOYEES
GROUP BY DEPARTMENT
HAVING AVG(SALARY) > 5000;
#P-14
SELECT NAME,REVERSE(NAME) FROM EMPLOYEES;
SELECT REVERSE(NAME) FROM EMPLOYEES;
#P-15
SELECT * FROM EMPLOYEES WHERE SALARY LIKE "%0";
SELECT * FROM EMPLOYEES WHERE SALARY%10=0;




