create table Client(
  name nvarchar(100) not null,
  address text not null,
  phone varchar(15) primary key
);
create table Product(
  name varchar(255) not null,
  script varchar(255),
  price decimal(12,4) not null check(price >= 0)default 0,
  amount int not null,
  id int primary key identity(1,1)
);
create table Orderr(
  code varchar(20) primary key,
  ngaydat date not null check(ngaydat <= getdate()) default getdate(),
  total decimal(12,4) not null check(total >= 0),
  phone varchar(15) not null  foreign key references Client(phone)
);
create table OrderList(
codeDH varchar(20)not null foreign key references Orderr(code),
spid int not null  foreign key references Product(id),
unit int not null check(unit > 0),
thanhtien decimal(12,4) not null check(thanhtien >= 0)
);
 
 drop table OrderList;
 drop table Orderr;
 drop table Product;
 drop table Client
