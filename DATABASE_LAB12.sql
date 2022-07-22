--create database Dellstore ;
--go

use Dellstore ;
go

--CREATE TABLE customers (
--    customerid int primary key NOT NULL,
--    firstname character varying(50) NOT NULL,
--    lastname character varying(50) NOT NULL,
--    address1 character varying(50) NOT NULL,
--    address2 character varying(50),
--    city character varying(50) NOT NULL,
--    state character varying(50),
--    zip integer,
--    country character varying(50) NOT NULL,
--    region smallint NOT NULL,
--    email character varying(50),
--    phone character varying(50),
--    creditcardtype integer NOT NULL,
--    creditcard character varying(50) NOT NULL,
--    creditcardexpiration character varying(50) NOT NULL,
--    username character varying(50) NOT NULL,
--    "password" character varying(50) NOT NULL,
--    age smallint,
--    income integer,
--    gender character varying(1)
--);


--CREATE TABLE orders (
--    orderid int primary key NOT NULL,
--    orderdate date NOT NULL,
--    customerid integer,
--    netamount numeric(12,2) NOT NULL,
--    tax numeric(12,2) NOT NULL,
--    totalamount numeric(12,2) NOT NULL,
--	foreign key (customerid) references customers(customerid) on update cascade on delete cascade 
--);


--CREATE TABLE products (
--    prod_id int primary key NOT NULL,
--    category integer NOT NULL,
--    title character varying(50) NOT NULL,
--    actor character varying(50) NOT NULL,
--    price numeric(12,2) NOT NULL,
--    special smallint,
--    common_prod_id integer NOT NULL
--);

--CREATE TABLE reorder (
--    prod_id integer NOT NULL,
--    date_low date NOT NULL,
--    quan_low integer NOT NULL,
--    date_reordered date,
--    quan_reordered integer,
--    date_expected date,
--	foreign key (prod_id) references products (prod_id) on update cascade on delete cascade 
--);


--CREATE TABLE orderlines (
--    orderlineid integer NOT NULL,
--    orderid integer NOT NULL,
--    prod_id integer NOT NULL,
--    quantity smallint NOT NULL,
--    orderdate date NOT NULL,
--	foreign key(orderid) references orders(orderid) on update cascade on delete cascade ,
--);

--alter table orderlines add foreign key(prod_id) references products(prod_id) on update cascade on delete cascade;

--CREATE TABLE inventory (
--    prod_id integer NOT NULL,
--    quan_in_stock integer NOT NULL,
--    sales integer NOT NULL,
--	foreign key(prod_id) references products(prod_id) on update cascade on delete cascade
--);

--ALTER TABLE inventory
--    ADD CONSTRAINT inventory_pkey PRIMARY KEY (prod_id);



--CREATE TABLE categories (
--    categoryid int primary key NOT NULL,
--    categoryname character varying(50) NOT NULL,
--);

--alter table products add foreign key(category) references categories(categoryid) on update cascade on delete cascade;



--alter table customers drop column address1,address2,zip,creditcardtype,creditcard,creditcardexpiration,username,"password",income,gender;
--alter table orders drop column netamount , tax , totalamount;


