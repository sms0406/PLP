create database capStore;
use capStore;
create table merchant(merchant_Id bigint primary key auto_increment,merchant_Name  varchar(40) not null, merchant_Type varchar(15) not null, phone_No varchar(10) not null, email varchar(50) not null,password varchar(15),govt_Proof_Type  varchar(10),govt_Proof varchar(16));
insert into merchant values(1001,"Raju Enterprises","Direct","1234567890","raju@gmail.com","raju1234","Adhaar","1234567898745632");
insert into merchant values(1002,"Raju Enterprises","Direct","1234567890","raju@gmail.com","raju1234","Adhaar","1234567898745632");
insert into merchant values(1003,"Raju Enterprises","Direct","1234567890","raju@gmail.com","raju1234","Adhaar","1234567898745632");

create table adminlogin(admin_Id int primary key auto_increment,name varchar(20),email varchar(30),password varchar(30),mobno varchar(20));
insert into adminlogin values(1,'mayank','mayank@gmail.com','1234','9803538343');
drop table adminlogin;
select * from adminlogin;

CREATE TABLE customer(
  customer_id int(25) PRIMARY KEY auto_increment,
  name varchar(50) Not NULL,
  email varchar(50) NOT NULL,
  password varchar(20) NOT NULL,
  address varchar(50) NOT NULL,
  mobile_no varchar(12) NOT NULL,
  gender varchar(10) Not NULL
);

CREATE TABLE customer_orders (
  
  customer_id int NOT NULL references customer(customer_id),
  product_name varchar(20) NOT NULL,
  order_id  int primary key auto_increment,
  quantity int,
  amount double(10,2)
) ;

insert into customer values(1,'mayank','mayank@gmail.com','1234','amritsar punjab','9803538343','male');
insert into customer values(2,'joti','sadas@gmail.com','12344','Chennai Tamil Nadu','9815545843','female');

insert into customer_orders values(1,'shoes',3,50,255000);
insert into customer_orders values(1,'shoes',2,50,55000);
