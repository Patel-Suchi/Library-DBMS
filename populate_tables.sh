#!/bin/sh

sqlplus64 "s352pate/Moon5009@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

INSERT INTO books (ISBN, book_title, category, rental_price, status, author, publisher) 
VALUES (978-0-74-452502-1, 'Don_Quixote', 'Adventure_fiction', 8, 'Available', 'Miguel_de_Cervantes', 'Penguin_Books');
INSERT INTO books (ISBN, book_title, category, rental_price, status, author, publisher) 
VALUES (978-1-42-180819-2, 'A_Tale_of_Two_Cities', 'Historical_fiction', 6, 'Available', 'Charles_Dickens', 'Penguin_Books');
INSERT INTO books (ISBN, book_title, category, rental_price, status, author, publisher) 
VALUES (978-0-26-110368-9, 'The_lord_of_the_Rings', 'Fantasy_fiction', 1, 'Not_Available', 'JRR_Tolkien', 'Allen_and_Unwin');
INSERT INTO books (ISBN, book_title, category, rental_price, status, author, publisher) 
VALUES (978-3-16-148410-0, 'Real','Adventure_fiction', 8, 'Available', 'Ryan_Jean', 'Penguin_Books');
INSERT INTO books (ISBN, book_title, category, rental_price, status, author, publisher) 
VALUES (978-0-04-823273-1, 'The_Hobbit', 'Fantasy_fiction', 10, 'Available', 'JRR_Tolkien', 'George_Allen_and_Unwin');

INSERT INTO employee (employ_id, employ_name, position, salary) 
VALUES (000001,'Hani Asim', 'Branch Manager', 50000);
INSERT INTO employee (employ_id, employ_name, position, salary) 
VALUES (000034,'Hakeem Olajuwon', 'Library Security', 35000);
INSERT INTO employee (employ_id, employ_name, position, salary) 
VALUES (000007,'John Proctor', 'Library Staff', 20000);
INSERT INTO employee (employ_id, employ_name, position, salary) 
VALUES (897985,'Joe Goldberg', 'Library Staff', 20000);
INSERT INTO employee (employ_id, employ_name, position, salary) 
VALUES (000013,'M.D. Luffy', 'Library Staff', 20000);

INSERT INTO customer  (customer_id,customer_name,customer_address,registration_date) 
VALUES (100,'John Smith','17 Zane Lane',TO_DATE('21-07-22', 'YY-MM-DD'));
INSERT INTO customer  (customer_id,customer_name,customer_address,registration_date) 
VALUES (150,'Lola Tran','30 Resident Street',TO_DATE('21-07-23', 'YY-MM-DD'));
INSERT INTO customer  (customer_id,customer_name,customer_address,registration_date) 
VALUES (200,'Raul Garcia','100 Auberg Court',TO_DATE('21-07-24', 'YY-MM-DD'));
INSERT INTO customer  (customer_id,customer_name,customer_address,registration_date) 
VALUES (500,'Alex Ien','230 Victoria Place',TO_DATE('21-07-25', 'YY-MM-DD'));


INSERT INTO branch (branch_no,manager_id,branch_address,contact_no) 
VALUES (1000,50,'123 Chester Street',905-123-4567);
INSERT INTO branch (branch_no,manager_id,branch_address,contact_no)  
VALUES (750,100,'103 Zane Lane',416-034-2934);
INSERT INTO branch (branch_no,manager_id,branch_address,contact_no) 
VALUES (499,150,'39 Private Drive',416-046-4392);
INSERT INTO branch (branch_no,manager_id,branch_address,contact_no) 
VALUES (250,450,'29 Divon Court',904-930-9323);

Insert into issue_status (issue_id, issued_cust, issued_book_name, issue_date, isbn_book) 
VALUES (51, 100, 'Don_Quixote',TO_DATE('21-08-25', 'YY-MM-DD'),978-0-74-452502-1);
Insert into issue_status (issue_id, issued_cust, issued_book_name, issue_date, isbn_book) 
VALUES (52, 150, 'A_Tale_of_Two_Cities', TO_DATE('21-08-26', 'YY-MM-DD'),978-1-42-180819-2);
Insert into issue_status (issue_id, issued_cust, issued_book_name, issue_date, isbn_book) 
VALUES (53, 200, 'The_lord_of_the_Rings',TO_DATE('21-08-27', 'YY-MM-DD'),978-0-26-110368-9);
Insert into issue_status (issue_id, issued_cust, issued_book_name, issue_date, isbn_book) 
VALUES (55, 500, 'Real', TO_DATE('21-08-28', 'YY-MM-DD'), 978-3-16-148410-0);

INSERT INTO return_status (return_id, return_cust, returned_book_name, return_date, isbn_book2)
VALUES(61, 100, 'Don_Quixote', TO_DATE('21-09-25', 'YY-MM-DD'),978-0-74-452502-1); 
INSERT INTO return_status (return_id, return_cust, returned_book_name, return_date, isbn_book2)
VALUES(62, 150, 'A_Tale_of_Two_Cities', TO_DATE('21-09-26', 'YY-MM-DD'),978-1-42-180819-2);
INSERT INTO return_status (return_id, return_cust, returned_book_name, return_date, isbn_book2)
VALUES(63, 200, 'The_lord_of_the_Rings', TO_DATE('21-09-27', 'YY-MM-DD'),978-0-26-110368-9); 
INSERT INTO return_status (return_id, return_cust, returned_book_name, return_date, isbn_book2)
VALUES(64, 500, 'Real', TO_DATE('21-09-28', 'YY-MM-DD'),978-3-16-148410-0);



EOF