--insert into customers values
--(1,'VKUUXF','DHASHGD','EIWFKD','SD','US','1','ITHOMQJNYX@dell.com','423432432','55'),
--(2,'FDKJ','GKJLS','FSLND','AZ','US','2','ITHOMQJNYX@dell.com','423432432','55'),
--(3,'GDS','HTFD','WERDS','AZ','US','2','ITHOMQJNYX@dell.com','423432432','55');
--(4,'FDNF','VXVCX','FDSDF','OH','US','3','ITHOMQJNYX@dell.com','423432432','55'),
--(5,'FDSBF','FNGD','EIWvSDFEKD','MS','US','4','ITHOMQJNYX@dell.com','423432432','55'),
--(6,'VDS','DSASD','EIWFKD','AZ','US','2','ITHOMQJNYX@dell.com','423432432','55'),
--(7,'GF','SDF','RVCX','IN','US','1','ITHOMQJNYX@dell.com','423432432','55'),
--(8,'ASD','BFS','VXC','NV','US','4','ITHOMQJNYX@dell.com','423432432','55'),
--(9,'TRW','EWRV','BFCX','NJ','US','2','ITHOMQJNYX@dell.com','423432432','55'),
--(10,'XZZXC','SDDSA','DSDAS','VT','US','3','ITHOMQJNYX@dell.com','423432432','55'),
--(11,'BCX','QWE','EIWFXZCGFSKD','TN','US','2','ITHOMQJNYX@dell.com','423432432','55'),
--(12,'SDABFS','weQWE','DVXZ','PA','US','4','ITHOMQJNYX@dell.com','423432432','55'),
--(13,'SADQWSAD','QEQWESD','DVSVZX','UT','US','1','ITHOMQJNYX@dell.com','423432432','55'),
--(14,'RWEW','ASG','JKD','DE','US','2','ITHOMQJNYX@dell.com','423432432','55'),
--(15,'DWQI','DASK','DIWQNSK','MA','US','3','ITHOMQJNYX@dell.com','423432432','55'),
--(16,'DASGWR','WEQDSA','EQWCX','AK','US','4','ITHOMQJNYX@dell.com','423432432','55');



--insert into orders values
--(3,'2004-01-27',3),
--(4,'2004-01-27',4),
--(5,'2004-01-27',5),
--(6,'2004-01-27',6),
--(7,'2004-01-27',7),
--(8,'2004-01-27',2),
--(9,'2004-01-27',5),
--(10,'2004-01-27',7),
--(11,'2004-01-27',4),
--(12,'2004-01-27',2),
--(13,'2004-01-27',5),
--(14,'2004-01-27',8),
--(15,'2004-01-27',9),
--(16,'2004-01-27',10),
--(17,'2004-01-27',4),
--(18,'2004-01-27',3),
--(19,'2004-01-27',1),
--(20,'2004-01-27',5),
--(21,'2004-01-27',6),
--(22,'2004-01-27',9),
--(23,'2004-01-27',2),
--(24,'2004-01-27',4),
--(25,'2004-01-27',1),
--(26,'2004-01-27',1),
--(27,'2004-01-27',1);

--insert into categories values 
--(1,'Action'),
--(2,'Animation'),
--(3,'Children'),
--(4,'Classics'),
--(5,'Comedy'),
--(6,'Documentary'),
--(7,'Drama'),
--(8,'Family'),
--(9,'Foreign'),
--(10,'Games'),
--(11,'Horror'),
--(12,'Music'),
--(13,'New'),
--(14,'Sci-Fi'),
--(15,'Sports'),
--(16,'Travel');


--insert into products values
--(1,14,'ACADEMY ACADEMY','ASDGE',25.99,0,1975),
--(2,6,'ACADEMY ACE','DSBC',20.99,0,6289),
--(3,6,'ACADEMY ADAP','dASBCX',28.99,0,7173),
--(4,3,'ACADEMY AFAIR','FDGFSVC',14.99,0,8042),
--(5,3,'ACADEMY AFRICAN','ASDvCX',11.99,0,2183),
--(6,9,'ACADEMY AGENT','GFXCX',15.99,0,5232),
--(7,8,'ACADEMY AIRPALNE','REFEW',25.99,0,6677),
--(8,7,'ACADEMY ALABAMA','QWDDSA',16.99,0,7158),
--(9,2,'ACADEMY ALADDAIN','BBXC',10.99,0,6663),
--(10,15,'ACADEMY ALOMO','FQFEQ',9.99,0,631),
--(11,4,'ACADEMY ASLASKA','BBV',26.99,0,5275),
--(12,7,'ACADEMY AIRPORT','NGRG',23.99,0,324);

