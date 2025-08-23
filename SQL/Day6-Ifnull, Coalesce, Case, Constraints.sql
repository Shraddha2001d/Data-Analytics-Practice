use data1;

select *
from emp;

update emp
set ename='smith'
where sal=800;

select ename,job,deptno,sal
from emp
where job not in('manager','clerk') and deptno not in(10,20) and
sal between 1000 and 3000;

select ename
from emp
where ename like '%e_' and job='salesman' ;

/*waqtd name of employee if employee name has _ in their
name*/
select ename
from emp
where ename like '%_%';
update emp
set ename='s_mith'
where sal=800;

select ename
from emp
where ename like'%#_%' escape '#';

update emp
set ename='smi%%th'
where sal=800;


select ename from emp;

select ename
from emp
where ename like '%$%%' escape '$';

select ename,sal,comm,sal+comm,sal+ifnull(comm,1)
from emp;

/*ifnull():
"it is used eliminate the side effect using null airthametic
operation".
syntax:ifnull(argument1,argument2)
argument1:"here we write column_name which is going to return
null value".
argument2:here we write numerical value which will be substitued
if argument1 is null.*/

select coalesce(null,null,'123456');

select * from emp;

select *,
case when sal>2500 then
'high salary'
else
'low salary'
end as status
from emp;

/*CONSTRAINTS:
"THESE ARE RULES GIVEN FOR COLUMN VALIDATION". 

->TYPES OF CONSTRAINTS
1)UNIQUE:
"IT IS USED AVOID DUPLICATE/REPETED VALUE INTO THE COLUMN".

2)NOT NULL:
"IT IS USED AVOID NULL VALUE INTO THE COLUMN".

3)CHECK:
"IT IS USED FOR EXTRA VALIDATION IF CONDITION SATISFY IT WILL ACCEPT THE VALUE
ELSE IT WILL REJECT THE VALUE.

4)PRIMARY KEY:
"IT IS USED TO IDENTIFY UNIQUELY RECORDS FROM THE TABLE".
CHARACTERISTICS OF PRIMARY KEY:
1)IN A TABLE WE MUST HAVE ONLY 1 PRIMARY KEY.
2)PRIMARY KEY IS ALWAYS A COMBINATION OF UNIQUE &NOT NULL CONSTRAINT
3)PK WILL NOT ACCEPT NULL VALUE.
4)PRIMARY KEY WILL NOT ACCEPT DUPLICATE/REPETED VALUE.

5)FOREIGN KEY:
"IT IS USED TO ESTABLISH CONNECTION BETWEEN TWO OR MORE TABLES".
Characteristics of Foreign key.
1)IN A TABLE WE can HAVE multiple column_names as foreign KEY.
2)foreign KEY IS not COMBINATION OF UNIQUE &NOT NULL CONSTRAINT
3)fK WILL ACCEPT NULL VALUE.
4)fk  will KEY WILL ACCEPT DUPLICATE/REPETED VALUE.
5)for a column/attribute want to become foreign key it must be
  a primary key on its own table".
6)foreign key is also known refrential integrity constraint.

6)DEFAULT:
"it is used to assign default value for particular column."
*/


CREATE TABLE PRODUCT1
(
PID INT PRIMARY KEY,
PNAME VARCHAR(50) NOT NULL,
PRICE BIGINT NOT NULL,
QTY INT NOT NULL
);

CREATE TABLE CUSTOMER1
(
CID INT PRIMARY KEY,
CNAME VARCHAR(50) NOT NULL,
CADD VARCHAR(52) NOT NULL,
CPHNO bigint UNIQUE CHECK(LENGTH(CPHNO)=10) NOT NULL,
CITY VARCHAR(50) DEFAULT 'PUNE',
PID INT,
CONSTRAINT PID FOREIGN KEY(PID) REFERENCES PRODUCT1(PID)
);

DROP TABLE PRODUCT1;

/*SYNTAX:TO CREATE REFERENCE FOR TABLE(CHILD TABLE)
CONSTRAINT COLUMN_NAME FOREIGN KEY(COLUMN_NAME) REFERENCES PARENT_TABLE(COLUMN_NAME)
*/
