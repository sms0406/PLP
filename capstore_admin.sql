create database capStore;
use capStore;
create table merchant(merchant_Id bigint primary key auto_increment,merchant_Name  varchar(40) not null, merchant_Type varchar(15) not null, phone_No varchar(10) not null, email varchar(50) not null,password varchar(15),govt_Proof_Type  varchar(10),govt_Proof varchar(16));
create table adminlogin(admin_Id int primary key auto_increment,name varchar(20),email varchar(30),password varchar(30),mobno varchar(20));
insert into adminlogin values(1,'mayank','mayank@gmail.com','1234','9803538343');
drop table adminlogin;
select * from adminlogin;