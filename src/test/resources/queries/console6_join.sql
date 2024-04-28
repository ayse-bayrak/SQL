SELECT * FROM customer;
SELECT * FROM address;

--MILE STONE FOR %95 SQL SKILL

Select first_name, last_name, address, phone
from customer inner join address
on customer.address_id = address.address_id;
            --this is intersection (kesisim)

Select first_name, last_name, address, phone
from customer left outer join address
on customer.address_id = address.address_id;

--left outer/ left join --> there is no difference

Select first_name, last_name, address, phone
from customer right join address
on customer.address_id = address.address_id;

Select first_name, last_name, address, phone
from customer full join address
on customer.address_id = address.address_id;

--querry
Select first_name, last_name, address, phone
from customer full join address
on customer.address_id = address.address_id
where customer.address_id IS NULL;

--ALIAS
Select first_name, last_name, address, phone
from customer c full join address a
on c.address_id = a.address_id;

SELECT first_name,last_name,c.address_id,a.address_id,address,phone
FROM customer c FULL OUTER JOIN address a
ON c.address_id = a.address_id;
