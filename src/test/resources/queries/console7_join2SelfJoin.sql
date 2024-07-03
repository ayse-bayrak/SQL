select * from employees;
select * from departments;

--display firstname, lastname, department name

select first_name, last_name, department_name
from employees e  join departments d
on e.department_id=d.department_id; --106 one of them does not have department so we can do like this

select first_name, last_name, department_name
from employees e left join departments d
on e.department_id=d.department_id
where e.department_id IS NULL;--Kimberely,Grant,- not null

select first_name, last_name, department_name
from employees e left join departments d
on e.department_id=d.department_id;--107

--display firstname, lastname, department name, city for all employees
select *from countries;
select *
from employees;
select first_name, last_name, department_name, city
from employees e join departments d
on e.department_id=d.department_id
join locations l
on d.location_id = l.location_id;

--display firstname, lastname, department name, city, country_name for all employees
select first_name, last_name, department_name, city, country_name
from employees e join departments d
on e.department_id = d.department_id
join locations l
on d.location_id = l.location_id
join countries c
on l.country_id = c.country_id;

select *
from employees;
--SELF JOIN -- using same table, we don't use self keyword
-- Join the table to itself-- we must use a table alias
--get employee id, first_name, last name, manager name, manager last name
select e1.employee_id, e1.first_name, e1.last_name, e2.first_name as manager_name, e2.last_name as manager_lastName
from employees e1 join employees e2
on e1.manager_id=e2.employee_id;

select e1.first_name, e1.last_name, e1.manager_id, e2.employee_id,  e2.first_name as manager_name, e2.last_name as manager_lastName
from employees e1 join employees e2
on e1.manager_id=e2.employee_id;

select e1.first_name, e1.last_name, e1.manager_id, e2.employee_id,  e2.first_name as manager_name, e2.last_name as manager_lastName
from employees e1 left join employees e2 --put left for display all employees even if null manager_id
on e1.manager_id=e2.employee_id;

