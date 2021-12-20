#!/bin/sh

sqlplus64 "username/password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
CREATE TABLE books 
( 
	ISBN int not null,
	book_title varchar(50) not null, 
	category varchar(50) not null, 
	rental_price int not null,
	status varchar(50),
	author varchar(50) not null, 
	publisher varchar(50) not null, 
	primary key(ISBN)
);

CREATE TABLE employee 
( 
	employ_id int not null,
	employ_name varchar(50) not null, 
	position varchar(30) not null, 
	salary int not null,
	primary key(employ_id)
);

CREATE TABLE customer 
( 
	customer_id int not null,
	customer_name varchar(50), 
	customer_address varchar(100) not null, 
	registration_date date not null,
	primary key(customer_id)
);

CREATE TABLE branch 
( 
	branch_no int not null,
	manager_id int not null, 
	branch_address varchar(100) not null, 
	contact_no int not null,
	primary key(branch_no)
);

CREATE TABLE issue_status 
( 
	issue_id int not null,
	issued_cust int not null, 
	issued_book_name varchar(50) not null,
	issue_date date not null, 
	isbn_book int not null,
	primary key(issue_id),
	foreign key(isbn_book) references BOOKS(ISBN),
	foreign key(issued_cust) references customer(customer_id)
);

CREATE TABLE return_status 
( 
	return_id int not null,
	return_cust int not null,
	returned_book_name varchar(50) not null,
	return_date date not null, 
	isbn_book2 int not null,
	primary key(return_id),
	foreign key(isbn_book2) references BOOKS(ISBN), 
	foreign key(return_cust) references customer(customer_id)
);

EOF
