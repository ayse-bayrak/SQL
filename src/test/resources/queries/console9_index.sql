CREATE TABLE Towns (
                       id SERIAL UNIQUE NOT NULL,
                       code VARCHAR(10) NOT NULL, -- not unique
                       article TEXT,
                       name TEXT NOT NULL -- not unique
);


insert into towns (
    code, article, name
)
select
    left(md5(i::text), 10),
    md5(random()::text),
    md5(random()::text)
from generate_series(1, 1000000) s(i);

SELECT COUNT(*)
FROM towns;--1000000

select *
from towns;

EXPLAIN ANALYSE
SELECT * FROM towns
WHERE name ='4dd6bd33837ada5ce09cb0fbb361d808';
--360.199

EXPLAIN ANALYSE
SELECT * FROM towns
WHERE id=1232;
--0.206

create index idx_towns_name ON towns(name); -- this name is common practice

EXPLAIN ANALYSE
SELECT * FROM towns
WHERE name ='4dd6bd33837ada5ce09cb0fbb361d808';
--0.628 -- with index it is faster

--how to drop index
DROP INDEX IF EXISTS idx_towns_name;
--how to check available indexes in database
SELECT
    tablename,
    indexname,
    indexdef
FROM
    pg_indexes
WHERE
        schemaname = 'public'
ORDER BY
    tablename,
    indexname;