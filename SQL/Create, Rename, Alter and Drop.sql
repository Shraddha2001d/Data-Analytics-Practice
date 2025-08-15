create database data1;
show databases; -- list of databases
use data1;-- single line comment 
/*
multiple lines comment
*/

/* syntax:TO CREATE TABLE
Create table table_name
(
column_name1 Datatype,
column_name2 Datatype,
column_name3 Datatype,
   :          :
column_nameN  Datatype
);
*/
create table product
(
pid int,
pname varchar(50),
price decimal(8,2),
quantity int,
mfg_date date
);
create table Flipkart
(
orderid int,
customer_name varchar(50),
customer_address varchar(100),
product_name varchar(50),
product_price decimal(9,3),
quantity int,
rating decimal(5,2),
mfg_date date,
exp_date date,
delivery_date_time datetime
);
desc flipkart;-- structure of table
desc product;
/*Rename:
"it is used rename the existing table name to new table name".
syntax: rename table existing_table_name to new_table_name;
*/
rename table flipkart to amazon;
rename table amazon to myntra;
desc myntra;

/*ALTER:"IT IS USED TO MODIFY THE STRUCTURE OF TABLE". 
SYNTAX:TO ADD THE COLUMN
ALTER TABLE TABLE_NAME
ADD COLUMN_NAME DATATYPE;
*/
ALTER TABLE MYNTRA
ADD PINCODE CHAR(6);
DESC MYNTRA;
/*SYNTAX:TO DROP COLUMN
ALTER TABLE TABLE_NAME
DROP COLUMN COLUMN_NAME;
*/
ALTER TABLE MYNTRA
DROP COLUMN RATING;
DESC MYNTRA;

/*SYNTAX:TO RENAME THE COLUMN_NAME
ALTER TABLE TABLE_NAME
RENAME COLUMN EXISTING_COLUMN_NAME TO NEW_COLUMN_NAME;
*/
ALTER TABLE MYNTRA
RENAME COLUMN ORDERID TO ID;
DESC MYNTRA;

ALTER TABLE MYNTRA
RENAME COLUMN CUSTOMER_NAME TO CNAME;

/*SYNTAX:TO MODIFY THE DATATYPES
ALTER TABLE TABLE_NAME
MODIFY COLUMN_NAME DATATYPE;
*/
alter table myntra
modify orderid char(5);

desc myntra;
alter table myntra
modify id bigint;

/*Drop:
"it is used to remove the table from database".
syntax:
drop table table_name;
*/
drop table myntra;
desc myntra;