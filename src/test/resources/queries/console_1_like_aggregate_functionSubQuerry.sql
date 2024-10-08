select * from employees;
--each SQL statement needs to end-with semi-colon-;
--SQL language is case insensitive
select * from departments;
-- if you have multiple statement, when hit command + enter and then again enter  this statement will run

select * from employees
order by salary;

select * from employees
order by salary desc ;

--how many question --> count
select count(*)
from employees;

--get all employees who is first name starts with C
select * from employees
where first_name like 'C%';

-- get first name 5 character
select * from employees
where first_name like '_____';

-- get first name starts with A and 5 character
select * from employees
where first_name like 'A____';

--get first name where second char is U
select * from employees
where first_name like '_u%';

select * from employees
where first_name like '%u%'; -- means contains u

--get all names  where it contains c
select * from employees
where first_name ILIKE '%c%'; -- ILIKE makes search case insensitive

--AGGREGATE FUNCTION

SELECT MIN(salary)
FROM employees;
SELECT MAX(salary)
FROM employees;
SELECT SUM(salary)
FROM employees;
SELECT AVG(salary)
FROM employees;
SELECT ROUND(AVG(salary), 3)
FROM employees;

--HOW TO FIND WHO IS MAKING HIGHEST SALARY?
--WITH SUB QUERY

SELECT MAX(salary)
FROM employees;
--MAX=24000

SELECT *
FROM employees
WHERE salary=24000;
--This can be real IQ inner about query
--WITH INNER QUERY SUB QUERY
SELECT *
FROM employees
WHERE salary=(SELECT MAX(salary) FROM employees);

--how to find who is making second salary
----first let's think what is the second highest salary

SELECT MAX(salary)
FROM employees;
--2400

SELECT MAX(salary)
FROM employees
WHERE salary<2400; -- this code is hardcoded
--IT IS SECOND --17000

SELECT *
FROM employees
WHERE salary = 17000; -- this code is hardcoded

--INSTEAD OF THESE STEP AND AVOID STATIC INPUT
--DYNAMICALLY

SELECT *
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees WHERE salary <
                       (SELECT max(salary) FROM employees));

--GET TOP 10 HIGHEST SALARY
SELECT *
FROM employees
ORDER BY salary DESC
OFFSET 9
LIMIT 1; -- SORTING HIGHEST SALARY SELECT 10. EMPLOYEE

--who is making 14th highest salary ?

--14th highest salary
select distinct salary
from employees
order by salary desc
offset 13
limit 1;

--who is making nth highest salary? change offset value n-1
--here n=14
select *
from employees
where salary = (select distinct salary
                from employees
                order by salary desc
                offset 13
                    limit 1); --FIRST NEED TO ORDER

--GET ME all employees firstname, lastname who is working currently in IT department
-- first IT I need to find department ID
select department_id from departments
where department_name='IT';

--and then i need to apply sub-query
select first_name, last_name from employees
where department_id=(select department_id from departments
                     where department_name='IT');

--GET ME all employees firstname, lastname who is working currently in Executive department
select first_name, last_name from employees
where department_id=(select department_id from departments
                     where department_name='Executive');

--display all information from employees who is getting first 7 higgest salary

--find me employees information in sorted manner based salary in desc
select * from employees
order by salary desc;

--use that table to apply row num
select * from (select * from employees
               order by salary desc)
limit(7);
-- is it same this last 2 query
select * from employees
order by salary desc
limit(7);










