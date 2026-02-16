use data1;

-- Practice Subquries

/*waqtd name of martin's manager*/
        select ename
        from emp
		where empno=  ( select mgr
						  from emp
                          where ename='martin');
/*waqtd name of james manager*/
select ename
from emp
where empno=(select mgr
             from emp
             where ename='james');
/*waqtd name of  allen's manager's manager name*/
select ename
from emp
where empno=(select mgr
             from emp
             where empno=(select mgr
                          from emp
                          where ename='allen'));

/*waqtd name of employees reporting to king*/
select ename
from emp
where mgr=(select empno
           from emp
           where ename='king');
/*waqtd number of employees reporting to blake*/
select count(*)
from emp
where mgr=(select empno
		   from emp
           where ename='blake');

/*subquery operators:
1)ALL:
"ALL OPERATORS RETURNS TRUE IF ALL THE ALL AT RHS SATISFY THE CONDITION".*/

/*WAQTD NAME OF EMPLOYEE GETTING SALARY MORE THAN ALL THE MANAGER'S*/
SELECT ENAME
FROM EMP
WHERE SAL>(SELECT MAX(SAL)
           FROM EMP
           WHERE JOB='MANAGER');
           
SELECT ENAME
FROM EMP
WHERE SAL> all (SELECT SAL
                FROM EMP
			    WHERE JOB='MANAGER');

/*ANY:
"ANY OPERATOR RETURNS TRUE IF ANY ONE OF THE VALUE AT RHS SATISFY THE CONDITION ".
*/
SELECT ENAME
FROM EMP
WHERE SAL>ANY(SELECT SAL
              FROM EMP
              WHERE JOB='MANAGER');
              
/*TCL:(Transaction control langauge)
1)COMMIT
2)ROLLBACK
3)SAVEPOINT
*/
/*COMMIT:
"IT IS USED TO SAVE THE TRANSACTIONS PERMANNETLY INTO DATABASE". 

 ROLLBACK:
"IT IS USED TO OBTAIN SAVED RECORDS FROM DATABASE".
->IT WILL BRING TO THE POINT WHERE WE HAVE USED COMMIT LAST TIME"
*/
USE EXCELR3;
SELECT * FROM STUDENT1;
COMMIT;

DELETE FROM STUDENT1 WHERE SID=3;

ROLLBACK;
set autocommit=off;
select * from student1;
commit;

delete from student1 where sid in(4,5);
rollback;


use excelr4;

select * from emp;
commit;

delete from emp;

rollback;

select *
from emp;
commit;

delete from emp where deptno=30;
rollback;

select *
from emp;
 
/*savepoint:
"it used to mark the postion or restortation of points".
->it is temporary and not related to database".
*/

select * from emp;
commit;
savepoint s1;

delete from emp where deptno=10;

savepoint s2;

delete from emp where deptno=20;

savepoint s3;

delete from emp where deptno=30;

rollback to s3;
select * from emp;
rollback to s1;
rollback to s2;
select * from emp;
commit;
savepoint a1;

delete from emp where deptno=10;

savepoint a2;

delete from emp where deptno=20;

savepoint a3;

delete from emp where deptno=30;

rollback to a3;
rollback to a2;
rollback to a1;
select * from emp;


use mydata;

select * from student1;
commit;
savepoint r1;
delete from student1 where sid=1;
savepoint r2;
delete from student1 where sid=2;
savepoint r3;
delete from student1 where sid=4;
savepoint r4;
delete from student1 where sid=5;

rollback to r1;
select * from student1;
rollback to r2;
