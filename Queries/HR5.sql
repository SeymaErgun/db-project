--how to find employees information of who is making highest salary in thr company

--get me the highest salary
select max(SALARY) from EMPLOYEES;

--highest salary employee information
select *
from EMPLOYEES
where salary = 24000;


--subquery solution in one shot
select *
from EMPLOYEES
where salary = (select max(SALARY) from EMPLOYEES);

--finding second highest salary

select max(SALARY) from EMPLOYEES;

--highest after 24K
select max(SALARY)
from EMPLOYEES
where SALARY<24000;

--one shot combining two queries

select max(SALARY)
from EMPLOYEES
where salary < (select max(SALARY) from EMPLOYEES);

select * from EMPLOYEES
where salary = (select max(SALARY)  from EMPLOYEES where salary < (select max(SALARY) from EMPLOYEES));

----------------
select * from EMPLOYEES
order by salary desc ;


select * from EMPLOYEES
where rownum < 11;


--list the employees who is making top 10 salary
select * from EMPLOYEES
where rownum < 11
order by salary desc;

--order all employees based on salary high to low then display only first 10 result
select * from (select * from EMPLOYEES order by salary desc)
where rownum < 11;


