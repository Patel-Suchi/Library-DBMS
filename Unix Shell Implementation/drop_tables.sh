#!/bin/sh
sqlplus64 "username/password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

DROP TABLE return_status;
DROP TABLE issue_status;
DROP TABLE branch;
DROP TABLE customer;
DROP TABLE employee;
DROP TABLE books;


EOF
