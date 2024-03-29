use capStore;
drop table adminlogin;
create table adminlogin(admin_Id int(11) primary key auto_increment,name varchar(20),email varchar(30),password varchar(100),mobno varchar(20));
insert into adminlogin values(1,'admin1','admin1@gmail.com','xeGGw+7a9/rRrt5FogXLqQ==','9803538343');
insert into adminlogin values(2,'admin2','admin2@gmail.com','xeGGw+7a9/rRrt5FogXLqQ==','9898989898');
drop table merchant;
create table merchant(merchant_Id bigint primary key auto_increment,merchant_Name  varchar(40) not null,phone_No varchar(10) not null, email varchar(50) not null,password varchar(100),govt_Proof_Type  varchar(10),govt_Proof varchar(16));
insert into merchant values(1,'Ram Enterprises','9876543210','merchant1@gmail.com','xeGGw+7a9/rRrt5FogXLqQ==','Aadhar','1234564897');
insert into merchant values(2,'Lakshman Enterprises','9876543210','merchant2@gmail.com','xeGGw+7a9/rRrt5FogXLqQ==','Aadhar','86484488441');
insert into merchant values(3,'Bharat Enterprises','7897897898','merchant3@gmail.com','xeGGw+7a9/rRrt5FogXLqQ==','Aadhar','897546513254');
insert into merchant values(4,'Shatrugan Enterprises','9895898984','merchant4@gmail.com','xeGGw+7a9/rRrt5FogXLqQ==','Aadhar','6548749455');
drop table customer;
CREATE TABLE customer(customer_id int(25) PRIMARY KEY auto_increment,name varchar(50) Not NULL,email varchar(50) NOT NULL,password varchar(100) NOT NULL,address varchar(50) NOT NULL,mobile_no varchar(12) NOT NULL);
insert into customer values(1,'customer1','customer1@gmail.com','xeGGw+7a9/rRrt5FogXLqQ==','amritsar punjab','9803538343');
insert into customer values(2,'customer2','customer2@gmail.com','xeGGw+7a9/rRrt5FogXLqQ==','chandigarh punjab','9999999888');
insert into customer values(3,'customer3','customer3@gmail.com','xeGGw+7a9/rRrt5FogXLqQ==','chennai, Tamil Nadu','981558343');
insert into customer values(4,'customer4','customer4@gmail.com','xeGGw+7a9/rRrt5FogXLqQ==','Mumabi maharashtra','949641688');
drop table product;
create table product(prod_Id bigint primary key auto_increment, prod_Name varchar(50) not null, prod_Price double(10,2) not null, prod_Quantity bigint not null, prod_Discount double(6,2) not null, prod_Category varchar(50) not null, prod_Desc varchar(500) not null, prod_Image varchar(550), merchant_Id bigint references merchant(merchant_Id));
insert into product values(100, 'Nike Jordan', 20000, 5, 6, 'Shoes', 'The best in class basketball shoes with Jordan copyrights', "https://www.flightclub.com/media/catalog/product/cache/1/image/1600x1140/9df78eab33525d08d6e5fb8d27136e95/0/1/012234_01.jpg", 1);
insert into product values(101, 'Nike Jordan', 19000, 45, 6, 'Shoes', 'The best in class basketball shoes with Jordan copyrights', "https://www.flightclub.com/media/catalog/product/cache/1/image/1600x1140/9df78eab33525d08d6e5fb8d27136e95/0/1/012234_01.jpg", 2);
insert into product values(102, 'Nike Jordan', 18000, 25, 6, 'Shoes', 'The best in class basketball shoes with Jordan copyrights', "https://www.flightclub.com/media/catalog/product/cache/1/image/1600x1140/9df78eab33525d08d6e5fb8d27136e95/0/1/012234_01.jpg", 3);
insert into product values(103, 'Nike Jordan', 17000, 75, 6, 'Shoes', 'The best in class basketball shoes with Jordan copyrights', "https://www.flightclub.com/media/catalog/product/cache/1/image/1600x1140/9df78eab33525d08d6e5fb8d27136e95/0/1/012234_01.jpg", 4);
insert into product values(104, '3 Tshirts', 2000, 501, 20, 'Tshirts', 'The best tailored fit tshirts pack of 3 by wrangler for men', "http://assets.myntassets.com/assets/images/1554409/2016/10/26/11477468430224-Duke-Men-Tshirts-9261477468429864-1.jpg", 1);
insert into product values(105, '3 Tshirts', 1500, 542, 20, 'Tshirts', 'The best tailored fit tshirts pack of 3 by wrangler for men', "http://assets.myntassets.com/assets/images/1554409/2016/10/26/11477468430224-Duke-Men-Tshirts-9261477468429864-1.jpg", 3);
insert into product values(106, 'Jeans', 2000, 52, 10, 'Jeans', 'Skinny fit jeans by wrangler for men', "http://assets.myntassets.com/assets/images/7158501/2018/11/19/027f556e-1968-4087-86ad-bb6b92791b751542611361172-Calvin-Klein-Jeans-Men-Jeans-41542611360990-1.jpg", 1);
insert into product values(107, 'Jeans', 3500, 53, 20, 'Jeans', 'Skinny fit jeans by wrangler for men', "http://assets.myntassets.com/assets/images/7158501/2018/11/19/027f556e-1968-4087-86ad-bb6b92791b751542611361172-Calvin-Klein-Jeans-Men-Jeans-41542611360990-1.jpg", 4);
insert into product values(108, 'iPhone 11 pro max', 109000, 50,1, 'Phone', 'The newly launched iPhone 11 max pro', "https://pmcvariety.files.wordpress.com/2019/09/img_20190910_104904-e1568138730687.jpg?w=1000&h=563&crop=1", 1);
insert into product values(109, 'iPhone 11 pro max', 101000, 50,1, 'Phone', 'The newly launched iPhone 11 max pro', "https://pmcvariety.files.wordpress.com/2019/09/img_20190910_104904-e1568138730687.jpg?w=1000&h=563&crop=1", 2);
drop table customer_orders;
CREATE TABLE customer_orders (customer_id int NOT NULL references customer(customer_id),product_name varchar(20) NOT NULL,order_id  int primary key auto_increment,quantity int,amount double(10,2),delivery_status varchar(20) default 'Not Delivered');
insert into customer_orders(customer_id,product_name,order_id,quantity,amount) values(1,'iPhone 11 pro max',1,1,101000);
insert into customer_orders(customer_id,product_name,order_id,quantity,amount) values(2,'Jeans',2,2,7000);
insert into customer_orders(customer_id,product_name,order_id,quantity,amount) values(3,'3 Tshirts',3,2,4000);
insert into customer_orders(customer_id,product_name,order_id,quantity,amount) values(4,'Nike Jordan',4,1,18000);
insert into customer_orders(customer_id,product_name,order_id,quantity,amount) values(5,'3 Tshirts',5,1,2000);
