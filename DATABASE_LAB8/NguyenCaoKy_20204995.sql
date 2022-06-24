--create database DBHousing;
--go

--use DBHousing;
----go

--create table KhachHang (
--MaKH int primary key,
--HoTen varchar(30),
--SDT varchar(30),
--CoQuan varchar(30)
--);
----go
-- alter table KhachHang add MaKH int;
-- go
-- alter table KhachHang add primary key(MaKH);
-- go

-- create table NhaChoThue(
-- MaNha int primary key,
-- Diachi varchar(30),
-- Giathue int,
-- Tenchunha varchar(30)
-- );
-- go

-- create table HopDong(
-- MaNha int,
-- MaKH int,
-- Ngaybatdau date,
-- Ngayketthuc date,
-- foreign key(MaKH) references KhachHang(MaKH),
-- foreign key(MaNha) references NhaChoThue(MaNha));
-- go

--insert into KhachHang (MaKH,HoTen,SDT,CoQuan) values ('1','NguyenVanA','0123456789','DHBK');
--insert into KhachHang (MaKH,HoTen,SDT,CoQuan) values ('2','NguyenVanB','0123456739','DHAB');
--insert into KhachHang (MaKH,HoTen,SDT,CoQuan) values ('3','NguyenVanC','0123256789','DHCD');
--insert into KhachHang (MaKH,HoTen,SDT,CoQuan) values ('4','NguyenVanD','0123456789','DHDSA');
--insert into KhachHang (MaKH,HoTen,SDT,CoQuan) values ('5','NguyenVanE','0123436789','DHDSAD');
--insert into KhachHang (MaKH,HoTen,SDT,CoQuan) values ('6','NguyenVanF','01223456789','DHTR');
--insert into KhachHang (MaKH,HoTen,SDT,CoQuan) values ('7','NguyenVanG','0124456789','DHWQ');
--insert into KhachHang (MaKH,HoTen,SDT,CoQuan) values ('8','NguyenVanH','0121456789','DHIT');
--insert into KhachHang (MaKH,HoTen,SDT,CoQuan) values ('9','NguyenVanI','01234756789','DHHB');
--insert into KhachHang (MaKH,HoTen,SDT,CoQuan) values ('10','NguyenVanJ','0123756789','DHHF');
--insert into KhachHang (MaKH,HoTen,SDT,CoQuan) values ('11','NguyenVanK','0123458789','DHKH');
--insert into KhachHang (MaKH,HoTen,SDT,CoQuan) values ('12','NguyenVanL','0123434789','DHSDS');
--insert into KhachHang (MaKH,HoTen,SDT,CoQuan) values ('13','NguyenVanM','01235436789','DHRT');
--insert into KhachHang (MaKH,HoTen,SDT,CoQuan) values ('14','NguyenVanN','0123464789','DHOU');
--insert into KhachHang (MaKH,HoTen,SDT,CoQuan) values ('15','NguyenVanO','0123456789','DHLM');


--insert into NhaChoThue(MaNha,Diachi,Giathue,Tenchunha) values ('12345','BachMai','3','NongVanDen');
--insert into NhaChoThue(MaNha,Diachi,Giathue,Tenchunha) values ('12334','BachMai','5','VuADinh');
--insert into NhaChoThue(MaNha,Diachi,Giathue,Tenchunha) values ('21343','HoanKiem','7','NongVanDen');
--insert into NhaChoThue(MaNha,Diachi,Giathue,Tenchunha) values ('43895','BaDinh','10','PhanVanDuc');
--insert into NhaChoThue(MaNha,Diachi,Giathue,Tenchunha) values ('68745','PhuongMai','13','NguyenHoangDuc');
--insert into NhaChoThue(MaNha,Diachi,Giathue,Tenchunha) values ('96439','SonTay','8','NongVanDen');
--insert into NhaChoThue(MaNha,Diachi,Giathue,Tenchunha) values ('43265','HBT','9','CongPhuong');
--insert into NhaChoThue(MaNha,Diachi,Giathue,Tenchunha) values ('21367','HoanKiem','4','VanToan');
--insert into NhaChoThue(MaNha,Diachi,Giathue,Tenchunha) values ('23986','ThanhNhan','3','TranDaiNghia');
--insert into NhaChoThue(MaNha,Diachi,Giathue,Tenchunha) values ('66445','BachKhoa','20','PhanVanDuc');
--insert into NhaChoThue(MaNha,Diachi,Giathue,Tenchunha) values ('87695','DaiLa','2','OleOut');

