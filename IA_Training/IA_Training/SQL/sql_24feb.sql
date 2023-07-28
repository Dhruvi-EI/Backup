create database tiwari;
show databases;
use tiwari;
create table student(
rollno int(5) not null,
s_name varchar(13),
s_gender char(2)
);

show tables;
create table intern(
gid int(8) not null primary key,
i_name varchar(20) not null,
course varchar(10)
);
create table emplpoyee(
e_id int(8) not null primary key,
e_name varchar(15),
exp int(2)
);

create table teacher(
t_id int(8) not null primary key,
etname varchar(15),
t_exp int(2)
);
create table person(
p_id int(8) not null primary key,
p_name varchar(15),
p_gender char(2)
);
/* day 2(27.02.23)
*/
alter table person add column p_address varchar(20) not null; 
select * from person;
alter table person modify p_address char(20) not null; 
describe intern;
insert into intern values (1,'Aman','computer');
insert into intern values (2,'Shubham','science');
insert into intern values (3,'Jigar','maths');
insert into intern values (4,'tiwari','biology');
insert into intern values (5,'josh','sociology');
select * from intern;
describe person;
insert into person values (1,'yash','m','mumbai'),
 (2,'chai','f','Baroda'),
 (3,'chhas','f','Baroda'),
 (4,'aman','m','gkp'),
 (5,'shubham','m','Bihar');
 describe student;
 insert into student values (1,'aman','m'),(2,'sunny','f'),(3,'honey','m'),(4,'om','m'),(5,'ansh','m');
 describe teacher;
 insert into teacher values (1,'shubh',3),(2,'hari',5),(3,'sham',3),(4,'hariom',4),(5,'vyas',16);
 describe emplpoyee;
 insert into emplpoyee values (1,'shyam',22),(2,'honey singh',12),(3,'ram',32),(4,'laxman',21),(5,'arjun',22);
 show tables;
 select * from intern;
 delete from intern where i_name like "j%";
 select * from student;
 delete from student where rollno=3;
 select * from person;
 delete from person where p_gender='m';
 select * from person;
 delete from emplpoyee where exp<15;
 update emplpoyee set e_name ="ajay" where e_name="ram";
 update person set p_name ="Muskan" where p_id=2;
  select * from intern;
update intern set gid=3 where i_name='tiwari';
select * from teacher;
update teacher set t_exp=12 where t_exp=4;
/* this is 
multi-line comment */
update intern set i_name="अमन तिवारी" where i_name="Aman";
select * from intern;
create table student12(
id integer,
lastname text not null,
firstname text not null,
city varchar(35)
);
/*insert into student12 values(2,null,'aman','LA');
it will show error as names cannot be null
*/
insert into student12 values(1,'tiwari','aman','gkp');
select * from student12;
create table kapda(id integer,bname varchar(21) unique,size varchar(30));
insert into kapda values(1,'khadi','xl');
insert into kapda values(1,null,'xl');
select * from kapda;
insert into kapda values(1,'khadi','xl');
show tables;
create table car(
id int not null,
name varchar(39) not null,
age int check (age>=18)
);
insert into car values(1,'mercedes',23);
insert into car values(1,'mercedes',12);
create table persons(
id int not null,
name varchar(35) not null,
age int,
city varchar(23) default 'Delhi'
);
insert into persons values(1,'aman',22,'delhi'),(2,'jigar',65,'');
select * from persons;
insert into persons values(4,'aman',22,'LA');

show tables;
create table animals(
id int not null auto_increment,
name char(25) not null,
primary key(id)
);
insert into animals values ('tiger'),('dog'),('cat');
create table shirts(
id int primary key auto_increment,
name varchar(35),
size enum('small','medium','large','x-large')
);
insert into shirts(id,name,size) values(1,'t-shirt','medium'),(2,'casual shirt','small'),(3,'formal-shirt','large');

