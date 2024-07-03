--String Function only used for display, does not modify table

--How can we rename the column we displayed not permanently only for display and for using
--using AS-- aliases

--COLUMN Aliases
select first_name AS "given_name", last_name AS "surname"
from employees;

select first_name, last_name
from employees;

--how to concatenate

select first_name||' '||last_name AS "full_name"
from employees;

--TASK
-- add @cydeo.com to email and name new column to full_email
select email||'@cydeo' as "full_email"
from employees;
-- SKING@cydeo

select email
from employees;
-- SKING

--CONCAT (value1, value2)
--Steven King

select CONCAT(CONCAT(first_name, ' '), last_name)
from employees;
-- Steven King

select CONCAT(email, '@gmail.com') from employees;
-- SKING@gmail.com

select lower(email||'@cydeo') as "full_email"
from employees;
-- sking@cydeo

select upper(email||'@cydeo') as "full_email"
from employees;
-- SKING@CYDEO

--INITCAP(value) --> First Letter is UPPERCASE and rest of them will LOWERCASE
select initcap(email) FROM employees;
-- Sking

--other functions
--LENGTH

select first_name, length(first_name) as "length_name"
from employees;

-- add @cydeo.com to first_name and last_name and name new column to full_email
select first_name||last_name||'@cydeo' as "full_email"
from employees;
-- StevenKing@cydeo

--substr(colName, begIndex, NUmberOfChar)
--if beginning index 0, it is treated as 1
SELECT substr(first_name,0,1)||'.'||substr(last_name,0,1)||'.' as "initials"
from employees; -- it does not work for me

--same statement
SELECT substr(first_name, 1,1)||'.'||substr(last_name,1,1)||'.' as "initials"
from employees;
-- S.K.
SELECT substr(first_name, 1,5)||'.'||substr(last_name,1,1) as "initials"
from employees;
-- Steve.K

SELECT substr(first_name, 2,3)||'.'||substr(last_name,1,1) as "initials"
from employees;

--TASK
--initials, fullname, email(cydeo)

--create custom view WITH CREATE VIEW

create view emailList as select substr(first_name, 1,1)||'.'||substr(last_name,1,1) as "initials",
       first_name||' '||last_name as "full_name",
       lower(email||'@cydeo') as "cydeo_email"
from employees;

--create or replace view table --custom view
select *
from emailList;

CREATE VIEW PERSONEL_INFO AS
select first_name||' '||last_name as "Full Name" from employees;

CREATE OR REPLACE VIEW PERSONEL_INFO AS -- FOR UPDATE
select first_name||' '||last_name as "Full Name", salary*12 as "Annual Salary" from employees;

--drop custom view
drop view emailList;

--TABLE Aliases
--employees e, departments d
SELECT e.FIRST_NAME, d.DEPARTMENT_NAME FROM employees e, departments d;