--insert into HopDong(MaNha,MaKH,Ngaybatdau,Ngayketthuc) values ('12345','1','2021/1/5','2021/3/7');
--insert into HopDong(MaNha,MaKH,Ngaybatdau,Ngayketthuc) values ('21343','8','2021/5/7','2021/12/28');
--insert into HopDong(MaNha,MaKH,Ngaybatdau,Ngayketthuc) values ('96439','7','2021/12/2','2022/2/8');
--insert into HopDong(MaNha,MaKH,Ngaybatdau,Ngayketthuc) values ('12345','3','2021/4/5','2021/10/7');
--insert into HopDong(MaNha,MaKH,Ngaybatdau,Ngayketthuc) values ('66445','4','2021/11/5','2022/5/7');
--insert into HopDong(MaNha,MaKH,Ngaybatdau,Ngayketthuc) values ('66445','6','2021/4/2','2021/5/12');
--insert into HopDong(MaNha,MaKH,Ngaybatdau,Ngayketthuc) values ('87695','1','2021/10/5','2022/10/7');
--insert into HopDong(MaNha,MaKH,Ngaybatdau,Ngayketthuc) values ('23986','10','2020/4/25','2021/1/7');
--insert into HopDong(MaNha,MaKH,Ngaybatdau,Ngayketthuc) values ('23986','12','2022/1/5','2022/3/7');




-- b 
-- 1. select Diachi,Tenchunha from NhaChoThue where Giathue < 10;
-- 2. select a.MaKH, a.Hoten, a.Coquan from KhachHang as a inner join ( select b.MaNha,b.MaKH from HopDong 
-- as b inner join (select MaNha from Nhachothue where Tenchunha ='NongVanDen')as c on b.MaNha = c.MaNha) as d on a.MaKH =d.MaKH
-- 3. select a.*from nhachothue as a inner join ( select MaNha from nhachothue except select MaNha from hopdong group by MaNha ) as b on a.MaNha = b.MaNha
-- 4. select a.*from nhachothue as a inner join ( select top 1 giathue from nhachothue where manha in ( select manha from hopdong) order by giathue desc ) as b on a.giathue =b.giathue


-- c
-- create index IDX_CoQuan on KhachHang(CoQuan);
-- select * from KhachHang where CoQuan = 'DHBK '


-- create index InDex_MaNha on NhaChoThue(MaNha);
-- select a.MaNha, a.TenChuNha, b.SoNhaChoThue from NhaChoThue as a inner join (select MaNha, count(MaNha) as SoNhaChoThue from HopDong group by MaNha ) as b on a.MaNha = b.MaNha;



-- d
1.
-- create procedure giathuehopdong (@value int) as select a.* , b.giathue  from hopdong as a inner join ( select MaNha,Giathue from nhachothue where giathue >= @value ) as b on a.MaNha = b.MaNha
-- exec giathuehopdong 5

2.
-- create procedure procedure2 (@fee int) as select a.MaKH,HoTen,SDT,CoQuan,fee from KhachHang as a inner join (select c.MaKH , sum(giathue) as fee from HopDong as c inner join (select * from NhaChoThue ) as b on c.MaNha = b.MaNha group by MaKH) as d on a.MaKH = d.MaKH and d.fee >= @fee order by fee asc
-- exec procedure2 8