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

describe distributor;
describe orders;
describe products;



