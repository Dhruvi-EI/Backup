create database Practice_158173;
use  Practice_158173;
CREATE TABLE client_master1 (
    Client_no VARCHAR(6),
    Name VARCHAR(20),
    City VARCHAR(15),
    Pincode NUMERIC(8),
    State VARCHAR(15),
    Bal_due NUMERIC(10,2)
);
create table Product_master(
Product_no varchar(6),
Description varchar(15),
P_percent numeric(4,2),
U_measure varchar(10),
Qty_on_hand numeric(8),
Reorder_lvl numeric(8),
Sell_price numeric(8,2),
Cost_price numeric(8,2)
);
create table Salesman_master(
S_no varchar(6),
S_name varchar(20),
City varchar(20),
Pincode numeric(8),
State varchar(20),
Sal_amt numeric(8,2),
Tgt_to_get numeric(6,2),
Ytd_sales numeric(6,2),
remarks varchar(12)
);
describe client_master1;
describe Product_master;
describe Salesman_master;
insert into client_master1 values('C001','IVAN','BOMBAY', 400054,'MAHARASTRA',15000);
insert into client_master1 values('C002','VANDANA','MADRAS', 780001,'TAMIL NADU',0);
insert into client_master1 values('C003','PRAMADA','BOMBAY', 400057,'MAHARASTRA',5000);
insert into client_master1 values('C004','BASU','BOMBAY', 400056,'MAHARASTRA',0);
insert into client_master1 values('C005','RAVI','DELHI', 100001,'GUJARAT',2000);
insert into client_master1 values('C006','RUKMANI','BOMBAY', 400050,'MAHARASTRA',0);


insert into Product_master values('P001','Floppies',5, 'Piece',100,20,525,500);
insert into Product_master values('P002','Monitor',6, 'Piece',10,3,12000,11280);
insert into Product_master values('P003','Mouse',5, 'Piece',20,5,1050,1000);
insert into Product_master values('P004','Floppies',5, 'Piece',100,20,525,500);
insert into Product_master values('P005','Keyboards',2, 'Piece',10,3,3150,3050);
insert into Product_master values('P006','Cd Drive',2.5, 'Piece',10,3,5250,5100);
insert into Product_master values('P007','1.44 Drive',4, 'Piece',10,3,8400,8000);


insert into Salesman_master values('S001','Kiran','Bombay',400002,'Maharastra',3000,100,50,'Excellent');
insert into Salesman_master values('S002','Manish','Bombay',400001,'Maharastra',3000,200,100,'Good');
insert into Salesman_master values('S003','Ravi','Bombay',400032,'Maharastra',3000,200,100,'Average');
insert into Salesman_master values('S004','Ashish','Bombay',400044,'Maharastra',3500,200,150,'Good');

select * from client_master1;
select Product_no,Sell_price,Cost_price from Product_master;
select S_no,S_name,remarks,Sal_amt from Salesman_master;
show tables;
use Practice_158173;
select * from product_master;
-- Task 2 starts from here
-- A 
-- 1
select name from client_master1;
desc client_master1;
-- 2
select name,city from client_master1;
-- 3
select description from product_master;
-- 4
select * from client_master1;
select * from client_master1 where city='bombay';
-- 5
select * from salesman_master;
select s_name from salesman_master where sal_amt=3000;
-- 6
select * from client_master1;
select distinct city from client_master1;
-- 7
select * from product_master order by sell_price;
-- 8 
select * from product_master order by sell_price,cost_price;
-- 9
select product_no,description from product_master order by sell_price desc;
-- B
-- 1
select * from client_master1;
update client_master1 set city='bombay' where client_no='c002';
-- 2
update client_master1 set bal_due=1000 where client_no='c001';
-- 3
select * from product_master;
update product_master set cost_price=950 where description='floppies';
-- 4 
update salesman_master set city='mumbai' where city='bombay';
select * from salesman_master;
-- C
-- 1
delete from salesman_master where sal_amt= 3500;
-- 2
select * from product_master;
delete from product_master where qty_on_hand=100;
-- 3 
select * from client_master1;
delete from client_master1 where state='tamil nadu';
-- E
-- 1 
select * from client_master1;
alter table client_master1 add telephone bigint(10);
-- 2 
select * from product_master;
desc product_master;
alter table product_master modify sell_price decimal(10,2);
-- 3 
select * from client_master1;
alter table client_master1 rename column telephone to contact;
-- 4 
alter table client_master1 drop column contact;
-- F 
-- 1
create table employee1(
S_no varchar(6),
S_name varchar(20),
City varchar(20),
State varchar(20)
);
insert into employee1 values ('1','aman','bombay','mh'),('2','subham','chennai','tn'),('3','jigar','surat','gj'),('4','subham','ahmedabad','gj'),('5','dhruvi','ahmedabad','gj');
select * from employee1;
-- 2
drop table employee1;
-- G 
-- 1 
select * from sman_mast;
alter table salesman_master rename to sman_mast;
-- Task 3 starts from here
create table sales_order(
order_no varchar(6),
order_date date,
client_no varchar(6),
s_no varchar(6),
dely_type char(1),
billed_yn char(1),
dely_date date,
order_status varchar(10)
);
select * from sales_order;
desc sales_order;

