-- create database Production ;
-- go
--use  Production ;
--go
--create table categories (
--category_id int primary key,
--category_name varchar(30)
--);
--go
--create table brands (
--brand_id int primary key,
--brand_name varchar(30)
--);
--go
--create table products (
--product_id int primary key,
--product_name varchar(30),
--brand_id int ,
--category_id int,
--model_year int ,
--list_price int ,
--foreign key (brand_id) references brands(brand_id),
--foreign key (category_id) references categories(category_id)
--);
--go

--insert into categories (category_id , category_name) values (1,'bup be');
--insert into categories (category_id , category_name) values (2,'oto');
--insert into categories (category_id , category_name) values (3,'xe may');
--insert into categories (category_id , category_name) values (4,'may bay');
--insert into categories (category_id , category_name) values (5,'sieu nhan');
--insert into categories (category_id , category_name) values (6,'xe dap');
--insert into categories (category_id , category_name) values (7,'bong da');
--insert into categories (category_id , category_name) values (8,'bong ro');
--insert into categories (category_id , category_name) values (9,'cau long');
--insert into categories (category_id , category_name) values (10,'may tinh');
--insert into categories (category_id , category_name) values (11,'cap sach');
--insert into categories (category_id , category_name) values (12,'sofa');

--insert into brands values
--(1, 'brand1'),
--(2, 'brand2'),
--(3, 'brand3'),
--(4, 'brand4'),
--(5, 'brand5'),
--(6, 'brand6'),
--(7, 'brand7'),
--(8, 'brand8'),
--(9, 'brand9'),
--(10, 'brand10')

--insert into products values
--(1,'chuot may tinh',3,10,2020,200000),
--(2,'ban phim',4,10,2022,50000),
--(3,'ban',1,12,2021,5000000),
--(4,'ghe',1,12,2019,2000000),
--(5,'audi',6,2,2020,3000),
--(6,'honda',7,3,2018,123456),
--(7,'boeing',8,4,2010,55200000),
--(8,'gao',3,5,2017,30000),
--(9,'asama',9,6,2018,20000),
--(10,'pogba',10,7,2016,88880000),
--(11,'goldenstate',4,8,2020,54354387),
--(12,'tien minh',5,9,2011,200),
--(13,'logitech',5,10,2020,100),
--(14,'TheNorthFace',2,11,2015,500),
--(15,'airbus',3,4,2020,200000),
--(16,'anabelle',8,1,2017,50313),
--(17,'giant',3,6,2009,5233),
--(18,'Vin',10,2,2020,13240000),
--(19,'Yamaha',6,3,2020,342423),
--(20,'Burhno',3,7,2022,31257),
--(21,'Kevin',1,8,2005,432423),
--(22,'Maguire',3,7,2019,1243),
--(23,'Zowie',5,10,2022,213),
--(24,'HP',4,10,2021,2000),
--(25,'BaSao',8,9,2013,20),
--(26,'BMW',1,2,2020,365645),
--(27,'Mer',1,2,2017,34293058)



-- b

-- 1.
--create view v_product as select d.product_id, d.product_name ,d.model_year , d.list_price,c.brand_name ,d.category_name from brands as c join (select a.category_name, b.product_id , b.product_name , b.model_year, b.brand_id,b.list_price from products as b join categories as a on b.category_id = a.category_id ) as d on d.brand_id = c.brand_id;

-- 2.
--select * from v_product where model_year = 2022

-- 3.
--alter view v_product as select d.product_id, d.product_name ,d.model_year , d.list_price,c.brand_name ,d.category_name from brands as c join (select a.category_name, b.product_id , b.product_name , b.model_year, b.brand_id,b.list_price from products as b join categories as a on b.category_id = a.category_id ) as d on d.brand_id = c.brand_id and d.list_price > 100000

-- 4.
--



--c

-- 1.
-- begin transaction Trans ;

-- 2.
-- Save transaction SP1 ;

-- 3.
-- update products set list_price += 100000 where product_name = 'logitech'
-- save transaction SP2;

-- 4.
-- 
