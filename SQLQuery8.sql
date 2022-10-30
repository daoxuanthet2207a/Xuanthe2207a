
create table NHACUNGCAP(
MaNhaCC varchar(10) primary key,
TenNhaCC nvarchar(50) not null,
DiaChi nvarchar(100) not null,
SoDT varchar(15) not null,
MaSoThue varchar(10) not null
);
create table LOAIDICHVU(
MaLoaiDV varchar(10) primary key,
TenLoaiDV nvarchar(100) not null
);
create table MUCPHI(
MaMP varchar(10) primary key,
DonGia decimal(12,4) not null,
MoTa nvarchar(100) not null
);
create table DONGXE(
DongXe varchar(10) primary key,
HangXe varchar(10) not null,
SoChoNgoi int not null
);
create table DANGKYCUNGCAP(
MaDKCC varchar(10) primary key,
MaNhaCC varchar(10) foreign key references NHACUNGCAP(MaNhaCC),
MaLoaiDV varchar(10) foreign key references LOAIDICHVU(MaLoaiDV),
DongXe varchar(10) foreign key references DONGXE(DongXe),
MaMP varchar(10) foreign key references MUCPHI(MaMP),
NgayBatDauCungCap date not null,
NgayKetThucCungCap date not null,
SoLuongXeDangKy int not null
);