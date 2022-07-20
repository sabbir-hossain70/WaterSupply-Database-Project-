--join
select p.product_id,p.order_status,o.order_id
from products p,orders o
where p.order_id=o.order_id;

--natural join
select * from products natural join orders;

--inner join
select product_id,p.payment_status 
from products p inner join orders o
using(order_id);

--cross join
select * from products cross join orders;

--left outer join
select product_id,order_status,order_id
 from products left outer join orders 
using(order_id);

--right outer join
select product_id,order_status,order_id
 from products right outer join orders 
using(order_id);

--full outer join
select product_id,order_status,order_id
 from products full outer join orders 
using(order_id);