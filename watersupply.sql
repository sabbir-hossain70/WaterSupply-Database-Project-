drop table products;
drop table orders;
drop table distributor;

create table distributor(
    distributor_id int not null primary key,
    d_name varchar(30),
    password varchar(30)
);

create table orders(
    order_id int not null primary key,
    date_time varchar(30),
    customer_name varchar(30),
    phone int,
    address varchar(30)
);

create table products(
    product_id int not null primary key,
    order_status varchar(30),
    delivery_status varchar(30),
    payment_status varchar(30),
    distributor_id int,
     foreign key (distributor_id) references distributor(distributor_id),
    order_id int ,
    foreign key (order_id) references orders(order_id)
);

insert into distributor(distributor_id,d_name,password) values(01,'sabbir','sabbir');
insert into distributor(distributor_id,d_name,password) values(02,'hossain','hossainshaikat');
insert into distributor(distributor_id,d_name,password) values(03,'shaikat','shaikat');

insert into orders(order_id,date_time,customer_name,phone,address)
values(01,'7/3/2022','abc',01763888888,'teligati');
insert into orders(order_id,date_time,customer_name,phone,address)
values(02,'7/3/2022','def',01793888888,'teligati');

insert into products(product_id,order_status,payment_status,delivery_status,order_id,distributor_id)
values(01,'ordered','not paid','not delivered',2,3);
insert into products(product_id,order_status,payment_status,delivery_status,order_id,distributor_id)
values(02,'ordered','not paid','delivered',1,2);

