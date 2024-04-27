select *
from testers;
select *
from developers;
            -- SET OPERATORS --
-- UNION -> combines, removes duplicates, sorts
-- UNION ALL-> combines, does not remove duplicates, does not sort
-- EXCEPT -> show records from query1 that are not present in query2
-- INTERSECT -> show common records from 2 queries

--UNION --combines, removes duplicates, sorts
select * from testers
UNION
select *  from developers; -- didn't remove duplicate because the remove duplicate needs to exact matching

--what if I bring only names
select names from testers
UNION
select names  from developers;--since it has exact match in names, removes duplicate

--UNION ALL--combines, does not remove duplicates, does not sort
select names from testers
UNION ALL
select names  from developers;--EVEN IF IT HAS EXACT MATCH, IT does not remove duplicates

--IQ:DIFFERENCES BETWEEN UNION AND UNION ALL
select * from developers
UNION
select *  from developers;

select * from developers
UNION ALL
select *  from developers;

--EXCEPT--show records from query1 that are not present in query2
SELECT names FROM developers
EXCEPT
SELECT names FROM testers;

select * from developers
EXCEPT
select *  from developers;--NOTHING BECAUSE EVERYTHING IS IDENTICAL

--INTERSECT -- COMMON ONE--show common records from 2 queries

SELECT names FROM developers
INTERSECT
SELECT names FROM testers; -- LOOK FOR IDENTICAL

select * from developers
INTERSECT
select *  from developers; --SAME TABLE BECAUSE EVERYTHING IS IDENTICAL