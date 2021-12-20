#!/bin/sh

sqlplus64 "s352pate/Moon5009@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

CREATE VIEW library_members AS
SELECT CUSTOMER_NAME, CUSTOMER_ID
FROM CUSTOMER
ORDER BY CUSTOMER_ID ASC;
SELECT * FROM library_members;

CREATE VIEW ISSUED_BOOKS AS
SELECT ISSUED_CUST,ISSUED_BOOK_NAME
FROM issue_status
ORDER BY ISSUED_CUST ASC;
SELECT ISSUED_CUST ,
ISSUED_BOOK_NAME   FROM issued_books;

SELECT CUSTOMER.CUSTOMER_ID, CUSTOMER_NAME
FROM  issue_status, CUSTOMER
WHERE issue_status.ISSUED_CUST = CUSTOMER.CUSTOMER_ID,
ORDER BY issue_status.ISSUED_CUST ASC;

CREATE VIEW adventure_category AS
SELECT BOOK_TITLE, RENTAL_PRICE, AUTHOR
FROM BOOKS
WHERE CATEGORY = 'Adveture_fiction' AND STATUS = 'Available';
 
SELECT * FROM adventure_category;


CREATE VIEW staff_members AS
SELECT EMPLOY_NAME, EMPLOY_ID
FROM EMPLOYEE
WHERE POSITION = 'Library Staff'
ORDER BY EMPLOY_ID ASC;
 
SELECT * FROM staff_members;


SELECT CAST(AVG(EMPLOYEE.SALARY) AS INT) AS avg_salary FROM EMPLOYEE;


SELECT COUNT(ISBN), AUTHOR
FROM BOOKS
GROUP BY AUTHOR;


EOF

