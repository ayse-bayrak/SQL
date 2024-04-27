create table ScrumTeam(
                          Emp_ID Integer PRIMARY KEY,--FIRST COLUMN
                          FirstName varchar(30) NOT NULL,
                          LastName varchar(30),
                          JobTitle varchar(20)
);

INSERT INTO scrumteam(Emp_ID, FirstName, LastName, JobTitle)
VALUES (1, 'SEVERUS', 'SNAPE', 'TESTER');
INSERT INTO scrumteam VALUES (2, 'HAROLD', 'FINCH', 'Developer');
-- IF I WANT TO INSERT ALL THE COLUMN I DON'T HAVE TO PUT COLUMN NAME, I can just say values SQL can understand

INSERT INTO scrumteam VALUES (3, 'Ayse', 'Gunes Bayrak', 'Developer');
INSERT INTO scrumteam VALUES (4, 'Ziya', 'Bayrak', 'Pharmacist');

--write a procedure that will accept 2 params, emp_id, job_title, it will update that employee job title
--based on what we provide

CREATE OR REPLACE PROCEDURE  update_jobTitle_by_id(empId integer, job_title varchar)
language plpgsql
AS
    $$
    BEGIN
    UPDATE scrumteam
        SET jobtitle=job_title
        where emp_id = empId;
end;
    $$;
call update_jobTitle_by_id(4, 'Spring Developer');
select *
from scrumteam;