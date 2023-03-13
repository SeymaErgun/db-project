select distinct SALARY from EMPLOYEES;




--find the highest 14th salary
select min(SALARY)
from (select distinct SALARY from EMPLOYEES order by salary desc)
where rownum < 15;



--find employee info who is making 14th highest salary

select * from EMPLOYEES
where salary = (select min(SALARY)
                from (select distinct SALARY from EMPLOYEES order by salary desc)
                where rownum < 15);