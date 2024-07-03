--SalesPerson
    --Sp_id
    --Sp_name
--Sales
    --Sales_id
    --Amount
    --Sp_id
    --Company_id
--Company
    --Company_id
    --Company_name
-- 1-Can you display sales person names ending with “th”?
select sp_name
from SalesPerson
where sp_name like '%th';

-- 2-Can you display company names for company_id 21,32,412,43,25 ?
Select company_name
From Compony
Where compony_id IN (21,32,412,43,25);

-- 3-How many Sales person we have in total ?
Select count(*)
From SalesPerson;
-- 4-Can you display the sales person name who made a sale to company name  “Walmart”?
--This is very nice question
Select sp_name
From SalesPerson sP join sales s
on sP.sp_id=s.sp_id
join company c
on s.company_id = c.company_id
where c.company_name = ‘walmart’;

-- 5-Can you display average sales amount for each sales person id?
Select avg(amount), sp_id
From sales
Group by sp_id;