select * from sales_order;
insert into sales_order values('O1901','2015-06-12', 'C001', 'S001', 'F', 'N', '2015-06-20', 'InProcess'),('O1902', '2015-01-25', 'C002', 'S002', 'P', 'N', '2015-06-27', 'Cancelled'),
('O4665', '2015-02-18', 'C003', 'S003', 'F', 'Y', '2015-02-20', 'Fullfilled'),('O1903', '2015-04-03', 'C001', 'S001', 'F', 'Y', '2015-04-07', 'Fullfilled'),
('O4666', '2015-05-20', 'C004', 'S002', 'P', 'N', '2015-05-22', 'Cancelled'),('O1908','2015-05-24', 'C005', 'S003', 'F', 'N', '2015-05-26', 'InProcess');
select * from client_master1;
-- 1 
select name from client_master1 where name like'_a%';
-- 2 
select name from client_master1 where name like'_a__';
-- 3 
select * from client_master1;
select city from client_master1 where city like'%a_';
-- 4 
select * from client_master1 where bal_due>10000;
-- 5
select * from sales_order;
select * from sales_order where order_date like'%-01-%';
-- 6
select * from sales_order where client_no='c001' or client_no='c003';
-- 7
select * from product_master;
select * from product_master where sell_price>2000 and sell_price<=5000;
-- 8 
SELECT sell_price, sell_price * 0.15 AS new_price
FROM product_master
WHERE sell_price > 1500;

-- 9 
select * from client_master1;
select name,city,state from client_master1 where state not like 'maharastra';
-- 10
select * from sales_order;
select count(*) from sales_order;
-- 11
select * from product_master;
select avg(sell_price) from product_master; 
-- 12
SELECT MAX(sell_price) as max_price, MIN(sell_price) as min_price FROM product_master;
-- 13
select * from product_master;
select count(*) from product_master where sell_price>=1500;
-- 14
select * from product_master where qty_on_hand<reorder_lvl;
-- 15
CREATE TABLE cmaster like client_master1;
desc cmaster;
-- 16
insert into cmaster select * from client_master1 where city='bombay';
select * from cmaster;
select * from sales_order;
-- 17 
-- CREATE TABLE new_table
 -- AS (SELECT column_1, column2, ... column_n
  --    FROM old_table_1, old_table_2, ... old_table_n);
  create table sales as (select order_no,client_no from sales_order where 1=0 );
  desc sales;
  select * from sales;
  -- 18
  insert into sales select order_no,client_no from sales_master;
  select * from sales;
  -- queries on data manipulation
  -- 1 
  select * from sales_order;
  select order_no,dayname(order_date) from sales_order;
  -- 2 
  select monthname(order_date),date(ordeR_date) from sales_order ;
  -- 3
   select dely_date - order_date as elasped_day from sales_order;
  -- 4 
  SELECT DATE_ADD(current_date(), INTERVAL 15 DAY);

  -- 5 now function returns date with time
  select now();
  -- 6 
  -- select sysdate();
  -- current_time() returns only time 
  select current_time();
  SELECT order_date,dely_date, DATEDIFF(dely_date, order_date) AS days FROM sales_order;
  select dely_date - order_date as elasped_day from sales_order;
  
  -- Task 4 starts from here!
  -- A
  
  create table client_master2( -- new table for client master
  client_no varchar(6) primary key check(client_no like'c%'),
  name varchar(15) not null,
  city varchar(15),
  pincode numeric(8),
  state varchar(15),
  bal_due numeric(10,2)
  );
 desc client_master2;
 insert into client_master2 values('C001','IVAN','BOMBAY', 400054,'MAHARASTRA',15000);
