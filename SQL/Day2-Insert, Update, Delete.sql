use data1;

create table customer
(
cid int,
cname varchar(50),
cadd varchar(500),
price decimal(8,1),
delivery_date date 
);

desc customer;

rename table customer to cust;

desc cust;

alter table cust
add city varchar(50);

desc cust;

alter table cust
rename column cname to customer_name;

desc cust;

alter table cust
drop column delivery_date;

alter table cust
modify cid char(10);

desc cust;

drop table customer;

/*Insert:
"it is user insert records into the table".
syntax:
insert into table_name values(v1,v2......vn);
*/
desc product;
insert into product values(1,"mobile",10000,1,'2025-07-21');

select *
from product;

desc product;

insert into product values(2,'laptop',50000.25,1,'2025-07-21');

select *
from product;

insert into product values(3,'watch',5000,3,'2025-06-21'),
                          (4,'ipad',55000,1,'2025-01-01'),
                          (5,'iphone',65000,1,'2024-12-31');

select * from product;


use data1;

/*UPDATE:
"IT IS USED TO MODIFY EXISTING VALUE WITH THE NEW VALUE".
SYNTAX:
UPDATE TABLE_NAME
SET COLUMN_NAME1=VALUE1,COLUMN_NAME2=VALUE2,COLUMN_NAME3=VALUE3.....COLUMN_NAMEN=VALUEN
WHERE <CONDITION>;
*/
SELECT * FROM PRODUCT;

UPDATE PRODUCT
SET PRICE=25000
WHERE PNAME='MOBILE';

UPDATE PRODUCT
SET PID=9,PNAME='CAMERA',PRICE=45000,QUANTITY=5
WHERE MFG_DATE='2025-07-31';


SELECT * FROM PRODUCT;

UPDATE PRODUCT
SET PNAME='MAGGIE',PRICE=15;


SELECT * FROM PRODUCT;

UPDATE PRODUCT
SET PNAME='MOBILE'
WHERE PID=3;

UPDATE PRODUCT
SET PNAME='LAPTOP',PRICE=50000;


SELECT * FROM PRODUCT;

/*DELETE:
"DELETE IS USED TO DELETE PARTICULAR RECORD/ROW FROM THE TABLE".
SYNTAX:
DELETE FROM TABLE_NAME WHERE<CONDITION>;
*/
DELETE FROM PRODUCT WHERE PID=3;
DELETE FROM PRODUCT WHERE PNAME='LAPTOP';
