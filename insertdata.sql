
insert into distributor(distributor_id,d_name,password) values(01,'sabbir','sabbir');
insert into distributor(distributor_id,d_name,password) values(02,'hossain','hossainshaikat');
insert into distributor(distributor_id,d_name,password) values(03,'shaikat','shaikat');
insert into distributor(distributor_id,d_name,password) values(04,'abc','def');

insert into orders(order_id,date_time,customer_name,phone,address)
values(01,'7/3/2022','abc',01763888888,'teligati');
insert into orders(order_id,date_time,customer_name,phone,address)
values(02,'7/3/2022','def',01793888888,'teligati');

insert into products(product_id,order_status,payment_status,delivery_status,order_id,distributor_id)
values(01,'ordered','not paid','not delivered',2,3);
insert into products(product_id,order_status,payment_status,delivery_status,order_id,distributor_id)
values(02,'ordered','not paid','delivered',1,2);