insert into client_master2 values('C002','VANDANA','MADRAS', 780001,'TAMIL NADU',0);
insert into client_master2 values('C003','PRAMADA','BOMBAY', 400057,'MAHARASTRA',5000);
insert into client_master2 values('C004','BASU','BOMBAY', 400056,'MAHARASTRA',0);
insert into client_master2 values('C005','RAVI','DELHI', 100001,'GUJARAT',2000);
insert into client_master2 values('C006','RUKMANI','BOMBAY', 400050,'MAHARASTRA',0);
select * from client_master2;
create table Product_master2(
Product_no varchar(6) primary key check (Product_no like'P%'),
Description varchar(15) not null,
P_percent numeric(4,2)not null,
U_measure varchar(10)not null,
Qty_on_hand numeric(8)not null,
Reorder_lvl numeric(8)not null,
Sell_price numeric(8,2)not null check (Sell_price>0) ,
Cost_price numeric(8,2)not null check(Cost_price>0)
);
insert into Product_master2 values('P001','Floppies',5, 'Piece',100,20,525,500);
insert into Product_master2 values('P002','Monitor',6, 'Piece',10,3,12000,11280);
insert into Product_master2 values('P003','Mouse',5, 'Piece',20,5,1050,1000);
insert into Product_master2 values('P004','Floppies',5, 'Piece',100,20,525,500);
insert into Product_master2 values('P005','Keyboards',2, 'Piece',10,3,3150,3050);
insert into Product_master2 values('P006','Cd Drive',2.5, 'Piece',10,3,5250,5100);
insert into Product_master2 values('P007','1.44 Drive',4, 'Piece',10,3,8400,8000);
select * from product_master2;
desc product_master2;
create table Salesman_master2(
S_no varchar(6) primary key check(S_no like'S%'),
S_name varchar(15)not null,
City varchar(10),
Pincode numeric(8),
State varchar(12),
Sal_amt numeric(8,2)not null check(Sal_amt>0),
Tgt_to_get numeric(6,2)not null check(Tgt_to_get>0),
Ytd_sales numeric(6,2)not null,
remarks varchar(20)
);
insert into Salesman_master2 values('S001','Kiran','Bombay',400002,'Maharastra',3000,100,50,'Excellent');
insert into Salesman_master2 values('S002','Manish','Bombay',400001,'Maharastra',3000,200,100,'Good');
insert into Salesman_master2 values('S003','Ravi','Bombay',400032,'Maharastra',3000,200,100,'Average');
insert into Salesman_master2 values('S004','Ashish','Bombay',400044,'Maharastra',3500,200,150,'Good');
select * from salesman_master2;

create table sales_order2(
order_no varchar(6)primary key check(order_no like'O%'),
order_date date,
client_no varchar(6),
s_no varchar(6),
dely_type char(1) check (dely_type='P'or dely_type='F') default'F',
billed_yn char(1),
dely_date date,
order_status enum("inprocess","fulfilled","backorder","cancelled"),
foreign key(client_no) references client_master2(client_no),
foreign key(s_no) references salesman_master2(s_no),
check(dely_date>order_date)
);

/*
create table sales_order2(order_no varchar(6) primary key check (order_no LIKE "O%"),
order_date date, 
client_no varchar(6),
S_no varchar(6), 
dely_type char(1) check (dely_type='P' or dely_type='F') default "F",
billed_yn char(1),
dely_date date, 
order_status enum ("inprocess","fullfiled","backorder","cancelled"),
foreign key (client_no) references client_master2(client_no) ,
foreign key (s_no) references salesman_master2(S_no),  
check(dely_date>order_date)
);
*/
desc sales_order2;
insert into sales_order2 values ("O1901","2015-06-12" ,"C001","S001","F","N","2015-06-20","inprocess");
insert into sales_order2 values ("O1902","2015-01-25","C002","S002","P","N", "2015-06-27","cancelled");
insert into sales_order2 values("O4665","2015-02-18","C003","S003","F","Y","2015-02-20","fulfilled");
insert into sales_order2 values ("O1903","2015-04-03","C001","S001","F","Y","2015-04-07","fulfilled");
insert into sales_order2 values("O4666","2015-05-20","C004","S002","P","N","2015-05-22","cancelled");
insert into sales_order2 values ("O1908","2015-05-24","C005","S003","F","N","2015-05-26","inprocess");
select * from sales_order2;
truncate table sales_order2;

