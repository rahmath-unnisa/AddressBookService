create database Adressbook_service;
----------------------------------------------------------------------------------------
------------->UC2
create table Address_book
(
ID int primary key Identity(1,1) ,
First_name char(15),
Last_name char(15),
addres varchar(50),
city char(20),
state varchar(25),
zip int,
email varchar(50)
);

select * from Address_book
------------------------------------------------------------------------------------------
------------>UC3
insert into Address_book(First_name,Last_name,addres,city,state,zip,phone,email)values
('Manha','Mehwish','Mustafa Street','Belur','Karnataka',573115,98802474768,'mehwish@gmail.com'),
('Hamza','Yousuf','Ilahi Nagar','Hyderabad','Andra',342145,782543746,'yousuf32@gmail.com'),
('Kaira','Kainath','Vallabai road','Cochi','Kerala',673829,7829986477,'kainath092@gmail.com'),
('Kiyan','Sheikh','Santhepet','Mumbai','Maharashtra',689654,6975785539,'mekiyan@gmail.com');
----------------------------------------------------------------------------------------------------------
------------>UC4
update Address_book set zip=123456 where First_name='Hamza';
select * from Address_book


-----------------------------------------------------------------------------------------
------------>UC5
DELETE from Address_book where First_name='Kaira';
select * from Address_book

-------------------------------------------------------------------------------------------
------------->UC6
select city from Address_book where Last_name='Mehwish';
select state from Address_book where addres='Santhepet';

------------------------------------------------------------------------------------------
------------->UC7
select count(*),city from Address_book group by city;
select count(*),state from Address_book group by state;

-----------------------------------------------------------------------------------------
------------->UC8
select * from Address_book where city ='Hyderabad' order by first_name;
-----------------------------------------------------------------------------------------
------------->UC9

-----------------------------------------------------------------------------------------

