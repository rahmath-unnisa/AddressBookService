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
alter table Address_book ADD Type varchar(10);
update Address_book SET Type ='Family' where First_name='Manha';
update Address_book SET Type ='Profession' where First_name='Hamza';
update Address_book SET Type ='Friend' where First_name='Kiyan';
-----------------------------------------------------------------------------------------
------------->UC10
select count(*),type from Address_book group by type;

------------------------------------------------------------------------------------------
------------->UC11
alter table Address_book Drop column type;
Create table AddressBookType (
Typeid int primary key Identity(1,1) ,
type varchar(10)
);
Create table AddressBookMapping(
MappingID int primary key Identity(1,1) ,
AddressBookID int ,
Typeid int   ,
);
alter table AddressBookMapping ADD Foreign Key (AddressBookID)
 References Address_Book(id);
alter table AddressBookMapping ADD Foreign Key (Typeid)
 References AddressBookType(Typeid);


insert into AddressBookType values
('Friends'),
('Family'),
('Profession'),
('Others');


Insert into AddressBookMapping(AddressBookID,Typeid)values
(1,1),
(1,2);
Select * from Address_book INNER JOIN 
AddressBookMapping ON Address_book.ID=AddressBookMapping.AddressBookID
INNER JOIN AddressBookType ON AddressBookType.Typeid=AddressBookMapping.Typeid
 