--insert into orderlines values
----(1,1,1,1,'2004-01-27'),
--(2,1,3,2,'2004-01-27'),
--(3,1,2,3,'2004-01-27'),
--(4,1,4,4,'2004-01-27'),
--(5,1,5,5,'2004-01-27'),
--(6,1,6,6,'2004-01-27'),
--(7,1,7,7,'2004-01-27'),
--(8,1,8,8,'2004-01-27'),
--(9,1,9,12,'2004-01-27'),
--(1,1,10,5,'2004-01-27'),
--(2,1,11,2,'2004-01-27'),
--(3,1,12,4,'2004-01-27'),
--(4,1,1,6,'2004-01-27'),
--(5,1,1,3,'2004-01-27'),
--(6,1,3,2,'2004-01-27'),
--(7,1,5,7,'2004-01-27'),
--(8,1,7,8,'2004-01-27'),
--(9,1,3,1,'2004-01-27'),
--(1,1,4,4,'2004-01-27'),
--(2,1,7,4,'2004-01-27'),
--(3,1,8,5,'2004-01-27'),
--(4,1,2,6,'2004-01-27'),
--(5,1,4,7,'2004-01-27'),
--(6,1,5,8,'2004-01-27'),
--(7,1,6,9,'2004-01-27'),
--(8,1,8,10,'2004-01-27'),
--(9,1,1,2,'2004-01-27'),
--(1,1,3,3,'2004-01-27'),
--(2,1,2,4,'2004-01-27'),
--(3,1,9,5,'2004-01-27'),
--(4,1,10,2,'2004-01-27'),
--(5,1,11,3,'2004-01-27'),
--(6,1,12,1,'2004-01-27'),
--(7,1,1,4,'2004-01-27'),
--(8,1,8,2,'2004-01-27'),
--(9,1,12,3,'2004-01-27');


--insert into inventory values 
--(1,138,9),
--(2,118,19),
--(3,228,11),
--(4,312,12),
--(5,423,13),
--(6,134,14),
--(7,543,10),
--(8,213,6),
--(9,134,27),
--(10,534,16),
--(11,123,5),
--(12,326,13);


--insert into orderlines values
----(1,2,1,1,'2004-01-27'),
--(2,2,3,2,'2004-01-27'),
--(3,2,2,3,'2004-01-27'),
--(4,2,4,4,'2004-01-27'),
--(5,2,5,5,'2004-01-27'),
--(6,2,6,6,'2004-01-27'),
--(7,2,7,7,'2004-01-27'),
--(8,2,8,8,'2004-01-27'),
--(9,2,9,12,'2004-01-27'),
--(1,2,10,5,'2004-01-27'),
--(2,2,11,2,'2004-01-27'),
--(3,2,12,4,'2004-01-27'),
--(4,2,1,6,'2004-01-27'),
--(5,2,1,3,'2004-01-27'),
--(6,2,3,2,'2004-01-27'),
--(7,2,5,7,'2004-01-27'),
--(8,2,7,8,'2004-01-27'),
--(9,2,3,1,'2004-01-27'),
--(1,2,4,4,'2004-01-27'),
--(2,2,7,4,'2004-01-27'),
--(3,2,8,5,'2004-01-27'),
--(4,2,2,6,'2004-01-27');


--insert into orderlines values
--(1,3,1,1,'2004-01-27'),
--(2,3,3,2,'2004-01-27'),
--(3,3,2,3,'2004-01-27'),
--(4,3,4,4,'2004-01-27'),
--(5,3,5,5,'2004-01-27'),
--(6,3,6,6,'2004-01-27'),
--(7,3,7,7,'2004-01-27'),
--(8,3,8,8,'2004-01-27'),
--(9,3,9,12,'2004-01-27'),
--(1,3,10,5,'2004-01-27');

--insert into orderlines values
--(1,26,1,1,'2004-01-27'),
--(2,26,3,2,'2004-01-27'),
--(3,26,2,3,'2004-01-27'),
--(4,26,4,4,'2004-01-27'),
--(5,26,5,5,'2004-01-27');



-- 1 .
--create index idx_customers_country on customers(country);
--select * from customers where country = 'US';

-- 2.
--create index idx_products_price on products(price);
--select a.* , d.tien from orders as a 
--join (select b.orderid , sum(b.quantity*c.price)as tien from orderlines as b join products as c on b.prod_id=c.prod_id group by b.orderid)
--as d on a.orderid = d.orderid 
--where tien > 1000;

-- 3.
select * from orders