create table sales_order_detail(order_no Varchar(6) references sales_order2(order_no),
product_no Varchar(6) references Product_master(product_no),
qty_ordered Numeric(8),
qty_disp Numeric(8),
product_rate Numeric(10,2),
primary key(order_no,product_no));
insert into sales_order_detail values("o1901","p001",4,4,525),
("o1901","p002",2,1,8400),
("o1901","p003",2,1,5250),
("o1902","p001",10,0,525),
("o4665","p002",3,3,3150),
("o4665","p004",3,1,5250),
("o4665","p005",10,10,525),
("o4665","p003",4,4,1050),
("o1903","p006",2,2,1050),
("o1903","p004",1,1,12000),
("o1908","p005",1,0,8400),
("o1908","p007",10,0,1050);
select * from sales_order_detail;
-- Task 5
-- solving the queries using sub queries
-- task5
 
select * from sales_order;
select * from product_master;
select * from sales_order_details;
select*from client_master;

-- solve the following queries sing sub queries
-- 1
select product_no,description from product_master2 where product_no in(select product_no from sales_order_details where qty_disp=0);
 
-- 2
select name,city,pincode from client_master2 where client_no in(select client_no from sales_order where order_no= 'O1901');
 
-- 3
select client_no, name from client_master2 where client_no in(select client_no from sales_order where order_no in(select order_no from SALES_ORDER_DETAILS WHERE PRODUCT_NO IN(SELECT PRODUCT_NO FROM PRODUCT_MASTER WHERE DESCRIPTION = 'Mouse')));

-- Queries using Having and Group By Clause:

-- 1
select p.description, sum(s.qty_disp) as total_qty_sold from product_master2 as p, sales_order_details as s where s.product_no in(select p.product_no from product_master) group by p.description;

-- 2
select p.description,sum(s.qty_disp*s.product_rate) from sales_order_details as s,product_master as p where s.product_no in(select p.product_no from product_master) group by p.description;

-- 3
select sum(p.qty_disp*p.product_rate),s.order_no from sales_order2 as s, sales_order_details as p where s.order_no in(select s.order_no from sales_order as s where s.billed_yn='Y' and month(order_date)=01) group by s.order_no;

-- Queries on Joins and Correlation:

-- 1
select s.product_no, p.description, c.client_no from sales_order_details2 as s, product_master2 as p, sales_order2 as o, client_master2 as c where p.product_no = s.product_no and o.order_no = s.order_no and c.client_no = o.client_no and c.name = 'Ivan';
-- 2
select distinct product_master2.product_no, description from sales_order_details2, product_master2 where product_master2.product_no = sales_order_details2.product_no;
-- 3
select distinct o.client_no, c.name from sales_order_details2 as p, sales_order2 as o, product_master2 as s, client_master2 as c where s.product_no = p.product_no and o.order_no = p.order_no and c.client_no = o.client_no and s.description = 'cd drive';
-- 4
select o.client_no,p.product_no, p.order_no, s.description from sales_order_details2 as p, sales_order as o, product_master as s where o.order_no = p.order_no and s.product_no = p.product_no and s.description = 'mouse' and p.qty_ordered< 4;

-- Queries on Constructing Sentences with data:
-- 1
select concat(p.description," Worth Rs. ",sum(s.qty_ordered*s.product_rate) ," was sold.") as sentence
from sales_order_detailsw as s , product_master2 as p
where p.product_no=s.product_no group by p.description order by p.description;


-- task 6
-- Solve the following queries using sub queries:-
-- 1
select client_no, name from client_master2 where client_no in(select client_no from sales_order where monthname(order_date)< 'may');
-- 2
select name from client_master2 where client_no in(select client_no from sales_order where order_no in(select order_no from sales_order_details where(qty_ordered * product_rate) >= 10000)); 

-- Queries using Having and Group By Clause:
-- 1
select c.client_no, avg(s.qty_disp) from sales_order_details2 as s, client_master2 as c, sales_order2 as p where c.client_no = p.client_no and s.order_no = s.order_no group by c.client_no having max(s.qty_ordered * s.product_rate) > 15000;

-- Queries on Joins and Correlation:
-- 1
select p.product_no, x.description, sum(p.qty_ordered) quantities, o.order_no from sales_order_details2 as p, sales_order as o, product_master x where x.product_no = p.product_no and o.order_no = p.order_no and date(o.dely_date) = date(o.order_date) group by p.product_no, x.description, o.order_no;
-- 2
select c.name,p.product_no, x.description, sum(p.qty_ordered) ordered_units from sales_order_details2 as p, sales_order as o, product_master x, client_master c where o.order_no = p.order_no and x.product_no = p.product_no and c.client_no = o.client_no and c.name = 'Ivan' or c.name = 'Vandana' group by p.product_no, x.description,c.name;
-- 3
select o.client_No, p.product_no, s.description, sum(qty_ordered) ordered_units from sales_order2 as o, sales_order_details2 as p, product_master2 as s, client_master2 as c where o.order_no = p.order_no and p.product_no = s.product_no and o.client_no = c.client_no group by o.client_no, p.product_no, s.description having o.client_no = 'C001' or o.client_no = 'C002';

