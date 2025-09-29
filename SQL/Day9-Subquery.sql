use data1;

/*waqtd name &salary of employee if employee is
getting salary more than allen*/
            SELECT ENAME,SAL               
            FROM EMP               
			WHERE SAL> (SELECT SAL
						FROM EMP
						WHERE ENAME='ALLEN');
                        
/*NOTE:
1)ALWAYS INNER QUERY DATATYPE HAS TO BE SAME AS OUTER QUERY.
2)IN INNER QUERY WE CANNOT DISPLAY MORE THAN ONE COLUMN_NAME.
*/

/*Subquery:
"query written inside another query is known as subquery".
WHY???
->WHENEVER THERE IS UNKNOWN VALUE PRESENT IN THE QUESTION TO
FIND THE UNKNOWN VALUE WE USE SUBQUERY".
*/

/*WAQTD NAME &SALARY OF EMPLOYEE IF EMPLOYEE IS GETTING SALARY 
LESS THAN MILLER*/    
                      SELECT ENAME,SAL
					   FROM EMP
                       WHERE SAL<( SELECT SAL
                                FROM EMP
                                WHERE ENAME='MILLER');
                                
/*waqtd name &deptno of employee if employee is working
in same deptno as martin*/
                       select ename,deptno
                       from emp
                       where deptno= ( select deptno
                                       from emp
									   where ename='martin');
                                       
/*waqtd name &designation of employee if employee is working
in same designation as blake*/
                    select ename,job
                    from emp         
                    where job=( select job
                              from emp
                              where ename='blake');
                              
/*waqtd details of employee if employee name has a character
a in their name and getting salary more than james*/
select *
from emp
where ename like '%a%' and sal>(select sal
                                from emp
                                where ename='james');
                                
/*waqtd name &commission of employee if employee is getting
commission and getting salary more than ward*/
select ename,comm
from emp
where comm is not null and sal>(select sal
								from emp
                                where ename='ward');
                                
/*waqtd name &salary of employee if employee is getting salary
more than jones but less than king*/
select ename,sal
from emp
where sal>(select sal
           from emp
           where ename='jones') and sal<(select sal
                                         from emp
                                         where ename='king');
                                         
/*waqtd details of employee if employee hired after allen but before king and getting
salary more than turner but less than scott and working sames designation as james*/
select *
from emp
where hiredate>(select hiredate
                from emp
                where ename='allen') and hiredate<(select hiredate
                                                   from emp
                                                   where ename='king') and
	  sal>(select sal
		   from emp
           where ename='turner') and sal<(select sal
                                          from emp
                                          where ename='scott') and job=(select job
																		from emp
                                                                        where ename='james');
                                                                        
 /*WAQTD DNAME OF MILLER*/                                                                       
select deptno
from emp
where ename='miller';

/*case-2 
whenever data has to be selected but conditions are present in different table
we use subquery*/   select dname
                    from dept
                     where deptno= ( select deptno
                                      from emp
                                      where ename='miller');

/*waqtd location of turner*/
select loc
from dept
where deptno IN(select deptno
              from emp
              where ename='turner');

/*waqtd name of employees working in a location new york*/
select ename
from emp
where deptno=(select deptno
			   from dept
               where loc='new york');
               
/*waqtd number of employees working in dname research*/
select count(*)
from emp
where deptno=(select deptno
              from dept
              where dname='research');
              
/*TYPES OF SUBQUERY

1)SINGLE-ROW SUBQUERY:
"IF SUBQUERY RETURNS EXACTLY ONE VALUE WE CALL IT AS SINGLE ROW SUBQUERY".
->IF SUBQUERY RETURNS EXACTLY ONE VALUE WE CAN USE NORMAL OPERATORS(=,<,>,<=,>=)
OR SPECIAL OPERATORS

2)MULTI-ROW SUBQUERY:
"IF SUBQUERY RETURNS MORE THAN ONE VALUE WE CALL IT AS MULTI-ROW SUBQUERY".
->->IF SUBQUERY RETURNS MORE THAN ONE VALUE WE CAN NOT USE NORMAL OPERATORS(=,<,>,<=,>=)
 WE MUST USE SPECIAL OPERATORS. 
*/

SELECT DNAME
FROM DEPT
WHERE DEPTNO IN(SELECT DEPTNO
              FROM EMP
              WHERE ENAME IN('SCOTT','KING'));


/*NOTE:
"IT IS VERY DIFFICULT TO UNDERSTAND WHETHER QUERY IS BELONGS TO SINGLE
ROW SUBQUERY OR MULTI ROW SUBQUERY IT IS ALWAYS RECOMANDED TO USE SPECIAL
OPERATOR WHILE COMPARING THE VALUES*/
