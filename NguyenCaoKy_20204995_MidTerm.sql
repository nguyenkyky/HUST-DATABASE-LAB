-- Nguyễn Cao Kỳ
-- MSSV : 20204995
-- Kiểm tra giữa kỳ Thực Hành Cơ Sở Dữ Liệu



-- I .

--create database GiuaKy ;
--go
--use GiuaKy ;
--go

--create table GiangVien(
--GV# int primary key,
--HoTen nvarchar(30) ,
--NamSinh int,
--DiaChi nvarchar(50) );

--go

--create table DeTai (
--DT# int primary key ,
--TenDT nvarchar(50) ,
--TheLoai nvarchar(20) );

--go

--create table SinhVien (
--SV# int primary key,
--TenSV nvarchar(30),
--NgaySinh date ,
--QueQuan nvarchar(20),
--Lop nvarchar(20) );

--go

--create table HuongDan (
--GV# int ,
--DT# int ,
--SV# int ,
--NamThucHien int ,
--KetQua float ,
--foreign key (GV#) references GiangVien(GV#) on update cascade on delete cascade ,
--foreign key (DT#) references DeTai(DT#) on update cascade on delete cascade ,
--foreign key (SV#) references SinhVien(SV#) on update cascade on delete cascade )
--;

--go


--insert into GiangVien values 
--(1, N'Nguyễn Văn A',1970,N'Bạch Mai'),
--(2, N'Nguyễn Văn B',1971,N'Thanh Nhàn'),
--(3, N'Nguyễn Văn C',1972,N'Đại La'),
--(4, N'Nguyễn Văn D',1973,N'Trương Định'),
--(5, N'Nguyễn Văn E',1974,N'Phố Huế'),
--(6, N'Nguyễn Văn F',1975,N'Minh Khai'),
--(7, N'Nguyễn Văn G',1976,N'Đại Cồ Việt'),
--(8, N'Nguyễn Văn H',1977,N'Trần Đại Nghĩa'),
--(9, N'Nguyễn Văn I',1978,N'Lê Thanh Nghị'),
--(10, N'Nguyễn Văn K',1979,N'Giải Phóng') ;
--(12, N'Nguyễn Văn Giang',1969,N'Giải Phóng') ;

--insert into SinhVien values 
----(1,N'Nguyễn Văn L','10/25/2001',N'Hải Phòng','IT-E6'),
----(2,N'Nguyễn Văn M','10/24/2001',N'Hà Tĩnh','IT-E6'),
----(3,N'Nguyễn Văn N','10/23/2001',N'Hà Giang','IT-E6'),
--(4,N'Nguyễn Văn O','10/22/2001',N'Hải Nội','IT-E6'),
--(5,N'Nguyễn Văn P','10/21/2001',N'Hải Phòng','IT-E6'),
--(6,N'Nguyễn Văn Q','10/20/2001',N'Hải Phòng','IT-E6'),
--(7,N'Nguyễn Văn Dũng','10/19/2001',N'Nam Định','IT-E6'),
--(8,N'Nguyễn Văn S','10/18/2001',N'Hà Nam','IT-E7'),
--(9,N'Nguyễn Văn T','10/17/2001',N'Bắc Ninh','IT-E7'),
--(10,N'Nguyễn Văn Nam','4/16/2001',N'Nghệ An','IT-E7'),
--(11,N'Nguyễn Văn V','4/15/2001',N'Thanh Hóa','IT-E7'),
--(12,N'Nguyễn Văn W','4/14/2001',N'Lạng Sơn','IT-E7'),
--(13,N'Nguyễn Văn X','4/13/2001',N'Cao Bằng','IT-E7'),
--(14,N'Nguyễn Văn Y','4/12/2001',N'Quảng Ninh','IT-E7'),
--(15,N'Nguyễn Văn Z','4/11/2001',N'Sơn La','IT-E7');
--(16,N'Nguyễn Văn Dũng','4/11/2001',N'Hà Nam','IT-E7');
--(17,N'Nguyễn Văn Nam','4/11/2001',N'Bắc Giang','IT-E7');

--insert into DeTai values
--(1,N'Đề tài 1' ,N'CNTT'),
--(2,N'Đề tài 2' ,N'CNSH'),
--(3,N'Đề tài 3' ,N'CNTP'),
--(4,N'Đề tài 4' ,N'Ứng Dụng'),
--(5,N'Đề tài 5' ,N'Toán Tin'),
--(6,N'Đề tài 6' ,N'IOT'),
--(7,N'Đề tài 7' ,N'Ứng Dụng'),
--(8,N'Đề tài 8' ,N'CTTT'),
--(9,N'Đề tài 9' ,N'KHMT'),
--(10,N'Đề tài 10' ,N'KTMT');
--(11,N'Ứng Dụng' , N'ATTT'),
--(12,N'Ứng Dụng' , N'USSH') ;


--insert into HuongDan values 
----(1,3,5,2022,7.5),
--(2,3,1,2021,9),
--(3,4,2,2022,10),
--(4,5,3,2022,6),
--(5,6,4,2020,7),
--(6,7,5,2019,8),
--(7,8,6,2018,7.5),
--(8,8,7,2017,8.5),
--(9,7,8,2021,9.5),
--(10,6,9,2018,6.5),
--(1,5,4,2017,5.5),
--(2,4,3,2016,5),
--(3,3,2,2015,6),
--(4,2,1,2013,7),
--(5,1,7,2019,8),
--(6,5,8,2020,9);
--(12,5,6,2017,9);


-- II .

-- 1.
-- select * from GiangVien where GV# = 1 ;

-- 2.
-- select count(DT#) as Sum from DeTai where TenDT = N'Ứng Dụng' group by TenDT

-- 3.
-- select count(distinct SV#) from HuongDan where GV# = 1 and SV# in ( select SV# from SinhVien where QueQuan = N'Hải Phòng' )

-- 4.
-- select TenDT from DeTai as b where DT# not in (select DT# from HuongDan) ;

-- 5.
-- update SinhVien set NgaySinh ='11-12-1991' where TenSV = N'Nguyễn Văn Dũng' and QueQuan = N'Hà Nam' ;

-- 6.
-- delete from SinhVien where TenSV = N'Nguyễn Văn Nam' and QueQuan =N'Bắc Giang' ;

-- 7.
-- create view DeTaiHD1 as select a.GV# , c.HoTen, a.DT# , a.SV# , d.TenSV , a.NamThucHien, b.TenDT , b.TheLoai from HuongDan as a inner join ( select * from DeTai ) as b on a.DT# = b.DT# inner join GiangVien as c on a.GV# = c.GV# inner join SinhVien as d on a.SV# = d.SV#

-- 8 .
-- select * from DeTaiHD1 where NamThucHien = 2022

-- 9 .



-- III .

-- Backup :

 --USE [master];
 --GO
 --BACKUP DATABASE [GiuaKy]
 --TO DISK = N'C:\SSMS Backup\GiuaKy.bak' 
 --WITH NOFORMAT, NOINIT,
 --NAME = N'GiuaKy database backup', SKIP, NOREWIND, NOUNLOAD, STATS = 10;
 --GO



-- Restore :

-- USE [master];
-- GO
-- RESTORE DATABASE [GiuaKy] 
-- FROM DISK = N'C:\SSMS Backup\GiuaKy.bak' WITH  FILE = 1, NOUNLOAD, STATS = 5;
-- GO



-- IV . 
-- a .
-- create login ThuyNV with PASSWORD ='thuy123';
-- create login QuanTL with PASSWORD ='quan123';

-- create user NguyenVanThuy for login ThuyNV
-- create user TranLamQuan for login QuanTL

-- grant select on GiangVien to NguyenVanThuy
-- grant select on HuongDan to NguyenVanThuy

-- grant create table to TranLamQuan
-- grant create view to TranLamQuan



-- b .

--create login TienND with PASSWORD = 'tien123' ;
--create login CuongPV with PASSWORD = 'cuong123' ;

--create user NguyenDuyTien for login TienND;
--create user PhamVietCuong for login CuongPV;

--create role GK AUTHORIZATION dbo;

--alter role GK add member NguyenDuyTien
--alter role GK add member PhamVietCuong

--grant all  to GK 

