--add column
alter table distributor add addedlater int;
describe distributor;

--rename column
alter table distributor rename column d_name to dis_name;
describe distributor;
alter table distributor rename column dis_name to d_name;
describe distributor;

--modify column
alter table distributor modify d_name varchar(35);
describe distributor;
alter table distributor modify d_name varchar(30);
describe distributor;

--drop column
alter table distributor drop column addedlater;
describe distributor;

--update value
select * from distributor;

update distributor set d_name='sabbir_hossain' where distributor_id=01;
select *from distributor;

-- delete values
select * from distributor;
delete from distributor where distributor_id=04;
select * from distributor;

