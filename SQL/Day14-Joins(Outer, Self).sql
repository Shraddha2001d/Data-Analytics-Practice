use data1;

/*outer join:
"it is used to obatin unmatched records". 
1)left outer join
2)right outer join
3)full outer join

1)left outer join:
"it is used obtain unmatched records of left table along with matching
 records of right table".
syntax:ansi
select column_name1,column_name2......column_namen
from table_name1 left join table_name2
on <join condition>;
*/
-- List all employees along with their department name.
SELECT e.empno, e.ename, d.dname
FROM emp e LEFT OUTER JOIN dept d
ON e.deptno = d.deptno;

/*right outer join:
"it is used obtain unmatched records of right table along with
matching records of left table".
syntax:ANSI
select column_name1,column_name2......column_namen
from table_name1 RIGHT join table_name2
on <join condition>;  */

-- List all department names along with employee names.
SELECT e.ename, d.dname
FROM emp e
RIGHT OUTER JOIN dept d
ON e.deptno = d.deptno;

SELECT DEPTNO,JOB
FROM EMP
UNION ALL
SELECT DEPTNO,JOB
FROM EMP;

/*UNION:
"IT IS USED TO COMBINE TWO SELECT STATEMENTS &REMOVE THE DUPLICATE/REPETED VALUES".
*/
SELECT DEPTNO,JOB
FROM EMP
UNION 
SELECT DEPTNO,JOB
FROM EMP;

/*UNION ALL:
"IT IS USED TO COMBINE TWO SELECT STATEMENTS". 
*/
SELECT DEPTNO,JOB
FROM EMP
UNION ALL
SELECT DEPTNO,JOB
FROM EMP;

/*INTERSECT:"IT IS USED TO FIND COMMMON VALUE FROM BOTH THE TABLES"
*/
SELECT DEPTNO
FROM EMP
INTERSECT
SELECT DEPTNO
FROM DEPT;

CREATE TABLE STUDENT2
(
SNAME VARCHAR(50)
);

INSERT INTO STUDENT3 VALUES('VARUN');
CREATE TABLE STUDENT3
(
SNAME VARCHAR(50)
);

SELECT SNAME
FROM STUDENT2
INTERSECT
SELECT SNAME
FROM STUDENT3;

/*Full Outer Join:
"it is the union of Left And Right Outer Join"*/

/*Self Join:
"joining the table by itself ".

why should we use self join????
->"whenever data has to be selected from same
table but records are present in different forms
we use self join".

syntax:
select column_name1,column_name2.....column_namen
from table_name t1 join table_name t2
on <join condition>;
*/

/*waqtd employee names along with manager name*/
select e1.ename,m1.ename as manager
from emp e1 join emp m1
on e1.mgr=m1.empno;

/*waqtd employee name &employee salary,manager name,
manager's salary of employee*/
select e1.ename,e1.sal,m1.ename,m1.sal
from emp e1 join emp m1
on e1.mgr=m1.empno;

/*waqtd employee name &employee job ,manager's name
manager's job if manager is working as analyst*/
select e1.ename,e1.job,m1.ename,m1.job
from emp e1 join emp m1
on e1.mgr=m1.empno
where m1.job='analyst';

/*waqtd employee name,employee salary,manager name,
manager salary if employee is getting salary
more than manager*/
select e1.ename,e1.sal,m1.ename,m1.sal
from emp e1 join emp m1
on e1.mgr=m1.empno
where e1.sal>m1.sal;

/*waqtd deatils of employee &details of manager
if employee name starts with a and manager name
ends with e*/
select e1.*,m1.*
from emp e1 join emp m1
on e1.mgr=m1.empno
where e1.ename like 'a%' and m1.ename like '%e';

/*waqtd employee name &employee job,manager name &
manager job of employee if employee &manager works
in same designation*/
select e1.ename,e1.job,m1.ename,m1.job
from emp e1 join emp m1
on e1.mgr=m1.empno
where e1.job=m1.job;

/*waqtd employee name,employee salary,manager name,
manager's salary ,manager's manager name &
manager's maanger salary of employee*/
SELECT E1.ENAME,E1.SAL,M1.ENAME,M1.SAL,M2.ENAME,M2.SAL
FROM EMP E1 JOIN EMP M1 JOIN EMP M2
ON E1.MGR=M1.EMPNO AND M1.MGR=M2.EMPNO;

/*WAQTD EMPLOYEE NAME,EMPLOYEE DNAME,MANAGER NAME
MANAGER DNAME IF EMPLOYEE &MANAGER WORK IN  A SAME
LOCATION NEW YORK*/
select E1.ENAME,D1.DNAME,M1.ENAME,D2.DNAME
FROM EMP E1 JOIN EMP M1 INNER JOIN DEPT D1 JOIN DEPT D2
ON E1.MGR=M1.EMPNO AND E1.DEPTNO=D1.DEPTNO AND
M1.DEPTNO=D2.DEPTNO 
WHERE D1.LOC='NEW YORK' AND D2.LOC='NEW YORK';