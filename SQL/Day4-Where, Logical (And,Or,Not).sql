
/*selection:
"it process of retriving data by selecting both 
rows &columns is known as selection".
syntax:
SELECT * /[DISTINCT] COLUMN_NAME/EXPRESSION[ALIAS]
FROM TABLE_NAME
WHERE <FILTER_CONDITION>;

WHERE CLAUSE/KEYWORD:
"IT IS USED TO FILTER THE RECORDS". 
->ALWAYS WHERE CLAUSE WILL EXECUTE ROW_BY_ROW.
*/
USE DATA1;

/*WAQTD NAME OF EMPLOYEE IF EMPLOYEE IS
 WORKING IN DEPTNO 10*/
 
 SELECT ENAME,DEPTNO
 FROM EMP
 WHERE DEPTNO=10;
 
 /*WAQTD NAME&SALARY OF EMPLOYEE IF EMPLOYEE IS
 GETTING SALARY MORE THAN 1000*/
 SELECT ENAME,SAL
 FROM EMP
 WHERE SAL>1000;
 
 /*WAQTD NAME &JOB OF EMPLOYEE IF EMPLOYEE IS
 WORKING AS ANALYST*/
 SELECT ENAME,JOB
 FROM EMP
 WHERE JOB='ANALYST';
 
 /*WAQTD DETAILS OF EMPLOYEE IF EMPLOYEES ANNUALSALARY
 IS MORE THAN 12000*/
 SELECT *,SAL*12 AS ANNUALSAL
 FROM EMP
 WHERE SAL*12>12000;
 
 /*WAQTD NAME &HIREDATE OF EMPLOYEE IF
 EMPLOYEE IS HIRED AFTER 1981*/
 SELECT ENAME,HIREDATE
 FROM EMP
 WHERE HIREDATE>'1981-12-31';
 
 /*WAQTD DETAILS OF EMPLOYEE IF EMPLOYEE IS HIRED
 BEFORE 1982*/
 SELECT *
 FROM EMP
 WHERE HIREDATE<'1982-01-01';
 
 /*WAQTD NAME,SAL,JOB,COMM OF EMPLOYEE IF EMPLOYEE
 IS GETTING COMMISSION OF RS 1400*/
 SELECT ENAME,SAL,JOB,COMM
 FROM EMP
 WHERE COMM=1400;
 
 /*TYPES OF OPERATORS
 1)ARITHAMETIC OPERATOR(+,-,*,/)
 2)CONCATINATION OPERATOR :
 "IT IS USED FOR JOINING THE STRINGS TOGETHER".
 SYNTAX:
 concat('string1','string2');
 ex:select concat('rahul','arun');
 3)comparision operators(=,!=)
 4)Relational operators(<,<=,>,>=)
 5)logical operators(and,or,not)
 6)special operators
 (IN,NOT IN,BETWEEN,NOT BETWEEN,IS ,IS NOT,LIKE,
 NOT LIKE)
 7)Subquery operator(all,any,exists,not exists)
 */
 select concat('rahul','arun');
 
 /*Logical operator:
 "we use logical operators to write multiple conditions
 in where clause.the ouput of logical operators is
 boolean values(t/f)." 
 1)AND:
 "it is binary operator which accepts 2 oprends(input)
 ->and operator is used whenever any or all the
 conditions must be satisfied.
 */
 
 /*WAQTD NAME &DEPTNO & SALARY OF EMPLOYEE IF
 EMPLOYEE IS WORKING AS SALESMAN AND WORKING
 IN DEPTNO 30*/
 select ename,deptno,sal,job
 from emp
 where job="salesman" and deptno=30;
 
 /*waqtd details of employee if employee is working
 as manager and hired after 1980*/
 select *
 from emp
 where job='manager' and hiredate>'1980-12-31';
 
 /*waqtd name of employee if employee is working 
 in deptno 10,20,30*/
 /*OR:
 " "it is binary operator which accepts 2 oprends(input)
 ->OR operator is used whenever any OF the
 conditions Has to be satisfied
 */
 select ename,deptno
 from emp
 where deptno=10 or deptno=20 or deptno=30;
 
 /*waqtd name &job of employee if employee is working
 as salesman or president*/
 select ename,job
 from emp
 where job='salesman' or job='president';
 
 /*waqtd name,job,sal,hiredate of employee if
 employee getting salary more than 1800 and
 working in deptno 20 or 30 and working as
 manager.*/
 SELECT ENAME,JOB,SAL,HIREDATE
 FROM EMP
 WHERE SAL>1800 AND (DEPTNO=20 OR DEPTNO=30)AND
 JOB='MANAGER';
 
 /*WAQTD DETAILS OF EMPLOYEE IF EMPLOYEE IS GETTING
 ANNUALSALARY MORE THAN 15000 AND WORKING IN
 DEPTNO 10 OR 20 AND WORKING AS SALESMAN OR MANAGER
 OR ANALYST AND HIRED AFTER 1981 BUT BEFORE 1987
 */
 select *
 from emp
 where sal*12>15000 and (deptno=10 or deptno=20) and 
 (job='salesman' or job='manager' or job='analyst')
 and hiredate>'1981-12-31' and hiredate<'1987-01-01';
 
 /*Not:
 it is unary operator which accepts single oprend"
 */
 
 /*waqtd name &deptno of employee if employee is not
 working in deptno 30*/
 select ename,deptno
 from emp
 where deptno<>30;
 -- where not deptno=30;
 -- where deptno!=30;
 
 /*waqtd name,hiredate,comm,job of employee along with 
 40% hike in a salary.if employee working as president or manager
 and working in deptno 10 but not working in deptno 20 &30
 and hired after 1980*/
 select ename,hiredate,comm,job,sal+sal*40/100
 from emp
 where (job='president' or job='manager') and deptno=10
 and not deptno=20 and not deptno=30 and hiredate>'1980-12-31';