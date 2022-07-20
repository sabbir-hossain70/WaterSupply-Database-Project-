select * from distributor 
where not d_name='sabbir_hossain';

select distributor_id,d_name
from distributor
where distributor_id>=2 and distributor_id<=4;

select * from distributor
where distributor_id between 1 and 3;
select * from distributor
where distributor_id in(2,3);

select * from distributor
order by d_name;


select max(distributor_id) from distributor;
select min(distributor_id) from distributor;
select sum(distributor_id) from distributor;

select count(distinct(distributor_id)) from distributor;
select avg(distributor_id) from distributor;

 