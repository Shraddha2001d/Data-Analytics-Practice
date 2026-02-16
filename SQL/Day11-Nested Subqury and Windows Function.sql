use data1;

/*WAQTD MAXIMUM SALARY OF EMPLOYEE*/
SELECT MAX(SAL)
FROM EMP;


/*Nested subquery:
"subquery written inside another subquery is 
known as nested subquery".
->we can nest upto 255 subqueries
*/

/*WAQTD 3RD MAXIMUM SALARY OF EMPLOYEE*/
select max(sal)
from emp
where sal<(select max(sal)
           from emp
           where sal<(select max(sal)
                       from emp));
                       
 /*waqtd 4th maximum salary of employee*/
 select max(sal)
 from emp
 where sal<(select max(sal) 
            from emp
            where sal<(select max(sal)
                       from emp
                       where sal<(select max(sal)
                                  from emp)));
                       
  select sal
  from emp
  order by sal asc
  limit 2;
  
  /*waqtd name of employee who is getting 2nd maximum salary*/
  select ename,sal
  from emp
  where sal=(select max(sal)
             from emp
             where sal<(select max(sal)
                        from emp));
                        
/*waqtd dname of employee who is getting 2nd minimum salary*/
select dname
from dept
where deptno in(select deptno
				from emp
                where sal =(select min(sal)
                            from emp
                            where sal>(select min(sal)
                                       from emp)));
                                       
/*waqtd location of employee if employee is getting 3rd maximum salary*/
select loc
from dept
where deptno=(select deptno
              from emp
              where sal=(select max(sal)
                         from emp
                         where sal<(select max(sal)
                                    from emp
                                    where sal<(select max(sal)
                                               from emp))));
                                               
  /*waqtd 12th maximum salary of employee*/
  
  
  /*WINDOWS FUNCTION:
  SYNTAX:
  SELECT COLUMN_NAME1,COLUMN_NAME2...COLUMN_NAMEN FUNCTION_NAME()
		 OVER (ORDER BY COLUMN_NAME ASC|DESC,
                -- PARTITION BY COLUMN_NAME)
 FROM TABLE_NAME;
 */
 
 /*RANKING FUNCTIONS:
 1)RANK()
 2)DENSE_RANK()
 */

 
 SELECT * FROM STUDENT1;
 
 
 UPDATE STUDENT1
 SET PERCENTAGE =55
 WHERE SNAME='POOJA';
 
 
 SELECT *,rank() over(order by percentage desc) as rnk
 from student1;
 
 select ename,sal,dense_rank() over(order by sal desc) as r1
 from emp;
 
 select ename,sal
 from(select ename,sal,dense_rank() over(order by sal desc) as a1
	  from emp) as w
 where a1=100;
 
 select ename,sal,t
 from(
 select ename,sal,dense_rank() over(order by sal desc)as t
 from emp ) as q
 where t=5;
 
select ename,job,sal from(
 select ename,job,sal,dense_rank() over( order by sal) as e1
 from emp )as q
 where e1=9;
 
 /*waqtd total salary given to each job*/
 select sum(sal),job,count(*)
 from emp
 group by job;
 
 select ename,sal,job,count(*)over(partition by job)
 from emp;
 
 
 select ename,hiredate
 from emp
 where hiredate>(select hiredate
                 from emp
                 where job='president');
  
  
select sal
from emp
order by sal desc;

/* Analytical Function
1. Lead()
	Used to get next row value.
2. Lag()
	Used to get previous row value.
   */
   
select sal, Lead(sal,3) over(order by sal asc)
from emp;

select sal, lag(sal,1) over(order by sal desc)
from emp;
