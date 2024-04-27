select * from employees;
CREATE OR REPLACE FUNCTION get_jobId_count_by_name(job_name varchar)
    returns int -- return type
language plpgsql-- languageName--until her LIKE METHOD SIGNATURE
AS --LIKE METHOD BODY, LIKE CURLY BRACES
$$
    DECLARE
    jobId_count integer; -- I DEFINE MY VARIABLE
    BEGIN
    SELECT COUNT(*)
    INTO jobId_count
    FROM employees
    WHERE  job_id = job_name;
    RETURN jobId_count;
    END
    $$;

select get_jobId_count_by_name('IT_PROG');--5
select get_jobId_count_by_name('SA_REP');--30
DROP FUNCTION get_jobId_count_by_name(job_name varchar);

CREATE OR REPLACE FUNCTION get_employees_managed_by_id(mngr_id integer)
returns table
(
    employee_firstname varchar,
    employee_lastname varchar
)
language plpgsql
AS
$$
    BEGIN
    RETURN QUERY
    SELECT first_name,last_name
    FROM employees
    where manager_id= mngr_id;
    END
$$;

SELECT * FROM get_employees_managed_by_id(103);