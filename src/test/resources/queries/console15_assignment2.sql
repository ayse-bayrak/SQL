
-- 1. Show all job_id and average salary who work as any of these jobs IT_PROG, SA_REP, FI_ACCOUNT, AD_VP
select job_id, avg(salary)
from employees
where job_id IN ('SA_REP','IT_PROG','FI_ACCOUNT', 'AD_VP')
group by job_id;
--same statement
select job_id, avg(salary)
from employees
group by job_id
having job_id IN ('SA_REP', 'IT_PROG', 'FI_ACCOUNT', 'AD_VP');

--check am i gonna filter after the group or before the group?
-- where is filter out before put them into groups
-- having is filter out after the groups

-- 2. Show all records whose last name contains 2 lowercase 'a's
    select * from employees
    where last_name like '%a%a';

-- 3. Display max salary  for each department
    select department_id, max(salary)
    from employees
    group by department_id;

-- 4. Display total salary for each department except department_id 50, and where total salary >30000

select department_id, sum(salary)
from employees
group by department_id
having sum(salary) > 30000 and department_id!='50';

--HAVING clause in conjunction with the GROUP BY clause to
--filter group rows that do not satisfy a specified condition.
    --HAVING condition(aggregate)

-- 5. Write a SQL query that returns first and last name any employees who started job between 1-JAN-2000 and 3-SEP-2007 from the hr database
 select first_name, last_name, hire_date
 from employees
 where hire_date between '1-JAN-2000' and '3-SEP-2007';

-- 6. Display country_id, country name, region id, region name from hr database
select c.country_id, c.country_name, r.region_id, r.region_name
from countries c join regions r
on c.region_id=r.region_id;
--we use 'on' in JOIN

-- 7. Display All cities, country names from hr database
select city, country_name
from countries c join locations l
on c.country_id=l.country_id;

select distinct city
from locations ; -- I checked number of city --23
-- 8. display the first name, last name, department number, and department name,  for all employees for departments 80 or 40.

select first_name, last_name, e.department_id, d.department_id, department_name
from employees e join departments d
on e.department_id=d.department_id
where e.department_id IN (80, 40);

-- 9. Display employees' first name, Lastname department id and all departments including those where do not have any employee.
select first_name, last_name, e.department_id, d.department_id, department_name
from employees e right join departments d
on e.department_id=d.department_id; -- intersection

-- 10. Display the first name, last name, department number, and name, for all employees who have or have not any department
select first_name, last_name, e.department_id, department_name
from employees e left join departments d
on e.department_id=d.department_id;

-- 11. Display all employee and their manager's names
--SELF JOIN
select e1.first_name||' '|| e1.last_name AS "employee_name", e2.first_name||' '||e2.last_name as "manager_name"
from employees e1 left join employees e2
on e1.manager_id = e2.employee_id;