/*insert into shirts values(1,'t shirt','m');
*/
select * from shirts;
select * from persons;
create table human(
id int primary key,
h_name varchar(20)
);
create table orders(
order_id int not null primary key,
order_num int not null,
fk_person_id int,
foreign key(fk_person_id) references human(id)
);
desc orders;
insert into human values(1,'aman');
select * from human;
select * from orders;
insert into orders values(1,1,1);
delete from orders where fk_person_id=1;
select * from human;
insert into human values(1,'shubham');
desc orders;
set Foreign_Key_Checks=0;
-- case senstive variable --
select * from intern;
select gid*7 from intern where i_name='tiwari';

create table person1(
id int primary key,
name varchar(20)
);
desc orders1;
-- 28 feb
create table orders1(
order_id int not null primary key,
order_num int not null,
fk_person_id int,
foreign key(fk_person_id) references person1(id) on delete cascade on update cascade
);
insert into person1 values(1,'aman');
insert into orders1 values(1,1,3);
insert into orders1 values(2,1,2);
select * from orders1;
select * from person1;
show tables;
use northwind;
show tables;
select * from employees;
select * from employees order by lastname desc;
select  distinct city from employees;
select distinct country from customers order by country desc;
select count(distinct firstname) from employees;
select count(distinct city) from employees;
select count(*) from employees;
select sum(employeeid) as sum from employees; -- alias used here
select max(employeeid) from employees;
select min(employeeid) from employees;
select avg(employeeid) from employees;
select supplierid,companyname from suppliers where region is not null; -- returns only not null regions in the tables
select count(region) from suppliers;
select count(region) from suppliers where region is not null;
select count( distinct region) from suppliers; 
select sum(supplierid) from suppliers;
select count(* ) from suppliers;
update suppliers set region='' where supplierid=4;
update suppliers set region=null where supplierid=4;
select * from suppliers;
select * from customers;
select customerid,companyname,country from customers where country='germany';
select count(customerid) from customers where country ='germany' or country ='france';
select customerid from customers where country ='germany' and country ='france'; -- both conditions should be satisfied
select count(customerid) from customers where country in('germany','france');
select count(customerid) from customers where country not in('germany','france');
select * from customers;
select * from customers where country like'a%';
select * from customers where country like'%e';
select * from customers where country like'%ta%';
select * from customers where country like'_r%';
select * from customers where country like'a__%';
select * from customers where country like'a%a';
select * from customers where country not like'a%a';
select * from orders;
select * from customers;
select orders.orderid,customers.customerid,customers.companyname,orders.orderdate from customers,orders where customers.customerid = orders.customerid;
select o.OrderID, cust.CustomerID, cust.CompanyName as Name, o.OrderDate, o.shipCity + ',' + o.ShipCountry from Customers as cust, orders as o where cust.CustomerID=o.CustomerID;
select o.orderid,c.customerid,c.companyname as name,o.orderdate,o.shipcity,o.shipcountry as shipto from customers as c, orders as o where c.customerid = o.customerid;
select * from orders where orderdate<'1996-07-05' or orderdate>'1996-07-10' order by orderdate;
select * from orders where orderdate<'1996-07-05' or orderdate>'1996-07-10' order by orderdate;
select * from orders where orderdate<'1996-jul-05' or orderdate>'1996-jul-10' order by orderdate;
select * from orders where orderdate<'1996-07-05' and orderdate>'1996-07-10' order by orderdate;
select * from orders where orderdate<'19960705' or orderdate>'19960710' order by orderdate;
select count(customerid),country from customers group by country;
select count(customerid),country from customers group by country order by count(customerid) desc;

select firstname,sum(salary) as "total work" from employees group by firstname order by sum(salary) desc;
select firstname,sum(salary) as "total work" from employees group by firstname having sum(salary)>2000;
-- practice any command
-- practice sub queries
select * from products;
select * from products where categoryid=(select categoryid from customers where phone='030-0074321');
select * from categories;
select * from products where categoryid =(select categoryid from categories where categoryname='seafood');
select * from products where supplierid=(select supplierid from suppliers where companyname='pavlova, ltd.');
-- this below query gives an error
select * from orders where customerid=(select customerid from customers where city = 'london');
select * from orders where customerid in (select customerid from customers where city ='london');

