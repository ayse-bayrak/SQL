select * from employees;

select city
from locations
where country_id in ('IT', 'US', 'UK');

--get me all info who is working as IT_PROG
select*
from employees
where job_id = 'IT_PROG';

--how many employees are working as IT_PROG
select count(*)
from employees
where job_id ='IT_PROG';

--how many employees are making more than 8000
select count(*)
from employees
where salary>8000;

--how many unique first names we have

select count (distinct first_name)
from employees;

--get me all employees information based on
--who is making more salary to low salary
--sorting
select *
from employees
order by salary; -- by default ascending order 0-9, a-z
--low to high

select *
from employees
order by salary desc ; -- high to low

--sort employees a-z
select *
from employees
order by first_name;
