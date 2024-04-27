select * from countries;

--DDL&DML
-- • DDL: Data Definition Language
-- • It is used to define data structures
-- CREATE
-- DROP
-- TRUNCATE
-- ALTER

-- • DML: Data Manipulation Language
-- • It is used to define data itself
-- SELECT
-- INSERT
-- UPDATE
-- DELETE

--CREATE TABLE
/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/
--COLUMN CONSTRAINTS
-- •NOT NULL — the value of the column cannot be NULL.
-- •UNIQUE —the value of the column must be unique across the whole table.
-- •PRIMARY KEY — Combination of both NOT NULL and UNIQUE constraints.
-- •REFERENCES-OtherTable (PKColumn)


create table ScrumTeam(
    Emp_ID Integer PRIMARY KEY,--FIRST COLUMN
    FirstName varchar(30) NOT NULL,
    LastName varchar(30),
    JobTitle varchar(20)
);

select * from scrumteam;

--INSERT DATA TO TABLE
/*
INSERT INTO tableName (column1, column2,…)
VALUES (value1, value2 … );
*/

INSERT INTO scrumteam(Emp_ID, FirstName, LastName, JobTitle)
VALUES (1, 'SEVERUS', 'SNAPE', 'TESTER');

INSERT INTO scrumteam VALUES (2, 'HAROLD', 'FINCH', 'Developer');
-- IF I WANT TO INSERT ALL THE COLUMN I DON'T HAVE TO PUT COLUMN NAME, I can just say values SQL can understand

INSERT INTO scrumteam VALUES (3, 'Ayse', 'Gunes Bayrak', 'Developer');
INSERT INTO scrumteam VALUES (4, 'Ziya', 'Bayrak', 'Pharmacist');

--UPDATE data
/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , …
WHERE condition;
*/

UPDATE ScrumTeam
SET jobtitle = 'DevOps'
WHERE Emp_ID = 4;

--DELETE from table
/*
DELETE FROM table_name
WHERE condition;
*/

DELETE FROM ScrumTeam
WHERE Emp_ID=3;

COMMIT-- TO KIND OF SAVE