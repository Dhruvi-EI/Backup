use northwind;
select * from customers;
select * from products;
select * from employees order by lastname desc;
select distinct city from employees;
select distinct firstname from employees;
select country from customers;
select distinct country from customers order by country desc;
select count(distinct firstname) from employees;
select count(distinct city) from employees;
select count(*) from employees;
select sum(employeeid),max(employeeid),min(employeeid),avg(employeeid) from employees;
select region from suppliers where region is not null;
select region from suppliers;
select count(region) from suppliers;
select count(all region) from suppliers;
select count(distinct region) from suppliers;
select supplierid,companyname,region from suppliers where region is null;
update suppliers set region='' where supplierid=4;
select count(*) from suppliers;
update suppliers set region=null where supplierid=4;
select * from suppliers;
select * from customers where country='france';
select employeeid,lastname,firstname from employees where city='london'and country='UK';
select customerid,companyname,country from customers where country='germany' or country='UK';
select customerid,companyname,country from customers where country in ('germany','UK');
select customerid,companyname,country from customers where country not in ('germany','UK');
select * from customers where contactname like 'a%';
select * from customers where contactname like '%a';
select * from customers where contactname like '%or%';
select * from customers where contactname like '_r%';
select * from customers where contactname like 'a_%';
select * from customers where contactname like 'a%o';
select * from customers where country='france';
select customerid,companyname,country from customers where country='germany'and country='UK';
select customerid,companyname,country from customers where country='germany' or country='UK';
select customerid,companyname,country from customers where country in ('germany','UK');
select customerid,companyname,country from customers where country not in ('germany','UK');
select * from customers where contactname like 'a%';
select * from customers where contactname like '%a';
select * from customers where contactname like '%or%';
select * from customers where contactname like '_r%';
select * from customers where contactname like 'a_%';
select * from customers where contactname not like 'a_%';
select o.orderid,cust.customerid,cust.companyname as name,o.orderdate,o.shipcity+', ' +o.shipcountry as shipto
from customers as cust, 
orders as o  
where cust.customerid=o.customerid;
select o.OrderID, cust.CustomerID, cust.CompanyName as Name, o.OrderDate, o.shipCity , ',' + o.ShipCountry from Customers as cust, orders as o where cust.CustomerID=o.CustomerID;
select * from orders where orderdate<'1996-07-05' or orderdate>'1996-07-10' order by orderdate;
select * from orders where orderdate between'1996-07-05' and '1996-07-10' order by orderdate;
select orderid,orderdate,customerid from orders where orderdate between '1996-07-05' and '1996-07-10' order by orderdate;
select orderid,orderdate,customerid from orders where orderdate between '1996-JUL-05' and '1996-JUL-10' order by orderdate;
select orderid,orderdate,customerid from orders where orderdate between '19960705' and '19960710' order by orderdate;
select count(customerid),country from customers group by country;
select count(customerid),country from customers group by country order by count(customerid);
select count(customerid),country from customers group by country order by count(customerid) desc;
select firstname, sum(salary) as "total work" from employees group by firstname;
select count(customerid), country from customers group by country having count(customerid)>5 order by count(customerid) desc;
select productname from products where productid=any 
(select productid from `order details` where quantity=10);
select productname from products where productid=any
(select productid from `order details` where quantity>99);
select productname from products where productid=all
(select productid from `order details` where quantity>99);
select productname from products where productid=all
(select productid from `order details`);

