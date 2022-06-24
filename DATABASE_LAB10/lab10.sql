--create database lab10 ;
--go

use lab10 ;
go

--create table NhanVien (
--HONV varchar(10),
--TENLOT varchar(10),
--TEN varchar(10),
--MANV int primary key,
--NGSINH date,
--DCHI varchar(50),
--PHAI char(3),
--LUONG int ,
--MA_NQL int,
--PHG int);


--create table PHONGBAN (
--TENPHG varchar(30) ,
--MAPH int primary key,
--TRPHG int,
--NG_NHANCHUC date ) ;

--create table DIADIEM_PHG (
--MAPH int ,
--DIADIEM varchar(30),
--foreign key(MAPH) references PHONGBAN(MAPH) on update cascade on delete cascade );

--create table THANNHAN (
--MANV int ,
--TENTN varchar(10),
--PHAI varchar(3),
--NGSINH date ,
--QUANHE varchar(20),
--foreign key(MANV) references NhanVien(MANV) on update cascade on delete cascade );

--create table DEAN (
--TENDA varchar(30),
--MADA int primary key,
--DDIEM_DA varchar(30),
--PHONG int,
--foreign key (PHONG) references PHONGBAN(MAPH) on update cascade on delete cascade ) ;

--create table PHANCONG (
--MANV int ,
--SODA int ,
--THOIGIAN float ,
--foreign key(MANV) references NHANVIEN(MANV) on update cascade on delete cascade);



--insert into NHANVIEN values 
--('Dinh','Ba','Tien',123456789,'1955-01-09','HCM','Nam',30000,333445555,5),
--('Nguyen','Thanh','Tung',333445555,'1945-12-08','HCM','Nam',40000,888665555,5),
--('Bui','Thuy','Vu',999887777,'1958-07-19','HCM','Nam',25000,987654321,4),
--('Le','Thi','Nhan',987654321,'1931-06-20','HCM','Nu',43000,888665555,4),
--('Nguyen','Manh','Hung',666884444,'1952-09-15','Vung Tau','Nam',38000,333445555,5),
--('Tran','Thanh','Tam',453453453,'1962-07-31','HCM','Nam',25000,333445555,5),
--('Tran','Hong','Quan',987987987,'1959-03-29','HCM','Nam',25000,987654321,4),
--('Vuong','Ngoc','Quyen',888665555,'1927-10-10','Ha Noi','Nu',55000,NULL,1);


--insert into PHONGBAN values 
--('Nghien cuu' , 5 , 333445555 , '1978-05-22'),
--('Dieu hanh' , 4 , 987987987 , '1985-01-01'),
--('Quan ly' , 1 , 888665555 , '1971-06-19') ;



--insert into DIADIEM_PHG values
--(1, 'TP HCM'),
--(4, 'HA NOI'),
--(5 ,'VUNG TAU'),
--(5 ,'NHA TRANG'),
--(5 ,'TP HCM');


--insert into THANNHAN values
--(333445555,'Quang','Nu','1976-04-05','Con gai'),
--(333445555,'Khang','Nam','1973-10-25','Con trai'),
--(333445555,'Duong','Nu','1948-05-03','Vo chong'),
--(987654321,'Dang','Nam','1932-02-29','Vo chong'),
--(123456789,'Duy','Nam','1978-01-01','Con trai'),
--(123456789,'Chau','Nu','1978-12-31','Con gai');


--insert into DEAN values
--('San pham X',1,'Vung Tau',5),
--('San pham Y',2,'Nha Trang',5),
--('San pham Z',3,'TP HCM', 5),
--('Tin hoc hoa',10,'HA NOI',4),
--('Cap Quang' , 20,'TP HCM',1),
--('Dao tao', 30,'HA NOI',4);

--insert into PHANCONG values
----(123456789,1,32.5),
--(123456789,2,7.5),
--(666884444,3,40.0),
--(453453453,1,20.0),
--(453453453,2,20.0),
--(333445555,3,10.0),
--(333445555,10,10.0),
--(333445555,20,10.0),
--(999887777,30,30.0),
--(999887777,10,10.0),
--(987987987,10,35.0),
--(987987987,30,5.0),
--(987654321,30,20.0),
--(987654321,20,15.0),
--(888665555,20,NULL);


--   I.

--   1. 

--create procedure SP1 (@date1 date , @date2 date) as
--select a.HONV , a.TENLOT, a.TEN , a.NGSINH , concat(c.HONV,' ',c.TENLOT,' ',c.TEN) as TenNHD from NHANVIEN as a join ( select * from NHANVIEN where NGSINH between @date1 and @date2 ) as b on a.MANV = b.MANV join (select * from NHANVIEN) as c on a.MA_NQL = c.MANV;



--   2.

--create procedure SP2 as
--select HONV,TENLOT,TEN,LUONG from NHANVIEN where LUONG > (select AVG(LUONG) from NHANVIEN) ;


--   3.

--create procedure SP3(@top int ) as
--select top(@top) HONV,TENLOT,TEN,LUONG from NHANVIEN order by LUONG desc ;


--   4.

--create procedure SP4(@thanhpho varchar(10)) as
--update NHANVIEN set LUONG = LUONG + LUONG*10/100 where DCHI =@thanhpho;


--   5.

--create procedure SP5 as
--select * from NHANVIEN except select * from NHANVIEN where MANV in (select MA_NQL from NHANVIEN) ;


