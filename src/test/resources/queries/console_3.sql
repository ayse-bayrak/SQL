--How can we rename the column we displayed not permanently only for display and for using
--using AS
select first_name AS "given_name", last_name AS "surname"
from employees;

--how to concatenate

select first_name||' '||last_name AS "full_name"
from employees;

--TASK
-- add @cydeo.com to email and name new column to full_email
select email||'@cydeo' as "full_email"
from employees;

select lower(email||'@cydeo') as "full_email"
from employees;

select upper(email||'@cydeo') as "full_email"
from employees;

--other function length

    select first_name, length(first_name) as "length_name"
    from employees;

-- add @cydeo.com to first_name and last_name and name new column to full_email
select first_name||last_name||'@cydeo' as "full_email"
from employees;

--substr(colName, begIndex, NUmberOfChar)
SELECT substr(first_name, 1,1)||'.'||substr(last_name,1,1) as "initials"
from employees;

SELECT substr(first_name, 1,5)||'.'||substr(last_name,1,1) as "initials"
from employees;

SELECT substr(first_name, 2,3)||'.'||substr(last_name,1,1) as "initials"
from employees;

--TASK
--initials, fullname, email(cydeo)

--create custom view WITH CREATE VIEW

create view emailList as select substr(first_name, 1,1)||'.'||substr(last_name,1,1) as "initials",
       first_name||' '||last_name as "full_name",
       lower(email||'@cydeo') as "cydeo_email"
from employees;

--create custom view
select *
from emailList;

--drop custom view
drop view emailList;

