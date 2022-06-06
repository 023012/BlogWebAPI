Use BlogDB
Go

Create table Category(
Id int primary key identity(1,1),
Name varchar(255),
slug varchar(255)
);

insert into dbo.Category(Name,slug) values('CSHARP','csharp');
insert into dbo.Category(Name,slug) values('VISUAL STUDIO','visualstudio');
insert into dbo.Category(Name,slug) values('ASP.NET CORE','aspnetcore');
insert into dbo.Category(Name,slug) values('SQL SERVER','sqlserver');

create table Post(
Post_Id int primary key identity(1,1),
Title varchar(2000),
Description varchar(max),
Category_Id int foreign key references Category(Id),
Created_Date Datetime,
);
