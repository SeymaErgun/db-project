select * from CUSTOMER;

select *from ADDRESS;

select first_name,last_name,address,phone
from customer join address
                   on customer.address_id = address.address_id;
select first_name,last_name,c.address_id,address,phone
from customer c left join address a
                          on c.address_id = a.address_id;
select first_name,last_name,c.address_id,a.address_id,address,phone
from customer c right join address a
                           on c.address_id = a.address_id;
select first_name,last_name,c.address_id,a.address_id,address,phone
from customer c full join address a
                          on c.address_id = a.address_id;