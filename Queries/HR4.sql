
--get me unique job_ids
select distinct JOB_ID from EMPLOYEES;



--get me average salary for IT_PROG
select AVG(SALARY)
from EMPLOYEES
where JOB_ID ='IT_PROG';

select AVG(SALARY)
from EMPLOYEES
where JOB_ID ='AC_ACCOUNT';

select JOB_ID, avg(salary), count(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID;

select JOB_ID, avg(SALARY), count(*)
from EMPLOYEES
group by JOB_ID;

select salary from EMPLOYEES;


--get me job_ids where their avg salary is more than 5k
select JOB_ID, avg(salary), count(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(salary)>5000;
