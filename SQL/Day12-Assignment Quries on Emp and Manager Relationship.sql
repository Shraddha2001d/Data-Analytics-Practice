use mydata;

-- ASSIGNMENT ON EMP AND MANAGER RELATION .

-- 1.WAQTD SCOTT’S REPORTING MANAGER'S NAME
select ename
from emp 
where empno = (select mgr
			   from emp
               where ename='scott');
               
select * from emp;

-- 2.WAQTD ADAMS MANAGER'S MANAGER NAME
select ename
from emp
where empno = (select mgr 
			   from emp
               where empno= (select mgr
							 from emp 
                             where ename= 'adams'));
                             
-- 3.WAQTD DNAME OF JONES MANAGER
select dname
from dept
where deptno= (select deptno
			   from emp 
               where empno =(select mgr
							 from emp 
                             where ename='jones'));
                             
-- 4.WAQTD MILLER'S MANAGER'S SALARY
select sal
from emp
where empno= (select mgr
			  from emp
              where ename='miller');
              
              select * from emp;
              select * from dept;
-- 5.WAQTD LOC OF SMITH'S MANAGER'S MANAGER
select loc
from dept
where deptno = (select deptno
				from emp
                where empno =(select mgr
							  from emp
                              where empno= (select mgr
											from emp
                                            where ename= 'smith')));
	
update emp 
set ename ="smith"
where ename= "nitin";

-- 6.WAQTD NAME OF THE EMPLOYEES REPORTING TO BLAKE
select ename 
from emp
where mgr = (select empno
			 from emp
             where ename= "blake");
             
             select * from emp;
             
-- 7.WAQTD NUMBER OF EMPLPOYEES REPORTING TO KING
select count(*)
from emp
where mgr=(select empno
		   from emp
           where ename= 'king');
           
-- 8.WAQTD DETAILS OF THE EMPLOYEES REPORTING TO JONES.
select *
from emp
where mgr = (select empno
			 from emp
             where ename='jones');
             
-- 9.WAQTD ENAMES OF THE EMPLOYEES REPORTING TO BLAKE'S MANAGER
select ename
from emp
where mgr =(select empno
			from emp
            where empno= (select mgr
							from emp 
                            where ename="blake"));
                            
-- 10.WAQTD NUMBER OF EMPLOYEES REPORTING TO FORD'S MANAGER.
select count(*)
from emp
where mgr=(select empno

			from emp 
			where empno = (select mgr 
							from emp
                            where ename ='ford'));

-- 11) WAQTD dname of the employee reporting to President .
select dname
from dept
where deptno= (select deptno
			   from emp
               where mgr = (select empno
							from emp
                            where job='president'));
                             
     select * from emp;
     
-- 12) WAQTD Department details of the employees who are reporting to MILLER     
select *
from dept
where deptno = (select deptno
				from emp 
                where mgr = (select empno
							 from emp
                             where ename='miller'));
                             
-- 13) WAQTD Location of Adams's manager's manager .
select loc 
from dept
where deptno = (select deptno
				from emp
                where empno =(select mgr
							  from emp
                              where mgr= (select empno
										  from emp
                                          where ename= 'adams')));
                             
-- 14) WAQTD dname of King's Manager .
select dname 
from dept
where deptno =(select deptno
			   from emp
               where empno = (select mgr
							  from emp
                              where ename= 'king'));
                              
-- 15) WAQTD Name and salary given to the employees reporting To James

select ename,sal
from emp
where mgr = (select empno
			 from emp 
             where ename = 'james');

select * from emp;
                            
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             