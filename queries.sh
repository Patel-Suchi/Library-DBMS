#!/bin/sh

sqlplus64 "username/password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

SELECT
        isbn,
        book_title,
        category,
        rental_price,
        status,
        author,
        publisher
    FROM
        books
    WHERE
        publisher = 'Penguin_Books';

SELECT
        isbn,
        book_title,
        category,
        rental_price,
        status,
        author,
        publisher
FROM
        books
WHERE
        status = 'Available';
        
SELECT
        employ_name,
        employ_id,
        position,
        salary
FROM
        Employee
ORDER BY employ_id  ASC;
    
SELECT
        customer_id,
        customer_name,
        customer_address,
        registration_date
FROM
        CUSTOMER
Where
        customer_id>100;

SELECT DISTINCT    issued_book_name, issue_date
FROM  issue_status;

CREATE VIEW library_members AS
SELECT CUSTOMER_NAME, CUSTOMER_ID
FROM CUSTOMER
ORDER BY CUSTOMER_ID ASC;
SELECT * FROM library_members;

CREATE VIEW adventure_category AS
SELECT BOOK_TITLE, RENTAL_PRICE, AUTHOR
FROM BOOKS
WHERE CATEGORY = 'Adveture_fiction' AND STATUS = 'Available';
 
SELECT * FROM adventure_category;

SELECT COUNT(ISBN), AUTHOR
FROM BOOKS
GROUP BY AUTHOR;

EOF

