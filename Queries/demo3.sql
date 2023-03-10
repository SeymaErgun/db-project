--get me all info who is working as IT_PROG or SA_REP
select * from EMPLOYEES
where JOB_ID in('IT_PROG', 'SA_REP');

--how many employee are working as IT_PROG or SA_REP
select count(*) from EMPLOYEES
where JOB_ID in('IT_PROG', 'SA_REP');

--how many employees making more than 8000
select count(*) from EMPLOYEES
where SALARY>8000;

--how many unique first names we have?
select count (distinct FIRST_NAME) from EMPLOYEES;

--get me all employees information based on who is making more salary to low salary
select * from EMPLOYEES
order by SALARY asc;

--NOTE: default order type is asc if you don't specify after column name

--get me all employees whose first name start with C
select * from EMPLOYEES
where FIRST_NAME like 'C%';

select * from EMPLOYEES
where FIRST_NAME like 'C____';

--get me 5 letter first names where the middle char is z;
select * from EMPLOYEES
where FIRST_NAME like '__z__';

--get me first name where second char is u;
select * from EMPLOYEES
where FIRST_NAME like '_u%';

--find me minimum salary
select min (salary) from EMPLOYEES;

--find me max salary
select max (salary) from EMPLOYEES;

select avg (salary) from EMPLOYEES;

--round
select round(avg (salary), 2) from EMPLOYEES;

select sum(salary) from EMPLOYEES;


