
--get me unique job_ids
select distinct JOB_ID from EMPLOYEES;



--get me average salary for IT_PROG
select AVG(SALARY)
from EMPLOYEES
where JOB_ID ='IT_PROG';

select JOB_ID, avg(salary), count(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID;


select * from EMPLOYEES;