-- SUBQUERY
select * from customers where city in ('berlin','london');
select * from orders where customerid=(select customerid from customers where phone ='030-0074321');
select * from products where categoryid=(select categoryid from categories where categoryname='seafood');
select * from products where supplierid=(select supplierid from suppliers where companyname='pavlova,ltd.');
select * from orders where customerid in (select customerid from customers where city='london');
select * from orders where customerid not in (select customerid from customers where city='london');
select * from Products where UnitPrice> Any(select Max(unitprice) as unitprice from products group by CategoryID);
select * from Products where UnitPrice> some(select Max(unitprice) from products group by CategoryID);
select * from Products where UnitPrice< Any(select Max(unitprice) as unitprice from products group by CategoryID);
select * from Products where UnitPrice< some(select Max(unitprice) from products group by CategoryID);
select * from customers where exists(select count(*) from orders where shipcity='london' group by shipcity having count(*) > 30);
select customerid, companyname,country from customers where not exists (select * from orders where customers.customerid=orders.customerid);
-- corelated sub query
select * from orders o where employeeid in (select employeeid from employees e where o.shipcity=e.city);
-- nesting sub query
select * from orders where orderid in(select orderid from `order details` where productid=(select productid from products where productname='chai'));
-- subquery during insert, update, delete
set foreign_key_checks=0;
delete from customers where city in (select city from orders where shipcountry='france');
update products set discontinued=0 where supplierid=(select supplierid from suppliers where city='london');
select city from customers union select city from suppliers order by city;
select orders.OrderID, customers.companyname, orders.orderdate from orders inner join customers on orders.customerID=customers.customerID;
select orders.OrderID, customers.companyname, orders.orderdate,orders.customerID, customers.customerID from orders inner join customers on orders.customerID=customers.customerID;
select orders.orderid,customers.companyname,orders.orderdate from orders inner join customers on orders.customerId=Customers.CustomerID;
select * from customers;
select orders.orderid,customers.companyname,orders.orderdate from orders left join customers on orders.customerId=Customers.CustomerID;
select customers.companyname;
select orders.orderid,customers.companyname,orders.orderdate from orders right join customers on orders.customerId=Customers.CustomerID;
select A.CompanyName as CustomerName1, B.CompanyName as CustomerName2, A.City from Customers A,Customers B where A.CustomerID=B.CustomerID and A.City=B.city order by A.city;
select * from categories;
select * from products;
select * from `order details`;
select products.categoryID,categories.categoryName,Products.productName from products inner join categories on products.categoryID=categories.categoryID order by categoryName;
-- alphabetical list of products category wise
select products.categoryid,categories.categoryName,Products.discontinued from products inner join categories on products.discontinued=categories.categoryID  where discontinued=1 order by categoryName;
select y.orderid,x.productid,y.productname,y.unitprice,y.quantity,d.discount, i.unitprice*quantity rount(z.unitprice*q.quantity*(1-d.discount),2) as extended price from products t inner join `order details` ;
select * from employees;
select * from `sales by categories`; 
create view view_customer as select contactname,country from customers;
create view view_query1 as select products.categoryID,categories.categoryName,Products.productName from products inner join categories on products.categoryID=categories.categoryID order by categoryName;
select*from view_query1;
select customerid,contactname from customers where city='london';
explain select customerid,contactname from customers where city='london';
create index cityindex on customers(city);
show indexes from customers;
drop view view_customer;
create view view_customer as select contactname,country from customers;
alter view view_customer as select customerid, country from customers;
select * from view_customer;

-- function
delimiter $$
set global log_bin_trust_function_creators=1;
create function getCustomerCount(colname varchar(20)) RETURNs int
begin 
declare customer_count int default 0;
select count(customerid) into customer_count from customers where city=colname;
return customer_count;
end $$

select getCustomerCount('berlin') as numberofcustomers, contactname, city from customers;
drop function getCustomerCount; 

-- normal procedure
delimiter &&
create procedure getCustomers()
begin 
      select * from customers where city='berlin';
end &&

call getCustomers();
drop procedure getCustomers;

-- using in parameter
delimiter &&
create procedure getCountCustomers(IN var1 INT)
begin 
      select * from customers limit var1;
end &&
call getCountCustomers(3);
drop procedure getCountCustomers;

delimiter &&
create procedure getcustomers(out var1 int)
begin
select count(customerid) into var1 from customers;
end &&
delimiter ;
call getcustomers(@M);
select @M;
drop procedure getcustomers;

-- inout parameter
delimiter &&
create procedure getcustomers(inout var1 varchar(20))
begin
select count(customerid) into var1 from customers;
end &&
delimiter ;
set @M='ALFKI';
call getcustomers(@M);
select @M;

drop procedure getcustomers;



