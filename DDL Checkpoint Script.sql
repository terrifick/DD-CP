create database DDL_Checkpoint;
use DDL_Checkpoint;
create table Customer(Customer_id varchar(20) primary key, Customer_Name varchar(20) not null, Customer_Tel numeric);
create table Product(Product_id varchar(20) primary key, Product_Name varchar(20) not null, Price int unsigned );
create table Orders(Customer_id varchar(20), Product_id varchar(20), Quantity int, Total_amount int, foreign key(Customer_id) references Customer(Customer_id), foreign key(Product_id) references Product(Product_id));
alter table Product add Category varchar(20) after Price;
alter table Orders add OrderDate datetime default current_timestamp after Total_amount;
show tables;

