--Assignment1
-- 1. List all the employees' first and last name with their salary in employees table
select first_name, last_name, salary from employees;
-- 2. how many employees have salary less than 5000?
select count(*)
from employees where salary<5000;
-- 3. how many employees have salary between 6000 and 7000?
select count(*)
from employees where salary between 6000 and 7000;
--value >= low AND value <= high value BETWEEN low AND high -- Same statement
-- 4. List all the different region_ids in countries table
select distinct (region_id) -- remove duplicate
from countries ;
-- 5. display the salary of the employee Grant Douglas (lastName: Grant,  firstName: Douglas)
select salary
from employees where first_name='Douglas' and last_name='Grant';
-- 6. display the maximum salary in employees table
select max(salary)
from employees;--24000
-- 7. This is real IQ : display all informations of the employee who has the highest salary in employees table
select *
from employees where salary= (select max(salary) from employees);--steven King
-- 8. display the the second maximum salary from the employees table
select max(salary)
from employees
where salary< (select max(salary) from employees);--17000
-- 9. display all informations of the employee who has the second highest salary
select *
from employees
where salary = (select max(salary)
                from employees
                where salary< (select max(salary) from employees));--Neana and Lex
-- 10. display the the minimum salary in employees table
    select min(salary)
    from employees; --TJ
-- 11. display all informations of the employee who has the minimum salary in employees table
select * from employees
where salary = ( select min(salary)
                 from employees);
-- 12. display the second minimum salary from the employees table
select min(salary) from employees where salary>( select min(salary)
                                                 from employees);--2200
-- 13. display all information's of the employee who has the second minimum salary
select * from employees
where salary = (select min(salary) from employees where salary>( select min(salary)
                                                                 from employees));--Steven and Hazel
-- 14. display the average salary of the employees;
select avg(salary)
from employees ; --6461.6822429906542056

SELECT ROUND(AVG(salary), 3)
from employees ; --6461.682
-- 15. list all the employees who are making above the average salary;
    select * from employees
    where salary> (select avg(salary)
                   from employees);
-- 16. list all the employees who are making less than the average salary
select * from employees
where salary < (select avg(salary)
               from employees);
-- 17. count the total numbers of the departments in departs table
    select count(*)
    from departments;
-- 18. sort the start_date in ascending order in job_history's table
    select * from job_history
    order by start_date; -- ascending is default
-- 19. sort the start_date in descending order in job_history's table

select * from job_history
order by start_date desc ;-- we need to specify it because it is not default

-- 20. list all the employees whose first name starts with 'A'
    select * from employees
    where first_name like 'A%';-- case sensitive with alike
-- 21. list all the employees whose job_ID contains 'IT'
    select * from employees
    where job_id ilike '%IT%'; -- means contains

-- 22. list all the employees whose department id in 50, 80, 100
select * from employees
where department_id = 50 or department_id = 80 or department_id = 100;

--SAME STATEMENT- IN SHOR WAY WITH IN
select * from employees
where department_id IN (50,80,100);
--IN (value l, value2,...)
    --any value in a list of values.
--you can use NOT to adjust an IN statement (NOT IN)
