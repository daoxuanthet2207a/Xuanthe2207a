﻿insert into Hang(MaHang,Tenhang,Diachi,Dienthoai)
         values('123','Asus','USA','983232');

select * from Hang;

insert into DSSanPham(TenSP,Mota,Donvi,Gia,Soluong)
         values(N'Máy Tính T450',N'Máy nhập cũ',N'Chiếc','1000','10'),
			   (N'Điện thoại Nokia 5670',N'Điện thoại đang hot',N'Chiếc','200','200'),
			   (N'Máy in 450',N'Máy in đang loại bình',N'Chiếc','100','10');

select * from DSSanPham;

insert into Hang_SanPham(Ma,idSP)
	values('123','1'),
		  ('123','2'),
	      ('123','3');

select * from Hang_SanPham;

select * from Hang;
select * from SanPham;

select * from Hang order by Tenhang desc;
select * from DSSanPham order by Gia desc;
select MaHang,Diachi ,Dienthoai from Hang where Tenhang like 'Asus' ;
select * from DSSanPham where Soluong <11;
select tenSP,Mota,Donvi,Gia,Soluong from  DSSanPham,Hang where Tenhang like 'Asus' ;

select count(*) as SoHang from Hang ;
select count(*) as SoluongSanPham from DSSanPham ;
select sum(Soluong) as Tongsoluong from DSSanPham;