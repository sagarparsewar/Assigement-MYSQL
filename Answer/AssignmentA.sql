
/*Question1*/
create database assignment;

use assignment;

/*Question2*/
create table movies (id integer, title varchar(50), category varchar(25));

insert into movies values(1,	"ASSASSIN'S CREED: EMBERS",	'Animations'),
(2,	'Real Steel',	'Animations'),
(3,	'Alvin and the Chipmunks',	'Animations'),
(4,	'The Adventures of Tin Tin',	'Animations'),
(5,	'Safe', 	'Action'),
(6,	'Safe House',	'Action'),
(7,	'GIA',	'18+'),
(8,	'Deadline 2009',	'18+'),
(9,	'The Dirty Picture',	'18+'),
(10,	'Marley and me',	'Romance');

select * from movies;

/*Question3*/
create table countries (name varchar(20), population integer, capital varchar(20));

insert into countries values('China', 1382, '	Beijing'),
('India',	1326	, '	Delhi'),
('United States',	324,' Washington D.C.'),
('Indonesia',	260	 ,	'Jakarta'),
('Brazil',		209	 ,	'Brasilia'),
('Pakistan',	193	 ,	'Islamabad'),
('Nigeria',		187	 ,	'Abuja'),
('Bangladesh',	163	 ,	'Dhaka'),
('Russia',		143	 ,	'Moscow'),
('Mexico',		128	 ,	'Mexico City'),
('Japan',	126	 ,	'Tokyo'),
('Philippines',	102	 ,	'Manila'),
('Ethiopia',	101	, '	Addis Ababa'),
('Vietnam', 	94	, '	Hanoi'),
('Egypt',	93	, '	Cairo'),
('Germany',	81	, '	Berlin'),
('Iran',		80	, '	Tehran'),
('Turkey',	79	, '	Ankara'),
('(Congo',	79	, '	Kinshasa'),
('France',	64	, '	Paris'),
('United Kingdom',65	 ,	'London'),
('Italy',	60	 ,	'Rome'),
('South Africa',	55,	' Pretoria'),
('Myanmar',	54	 ,	'Naypyidaw');

select * from countries;

insert into countries values('Nepal', 1182, 'Kathmandu'),
('Sri Lanka',	1336	, '	Colombo');
select * from countries;

update countries set capital = 'New Delhi' where name ='india';

/*Question4*/
alter table countries rename big_countries;  



/*Question5*/
create table Suppliers(supplier_id int not null auto_increment, supplier_name varchar(30) not null, location varchar(20),primary key(supplier_id));


create table Product(product_id int not null  auto_increment, product_name  varchar(30) not null, supplier_id int,primary key(product_id), foreign key(supplier_id) references Suppliers(supplier_id));


create table Stock( id int not null auto_increment, product_id int not null, balance_stock int, primary key(id), foreign key(product_id) references Product(product_id));

/*Question6*/
insert into Suppliers values(101,'balaji','jamshedpur'),(102,'somnath','bhopal'),(103,'ram','pune');
select * from Suppliers;

insert into Product values(201,'cement',103),(202,'paint',102),(203,'cement',103),(204,'oil',101);
select * from Product;

insert into Stock values(501,201,23146),(502,203,25000),(503,202,13000);
select * from Stock;

/*Question7*/
alter table suppliers  modify column supplier_name  varchar(30) not null unique;

/*Question8*/
create table emp (empid integer, fname varchar(30), lname varchar(30), salary decimal(10,2));

insert into emp values(100,'Jon','Hamm',2000);
insert into emp values(200,'Tom','Cruise', 3000),(300,'Hugh','Laurie',7500),(400,'Tom','Hanks',750);      
insert into emp values(500,'Johnny','Depp', 1300),(600,'Hugh','Grant',850),(700,'Ben','Affleck',75),(800,'George','Clooney',10000);
insert into emp values(900,'Henry','mapp', 3000),(1000,'Gregory','House',3500);

alter table emp add deptno int not null;

select * from emp;

update emp 
set deptno = 
case deptno
when empid%2=0 then  deptno = 20
when empid%3=0 then  deptno = 30
when empid%4=0 then  deptno = 40
when empid%5=0 then  deptno = 50
else deptno = 10
end;

/*Question9*/
create unique index uniq_empid on emp(empid);

/*Question10*/
create view emp_sal as select empid, fname, lname, salary from emp order by salary desc;

select * from emp_sal;

