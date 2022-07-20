--in
select order_id,customer_name
from orders
where order_id in(
	select order_id from products
	where address like '%teli%'
);

--union all
select distributor_id,d_name
from distributor
where d_name='sabbir_hossain'
union all
select distributor_id,d_name
from distributor
where distributor_id <3;

--union
select distributor_id,d_name
from distributor
where d_name='sabbir_hossain'
union
select distributor_id,d_name
from distributor
where distributor_id <3;

--intersect
select distributor_id,d_name
from distributor
where d_name='sabbir_hossain'
intersect
select distributor_id,d_name
from distributor
where distributor_id <3;

--minus
select distributor_id,d_name
from distributor
where d_name='sabbir_hossain'
minus
select distributor_id,d_name
from distributor
where distributor_id >2;