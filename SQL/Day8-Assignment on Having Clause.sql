-- ASSIGNMENT QUESTIONS ON HAVING CLAUSE
use data1;

-- 1.WAQTD DNO AND NUMBER OF EMP WORKING IN EACH DEPT IF THERE ARE ATLEAST 2 CLERKS IN EACH DEPT. 
Select * from emp;
select deptno, count(*)
from emp
where job = 'clerk'
group by deptno
having count(*) >= 2;

-- 2.WAQTD DNO AND TOTAL SAALARY NEEDED TO PAY ALL EMP IN EACH DEPT IF THERE ARE ATLEAST 4 EMP IN EACH DEPT. 
select deptno, sum(sal)
from emp
group by deptno
having count(*) >= 4;

-- 3 WAQTD NUMBER OF EMP EARNING MORE THAN 1200 IN EACH JOB AND THE TOTAL SAL NEEDED TO PAY EMP OF EACH JOB MUST EXCEES 3800.
select  job, count(*)
from emp
where sal > 1200
group by job
having sum(sal) > 3800;

-- 4.WAQTD DEPTNO AND NUMBER OF EMP WORKING ONLY IF THERE ARE 2 EMP WORKING IN EACH DEPT AS MANAGER .
select deptno, count(*)
from emp
where job = 'manager'
group by deptno
having count(*) = 2;

-- 5.WAQTD JOB AND MAX SAL OF EMP IN EACH JOB IF THE MAX SAL EXCEEDS 2600
select job, max(sal)
from emp
group by job
having max(sal) > 2600;

-- 6.WAQTD THE SALARIES WHICH ARE REPEATED IN EMP TABLE.
select sal, count(*)
from emp
group by sal
having count(*) >1;

-- 7.WAQTD THE HIREDATE WHICH ARE DUPLICATED IN EMP TABLE .
select hiredate
from emp
group by hiredate
having count(*) > 1;

-- 8.WAQTD AVG SALARY OF EACH DEPT IF AVG SAL IS LESS THAN 3000
select deptno, avg(sal)
from emp
group by deptno
having avg(sal) < 3000;

-- 9.WAQTD DEPTNO IF THERE ARE ATLEAST 3 EMP IN EACH DEPT WHOS NAME HAS CHAR 'A' OR 'S' .
select deptno
from emp
where ename like "%a%" or ename like "%s%"
group by deptno
having count(*) >= 3;

-- 10.WAQTD MIN AND MAX SALARIES OF EACH JOB IF MIN SAL IS MORE THAN 1000 AND MAX SAL IS LESS THAN 5000 .
select job, min(sal), max(sal)
from emp
group by job
having min(sal)>1000 and max(sal)<5000;
