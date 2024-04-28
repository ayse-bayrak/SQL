SELECT * FROM scrumteam;

--ALTER--To change existing table structure
    --      ALTER Actions       --
-- ADDING NEW COLUMN
-- ADD COLUMN : adds column to the table
-- DROP COLUMN : drops the column from the table
-- RENAME COLUMN : renames the column name
-- RENAME TO : renames the table name

-- ADDING NEW COLUMN
ALTER TABLE scrumteam ADD salary Integer NOT NULL;

UPDATE ScrumTeam
SET salary = 120000
WHERE Emp_ID = 1;

UPDATE ScrumTeam
SET salary = 150000
WHERE Emp_ID = 2;


UPDATE ScrumTeam
SET salary = 90000
WHERE Emp_ID = 4;

--RENAME COLUMN

ALTER TABLE scrumteam RENAME COLUMN salary to annual_salary;

select * from scrumteam;


--delete/DROP COLUMN

ALTER TABLE scrumteam DROP COLUMN annual_salary;

--how to change table name
ALTER TABLE scrumteam RENAME TO agileTeam;
Select * from agileTeam;

--TRUNCATE --FOR EMPTY TABLE
--Truncating will remove all data from the table but not delete the table
TRUNCATE TABLE agileTeam;-- FOR EMPTY TABLE

--DROP TABLE--To remove existing table from the database,
DROP TABLE agileTeam; -- TO REMOVE TABLE