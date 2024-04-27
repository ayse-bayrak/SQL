select first_name, salary,
       CASE
           WHEN salary < 7000 THEN 'UNDER PAID'
            WHEN SALARY>7000 THEN 'PAID WELL'
            ELSE 'INPAID'
       END as category

from employees;