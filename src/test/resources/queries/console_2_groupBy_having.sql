--what is the average salary for IT_PrOG

select *
from employees;

select *
from employees
where job_id ILIKE  'it_prog';

SELECT AVG(salary)
from employees
where job_id ILIKE 'it_prog';

--manager ask me for table about av, sum, count salary based on the job-id

SELECT job_id, avg(salary), count(*), sum(salary)
from employees
group by job_id;

-- get job-ids where their avg salary is more than 5k

select job_id, avg(salary)
from employees
group by job_id
having avg(salary) > 5000;

--how to find duplicate names ?  how many times they repeat ?
-- this is a nice IQ

select first_name, count(*)
       from employees
group by first_name
having count(*)>1
order by count(*) desc ;