select * from products where unitprice > any(select max(unitprice) as unitprice from products group by categoryid);
select * from products where unitprice < some (select max(unitprice) as unitprice from products group by categoryid);
select * from products where unitprice < any(select max(unitprice) from products group by categoryid);
select * from products where unitprice > some(select max(unitprice) from products group by categoryid);
select * from customers where exists(select count(*) from orders where shipcity='london' group by shipcity having count(*) > 30);
select customerid,companyname,country from customers where not exists (select * from orders where customers.customerid = orders.customerid);
-- corelated queries
select * from orders o  where employeeid in (select employeeid from employees e where o.shipcity=e.city);
-- nested queries
select * from orders where orderid in (select orderid from `order details` where productid=(select productid from products where productname='chai'));
set Foreign_Key_Checks=0;
delete from customers where city in (select shipcity from orders where shipcountry='france');
update products set discontinued=0 where supplierid=(select supplierid from suppliers where city='london');
select * from products;
-- CREATE TABLE new_table
 -- AS (SELECT column_1, column2, ... column_n
  --    FROM old_table_1, old_table_2, ... old_table_n);
-- 1st march 23

select o.orderid,o.orderdate,c.customerid,c.companyname,concat(o.shipcity,',',o.shipcountry)as shiptp from customers c,orders o where o.customerid=c.customerid;

use northwind;
select * from customers;
select * from orders;
select * from employees;
select orders.orderid, customers.companyname,orders.orderdate,orders.customerid,customers.customerid
from orders
inner join customers on orders.customerid=customers.customerid;
select customers.companyname,orders.orderid,
orders.customerid,customers.customerid
from customers
left join orders on customers.customerid=orders.customerid order by customers.companyname;

select customers.companyname,orders.orderid,
orders.customerid,customers.customerid
from customers
right join orders on customers.customerid=orders.customerid order by customers.companyname;

select customers.companyname,orders.orderid,
orders.customerid,customers.customerid
from customers
cross join orders on customers.customerid=orders.customerid order by customers.companyname;
select a.companyname as customername1,
b.companyname as customername2,a.city
from customers a, customers b
where a.customerid=b.customerid and a.city=b.city order by a.city;
select * from categories;
select * from products;
-- alphabetical list of products category wise.
select  categories.categoryname,products.productname from categories inner join products order by categoryname;
-- calculate the list of categorywise that are been discontinued
select * from products;
select products.discontinued from products where discontinued=0;
select * from orders;
select * from `order details`;
select * from products;
select * from employees;
select * from `order details`;
-- select distinct b.*,a.categoryname from categories 
/*
view is a virtual table
*/
/*
alter view customers as select customerid,customernme,country from customers;
*/
/*
drop view [if exists] view_name;
*/
use northwind;
select * from `sales by category`;
create view view_customer as
select contactname,country;
select * from customers;
select * from view_customer;
create view show_products as select contactname from customers where city='berlin';
explain select * from show_products;
-- create index city_index
create index cityindex on customers(city);
show indexes from customers;
explain select customerid,contactname from customers where city='london';

-- index is used to retrieve data more quickly
/*
a function always returns a value using the return statement
/*
$$
it is delimeter to be used if there is ; in between the query
$$
/*

*/
set global log_bin_trust_function_creators=1;
delimiter $$
create function getcustomercount(colname varchar(20)) returns int
begin
declare customer_count int default 0;
select count(customerid) into customer_count from customers where city=colname;
return customer_count;
end $$

select getcustomercount('london') as numberofcust,contactname,city from customers;

/*
procedures is better than functions
*/
delimiter &&
create procedure getcustomers()
begin
select * from customers where city='berlin';
end &&
delimiter ;
call getcustomers();
drop procedure getcustomers;

create procedure getcustomers1(in var1 int)
begin
select * from customers limit var1;
end &&
delimiter ;
call getcustomers1();
/*
create procedure getcustomers1(out totalcustomers int)
begin
select count(customerid) into totalcustomers from customers ;
end &&
delimiter ;
call getcountcustomers(@m);
select @m; */
delimiter &&
create procedure getcustomers(out var1 int)
begin
select count(customerid) into var1 from customers;
end &&
delimiter ;
call getcustomers(@M);
select @M;
drop procedure getcustomers;

/*
triggers
*/
 -- create trigger removetrigger
 


















