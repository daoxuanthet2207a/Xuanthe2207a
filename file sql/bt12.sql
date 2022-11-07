create table NguoiChiuTrachNhiem(
    Ten nvarchar(225) not null, 
	MaSoNCTN varchar(20) primary key,
);

create table LoaiSanPham(
    TenLoaiSP nvarchar(225) not null,
	MaLoaiSP varchar(20) primary key,
    MaSoNCTN varchar(20) not null foreign key references NguoiChiuTrachNhiem(MaSoNCTN),
	
);

create table SanPham(
    MaSoSP varchar(20) primary key,
	NgaySanXuat date not null check(NgaySanXuat<= getdate()) default getdate(),
	MaLoaiSP varchar(20) foreign key references LoaiSanPham(MaLoaiSP),
	MaSoNCTN varchar(20) not null foreign key references NguoiChiuTrachNhiem(MaSoNCTN),
	
);
drop table  SanPham;
drop table LoaiSanPham;
drop table NguoiChiuTrachNhiem;