-- Queries on Constructing Sentences with data:
-- 1
select concat(p.description," Worth Rs. ",sum(s.qty_ordered*s.product_rate) ," was ordered in the month of.",monthname(o.order_date)) as sentence
from sales_order_details2 as s , product_master2 as p, sales_order2 as o
where p.product_no=s.product_no and o.order_no=s.order_no group by p.description,o.order_date; 

-- 2
select concat(c.name, " has placed order ", o.order_no, " on ", s.order_date) as sentence from
sales_order_details2 as o, sales_order2 as s, product_master2 as p, client_master2 as c where p.product_no=o.product_no group by p.description,s.order_date,o.order_no,c.name;

-- Task 7
use humanresource;
show tables;
desc employees;
-- Applying basic queries
-- 1
select first_name as FirstName, last_name as LastName from employees;
select * from employees;
-- 2
select distinct(department_id) from employees;
-- 3
select * from employees order by first_name desc;
-- 4 
select first_name,last_name,salary,salary*0.15 as PF from employees;
-- 5 
select employee_id,first_name,last_name from employees order by salary;
-- 6 
select sum(salary) from employees;
-- 7 
select max(salary),min(salary) from employees;
-- 8 
select avg(salary),count(employee_id) from employees;
-- 9 
select count(*) as no_of_employees from employees;
-- 10
desc employees;
select count(job_id) as jobs_available from employees;
-- 11 
select upper(first_name) from employees;
-- 12
select substr(first_name, 1, 3) from employees;
-- 13
select first_name,last_name from employees;
-- 14 
 -- select first_name from employees;
select trim(first_name) from employees; -- after removig the whitespaces
-- 15
select length(first_name),length(last_name) from employees;
-- 16
select round(salary,2) from employees;
-- Apply Restricting and Sorting Queries:
-- 1 
select first_name,last_name, salary from employees where salary not between 10000 and 15000;
-- 2 
select first_name, last_name, department_id from employees where department_id in (30, 100) order by department_id ;
-- 3 
select first_name,last_name, salary from employees where salary not between 10000 and 15000 and department_id in(30,100);
-- 4 
select first_name, last_name, hire_date from employees where year(hire_date)=1987;
-- 5
select first_name from employees where first_name like'%b%' and first_name like'%c%';
-- 6 
select a.last_name,b.job_title,a.salary from employees as a,jobs as b where b.job_title='programmer'or b.job_title='shipping clerk' and a.salary not in(4500,10000,15000);  
-- 7 
select last_name from employees where last_name like'______';
-- 8 
select last_name from employees where last_name like'__e%';
-- 9 
 select count(job_id) from employees;
-- 10
select first_name,last_name,salary,salary*0.15 as PF from employees;
-- 11 
select * from employees where last_name in('blake','scott','king','ford');
-- Using Aggregate Function Queries:
-- 1 
select count(job_id) from employees;
-- 2 
select sum(salary) from employees;
-- 3 
select min(salary) from employees;
-- 4 
select max(salary) from employees as a, jobs as b where b.job_title='programmer';
-- 5
select avg(salary),count(*) from employees where department_id=90;
-- 6 
select max(salary),min(salary),sum(salary),avg(salary) from employees;
-- 7 
select count(a.email) from employees as a, employees as b where a.job_id=b.job_id;
-- 8 
select max(salary)-min(salary) from employees;
-- 9 
select e.manager_id, min(e.salary) as lowest_salary from employees e group by e.manager_id;
-- 10
select department_id,sum(salary) from employees group by department_id;
-- 11 
SELECT job_id, AVG(salary) AS avg_salary
FROM employees
WHERE job_id <> 'programmer'
GROUP BY job_id;
-- 12
select sum(salary),max(salary),min(salary),avg(salary) from employees where department_id=90 group by job_id;
-- 13 
SELECT job_id, MAX(salary) as max_salary 
FROM employees 
GROUP BY job_id 
HAVING MAX(salary) >= 4000;
-- 14
SELECT department_id, AVG(salary) as avg_salary 
FROM employees 
GROUP BY department_id 
HAVING COUNT(*) > 10;








	







 























  

  
	
  
  



	








 




