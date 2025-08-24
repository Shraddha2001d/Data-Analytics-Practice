/*FUNCTION:
"IT IS BLOCK OF CODE OR LIST OF INSTRUCTIONS
WHICH PERFORM SOME SPECIFIC TASK".

->TYPES OF FUNCTIONS
  1)USER DEFINED FUNCTION
  2)BUILT-IN FUNCTIONS
      1)Single Row functions/scalar function
      2)Multi row functions/aggregate functions/
        group function
           1)MAX()
           2)MIN()
           3)SUM()
           4)AVG()
           5)COUNT()
->THERE ARE 3 MAIN COMPONENTS OF FUNCTION
1)FUNCTION_NAME
2)NO_OF_ARGUMENTS(NO OF INPUTS)
3)RETURN TYPE
*/
USE DATA1; 
  
  select *from emp;
  
/*WAQTD MAXIMUM SALARY OF EMPLOYEE */
SELECT  ENAME,MAX(SAL)
FROM EMP;

/*WAQTD MAXIMUM SALARY GIVEN TO MANAGER*/
SELECT MAX(SAL)
FROM EMP
WHERE JOB='MANAGER';

/*WAQTD MINIMUM SALARY GIVEN TO DEPTNO 10*/
SELECT MIN(SAL)
FROM EMP
WHERE DEPTNO=10;

/*WAQTD TOTAL SALARY GIVEN TO ANALYST*/
SELECT SUM(SAL)
FROM EMP
WHERE JOB='ANALYST';

/*WAQTD AVERAGE SALARY GIVEN TO EMPLOYEE*/
SELECT AVG(SAL)
FROM EMP;

/*WAQTD NUMBER OF EMPLOYEE WORKING AS SALESMAN*/
SELECT COUNT(*)
FROM EMP
WHERE JOB='SALESMAN';

SELECT MAX(SAL,SAL*12)
FROM EMP;
-- wrong

select max( )
from emp;

SELECT ENAME
FROM EMP
WHERE MAX(SAL)=5000;
-- Invalid use of group function

SELECT MAX(SAL),MIN(SAL),SUM(SAL),AVG(SAL),COUNT(*),DEPTNO
FROM EMP;
-- we can't use multiple group by functions without group by function

/*CHARACTERISTICS OF MULTI-ROW FUNCTION
1)MRF() WILL ACCEPT ONLY ONE ARGUMENT i.e 
MRF(colum_name/expression);
2)MRF() IGNORES NULL VALUES.
3)MRF() CANNOT BE USED IN WHERE CLAUSE.
4)ALONG WITH MRF() WE CANNOT PASS ANY OTHER COLUMN_NAME
AS ARGUMENT.
5)COUNT() IS THE ONLY MRF() WHICH ACCEPTS * AS AN ARGUMENT
*/
 
/*SINGLE ROW FUNCTIONS/SCALR FUNCTIONS

1)LENGTH():
"IT IS USED TO COUNT THE NUMBER OF CHARACTERS PRESENT
IN GIVEN STRING".
SYNTAX:LENGTH('STRING');
2)UPPER():
"IT IS USED CONVERT LOWER CASE LETTERS TO UPPERCASE".
SYNTAX:UPPER('STRING');
3)lower():
"it is used to convert uppercase letters to lowercase"
syntax:lower('string');

/*REVERSE:
"IT IS USED TO REVERSE THE GIVEN STRING".
SYNTAX:REVERSE('STRING');
*/

SELECT LENGTH('PUNE');
SELECT UPPER('rahul');
select lower('RAHUL');
SELECT REVERSE('RANJAN');

/*WAQTD TO CHECK WHETHER EMPLOYEE NAME IS PALINDROME
OR NOT*/
SELECT ENAME
FROM EMP
WHERE ENAME=REVERSE(ENAME);

UPDATE EMP
SET ENAME='NITIN'
WHERE SAL=800;

/*MOD():
"IT IS USED FIND MODULUS/REMAINDER OF A GIVEN NUMBER".
SYNTAX:MOD(M,N)
*/

















































































































































































































































































































































































































































































































































































































































































































































































































































































































/*WAQTD EVEN NUMBER OF EMPLOYEE NUMBER*/
SELECT EMPNO
FROM EMP
WHERE MOD(EMPNO,2)=0;

SELECT PI();
SELECT SQRT(9);
SELECT POWER(2,3);
SELECT NOW();

SELECT substr('RAHUL',1,3);
SELECT SUBSTR('RAHUL',1);
SELECT SUBSTR('RAHUL',4,2);
SELECT SUBSTR('RAHUL',3,6);
SELECT SUBSTR('RAHUL',-4,2);
SET GLOBAL log_bin_trust_function_creators=1;



create table customer12
(
cid int primary key,
order_id int not null,
product_id int,
cadd varchar(50)
);
create table product12
(
product_id int primary key,
pname varchar(50) not null,
price int
);

create table swiggy
(
order_id int primary key,
food_name varchar(50),
price int,
qty int
);

alter table customer12
add constraint product_id foreign key(product_id) references product12(
product_id);

drop table product12;

alter table customer12
add constraint order_id foreign key(order_id) references swiggy(order_id); 
