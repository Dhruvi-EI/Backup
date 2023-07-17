-- task1

create database practice_158410;
create table Client_master (Client_no Varchar(6), Name varchar(20),City varchar(15),pincode NUMERIC(6) NOT NULL, State varchar(20), Bal_due numeric(10,2));
create table Product_master (product_no varchar(6), description varchar(15), p_percent numeric(4,2), u_measure varchar(10), qty_on_hand numeric(8), reorder_lvl numeric(8), sell_price numeric(8,2),cost_price numeric(8,2));
create table salesman_master (s_no varchar(6), s_name varchar(20), city varchar(20), pincode numeric(8), state varchar(20), sal_amt numeric(8,2), tgt_to_get numeric(6,2), ytd_sales numeric(6,2), remarks varchar(12));
use practice_158410;
describe Client_master;
describe Product_master;
describe salesman_master;
insert into Client_master values("C001","Ivan","Bombay",400054,"Mahashtra",15000),("C002","vandana","madras",780001,"tamil nadu",0),("C003","pramada","Bombay",400057,"Mahashtra",5000), ("C004","basu","Bombay",400056,"Mahashtra",0),("C005","ravi","delhi",100001,"gujarat",2000),("C006","rukmani","Bombay",400050,"Mahashtra",0);
select * from Client_master;
insert into Product_master values("P001","Floppies", 5, "Piece", 100,20,525,500),("P002","Monitor", 6, "Piece", 10,3,12000,11280),("P003","Mouse",5,"Piece", 20,5,1050,1000), ("P004","Floppies",5,"Piece", 100,20,525,500),("P005","Keyboards",2,"Piece", 10,3,3150,3050),("P006","Cd Drive",2.5,"Piece", 10,3,5250,5100),("P007","1.44Drive",4,"Piece",10,3,8400,8000);
select * from Product_master;
insert into salesman_master values("S001","Kiran","Bombay", 400002,"Maharashtra",3000,100,50,"Excellent"),("S002","Manish","Bombay",400001,"Maharashtra",3000,200,100,"Good"),("S003","Ravi","Bombay",400032,"Maharashtra",3000,200,100,"Average"),("S004","Ashish","Bombay",400044,"Maharashtra",3500,200,150,"Good");
select * from salesman_master;
select product_no, sell_price ,cost_price from product_master;
select s_no,s_name, remarks ,sal_amt from salesman_master;
show Tables;

-- task2

select name from client_master;
select name,city from client_master;
select description from product_master;
select name from client_master where city='bombay';
select s_name from salesman_master where sal_amt=3000;
select distinct city from client_master;
select sell_price,cost_price from product_master;
select product_no,description from product_master order by sell_price desc;
update client_master SET city='bombay' where client_no='C002';
update client_master SET bal_due=1000 where client_no='C001';
update product_master SET cost_price=950 where description='floppies';
delete from salesman_master where sal_amt=3500;
delete from product_master where qty_on_hand=100;
delete from client_master where state='tamil nadu';
alter table client_master add telephone numeric(10);
alter table product_master modify sell_price numeric(10,2);
alter table client_master rename column telephone to contact;
alter table client_master drop column contact;
create table employee(employee_id varchar(10) NOT NULL,employee_name varchar(30),city varchar(20),state varchar(20));
insert into employee values("1","dhruvi","ahmedabad","gujarat"),("2","khushi","pune","maharashtra"),("3","jyoti","jaipur","rajasthan"),("4","swati","kolkata","westbengal"),("5","misri","amritsar","punjab");
select*from employee;
drop table employee;
alter table salesman_master rename sman_mast;
select*from sman_mast;

-- task3

-- task3 based on practical 1 tables

select name from client_master where name like '_a%';
select name from client_master where length(name)=4 and name like '_a%';
select city from client_master where city like '%a_';
select name from client_master where bal_due>=10000;
select description from product_master where sell_price between '2000' and '5000';
select description from product_master where sell_price>1500;
SELECT sell_price, sell_price * 0.15 AS new_price FROM product_master WHERE sell_price > 1500;
alter table product_master rename column sell_price to new_price;
select name,city,state from client_master where state not in ('mahashtra');
select avg(new_price) from product_master;
select max(new_price),min(new_price) from product_master;
select max(new_price) as max_price,min(new_price) as min_price from product_master;
select count(product_no) from product_master where new_price>=1500;
select description from product_master where qty_on_hand<reorder_lvl;
create table cmaster like client_master;
INSERT INTO cmaster SELECT * FROM client_master WHERE city='bombay';


-- task 3 based on task 3 table 

create table sales_order(Order_no Varchar(6),Order_date Date,Client_no Varchar(6),S_no Varchar(6),Dely_type Char(1),Billed_yn Char(1),Dely_date Date,Order_status Varchar(10));
insert into sales_order values('O1901','2015-06-12', 'C001', 'S001', 'F', 'N', '2015-06-20', 'InProcess'),('O1902', '2015-01-25', 'C002', 'S002', 'P', 'N', '2015-06-27', 'Cancelled'),
('O4665', '2015-02-18', 'C003', 'S003', 'F', 'Y', '2015-02-20', 'Fullfilled'),('O1903', '2015-04-03', 'C001', 'S001', 'F', 'Y', '2015-04-07', 'Fullfilled'),
('O4666', '2015-05-20', 'C004', 'S002', 'P', 'N', '2015-05-22', 'Cancelled'),('O1908','2015-05-24', 'C005', 'S003', 'F', 'N', '2015-05-26', 'InProcess');
select * from sales_order where monthname(order_date)='january';
select order_no,order_date,client_no,s_no,dely_type,billed_yn,dely_date,order_status from sales_order where client_no in ('C003','C001');
select count(order_no) from sales_order group by order_no;
create table sales as (select order_no,client_no from sales_order );
desc sales;
insert into sales select order_no,client_no from sales_order;
select order_no,dayname(order_date) from sales_order; 
select monthname(order_date), date(order_date) from sales_order; 
select now();    -- this will display both date and time
select current_time();    -- this will display only system time
select (curdate()+interval 15 day) as `after 15 day`;
select datediff(dely_date, order_date) as elasped_day from sales_order;

-- task 4
select*from product_master;
select * from sman_mast;

desc client_master;
alter table client_master
modify client_no varchar(6) primary key check(client_no Like 'C%' ),
modify name varchar(20) not null;
select * from client_master order by client_no;
insert into client_master values('C002','vandana','madras',780001,"tamil nadu",0);
update client_master SET bal_due=15000 where client_no='C001';

alter table product_master modify product_no varchar(6) primary key check(product_no Like 'P%'),
modify description varchar(15) not null,
modify p_percent numeric(4,2) not null,
modify u_measure varchar(10) not null,
modify qty_on_hand numeric(8) not null,
modify reorder_lvl numeric(8) not null,
modify sell_Price Numeric (8,2) check(sell_price != 0),
modify cost_Price Numeric (8,2) check(cost_price != 0);

alter table sman_mast modify s_no varchar(6) primary key,
modify s_name varchar(15) not null,
modify city varchar(10),
modify state varchar (12),
modify sal_amt numeric (8,2) not null check(sal_amt != 0),
modify Tgt_to_get numeric (6,2) not null check(tgt_to_get != 0),
modify ytd_sales numeric (6,2) not null,
modify remarks varchar(20);


alter table sales_order modify order_no varchar(6) primary key check(order_no like 'o%'),
modify column order_date date,
add foreign key(client_no) references client_master(client_no) On delete cascade on update cascade,
add foreign key(s_no)  references sman_mast(s_no) On delete cascade on update cascade,
modify column dely_type enum('F','P') not null,
modify column billed_yn char(1),
add check(dely_date>order_date),
modify order_status varchar(10) check(order_status in ('inprocess','fullfilled','backorder','cancelled'));


create table sales_order_details
(order_no  varchar(6) , 
product_no varchar(6), 
qty_ordered numeric(8),
qty_disp numeric(8),
product_rate numeric(10,2),
foreign key(order_no) references sales_order(order_no),
foreign key(product_no) references product_master(product_no) );
desc sales_order_details; 
insert into sales_order_details values
('O1901','P001',4,4,525),
('O1901','P002',2,1,8400),
('O1901','P003',2,1,5250),
('O1902','P001',10,0,525),
('O1903','P006',2,2,1050),
('O1903','P004',1,1,12000),
('O1908','P005',1,0,8400),
('O1908','P007',10,0,1050),
('O4665','P002',3,3,3150),
('O4665','P004',3,1,5250),
('O4665','P005',10,10,525),
('O4665','P003',4,4,1050);

 
-- task5
 
select * from sales_order;
select * from product_master;
select * from sales_order_details;
select*from client_master;

-- solve the following queries sing sub queries
-- 1
select product_no,description from product_master where product_no in(select product_no from sales_order_details where qty_disp=0);
 
-- 2
select name,city,pincode from client_master where client_no in(select client_no from sales_order where order_no= 'O1901');
 
-- 3
select client_no, name from client_master where client_no in(select client_no from sales_order where order_no in(select order_no from SALES_ORDER_DETAILS WHERE PRODUCT_NO IN(SELECT PRODUCT_NO FROM PRODUCT_MASTER WHERE DESCRIPTION = 'Mouse')));

-- Queries using Having and Group By Clause:

-- 1
select p.description, sum(s.qty_disp) as total_qty_sold from product_master as p, sales_order_details as s where s.product_no in(select p.product_no from product_master) group by p.description;

-- 2
select p.description,sum(s.qty_disp*s.product_rate) from sales_order_details as s,product_master as p where s.product_no in(select p.product_no from product_master) group by p.description;

-- 3
select sum(p.qty_disp*p.product_rate),s.order_no from sales_order as s, sales_order_details as p where s.order_no in(select s.order_no from sales_order as s where s.billed_yn='Y' and month(order_date)=01) group by s.order_no;

-- Queries on Joins and Correlation:

-- 1
select s.product_no, p.description, c.client_no from sales_order_details as s, product_master as p, sales_order as o, client_master as c where p.product_no = s.product_no and o.order_no = s.order_no and c.client_no = o.client_no and c.name = 'Ivan';
-- 2
select distinct product_master.product_no, description from sales_order_details, product_master where product_master.product_no = sales_order_details.product_no;
-- 3
select distinct o.client_no, c.name from sales_order_details as p, sales_order as o, product_master as s, client_master as c where s.product_no = p.product_no and o.order_no = p.order_no and c.client_no = o.client_no and s.description = 'cd drive';
-- 4
select o.client_no,p.product_no, p.order_no, s.description from sales_order_details as p, sales_order as o, product_master as s where o.order_no = p.order_no and s.product_no = p.product_no and s.description = 'mouse' and p.qty_ordered< 4;

-- Queries on Constructing Sentences with data:
-- 1
select concat(p.description," Worth Rs. ",sum(s.qty_ordered*s.product_rate) ," was sold.") as sentence
from sales_order_details as s , product_master as p
where p.product_no=s.product_no group by p.description order by p.description;


-- task 6
-- Solve the following queries using sub queries:-
-- 1
select client_no, name from client_master where client_no in(select client_no from sales_order where monthname(order_date)< 'may');
-- 2
select name from client_master where client_no in(select client_no from sales_order where order_no in(select order_no from sales_order_details where(qty_ordered * product_rate) >= 10000)); 

-- Queries using Having and Group By Clause:
-- 1
select c.client_no, avg(s.qty_disp) from sales_order_details as s, client_master as c, sales_order as p where c.client_no = p.client_no and s.order_no = s.order_no group by c.client_no having max(s.qty_ordered * s.product_rate) > 15000;

-- Queries on Joins and Correlation:
-- 1
select p.product_no, x.description, sum(p.qty_ordered) quantities, o.order_no from sales_order_details as p, sales_order as o, product_master x where x.product_no = p.product_no and o.order_no = p.order_no and date(o.dely_date) = date(o.order_date) group by p.product_no, x.description, o.order_no;
-- 2
select c.name,p.product_no, x.description, sum(p.qty_ordered) ordered_units from sales_order_details as p, sales_order as o, product_master x, client_master c where o.order_no = p.order_no and x.product_no = p.product_no and c.client_no = o.client_no and c.name = 'Ivan' or c.name = 'Vandana' group by p.product_no, x.description,c.name;
-- 3
select o.client_No, p.product_no, s.description, sum(qty_ordered) ordered_units from sales_order as o, sales_order_details as p, product_master as s, client_master as c where o.order_no = p.order_no and p.product_no = s.product_no and o.client_no = c.client_no group by o.client_no, p.product_no, s.description having o.client_no = 'C001' or o.client_no = 'C002';

-- Queries on Constructing Sentences with data:
-- 1
select concat(p.description," Worth Rs. ",sum(s.qty_ordered*s.product_rate) ," was ordered in the month of.",monthname(o.order_date)) as sentence
from sales_order_details as s , product_master as p, sales_order as o
where p.product_no=s.product_no and o.order_no=s.order_no group by p.description,o.order_date; 

-- 2
select concat(c.name, " has placed order ", o.order_no, " on ", s.order_date) as sentence from
sales_order_details as o, sales_order as s, product_master as p, client_master as c where p.product_no=o.product_no group by p.description,s.order_date,o.order_no,c.name;



-- task 7
use humanresource;
select * from employees;
select * from departments;
select * from locations;
-- Apply Basic Queries:
-- 1
select first_name 'first name', last_name 'last name' from employees;
-- 2
select distinct department_id from employees;
-- 3
select * from employees order by first_name desc;
-- 4
select first_name, last_name, salary, salary*.15 PF from employees; 
-- 5
select employee_id, first_name, last_name, salary from employees order by salary;
-- 6
select sum(salary) total_salary from employees;
-- 7
select max(salary), min(salary) from employees;
-- 8
select avg(salary), count(*) from employees;
-- 9
select count(*) from employees;
-- 10
select count(distinct job_id) from employees;
-- 11
select upper(first_name) from employees;
-- 12
select substring(first_name,1,3) from employees;
-- 13
select concat(first_name,' ',last_name) name from employees;
-- 14
select trim(first_name) from employees;
-- 15
select length(first_name), length(last_name), length(first_name)+length(last_name) total_length from employees;
-- 16
select first_name,last_name, round(salary/12,2) monthly_salary from employees;

-- Apply Restricting and Sorting Queries:
-- 1
select first_name,last_name,salary from employees where salary not between '10000' and '15000';
-- 2
select first_name,last_name, department_id from employees where department_id in (30,100) order by department_id;
-- 3
select first_name,last_name,salary,department_id from employees where salary not between '10000' and '15000' and department_id in (30,100);
-- 4
select first_name,last_name, hire_date from employees where year(hire_date)= '1987';
-- 5
select first_name from employees where first_name like '%b%' and first_name like '%c%';
-- 6
select last_name,job_id,salary from employees where salary not in(4500,10000,15000) and job_id in ('it_prog','st_clerk');
-- 7
select last_name from employees where length(last_name)='6';
-- 8
select last_name from employees where last_name like '__e%';
-- 9
select distinct job_id from employees;
-- 10
select first_name, last_name, salary, salary*.15 pf from employees;
-- 11
select*from employees where last_name in('blake','scott','king','ford');

-- Using Aggregate Function Queries:
-- 1
select distinct job_id from employees;
-- 2
select sum(salary) total_salary from employees;
-- 3
select min(salary) from employees;
-- 4
select max(salary) from employees where job_id in('it_prog');
-- 5
select avg(salary), count(*) from employees where department_id in (90);
-- 6
select max(salary), min(salary), avg(salary), sum(salary) from employees;
-- 7
select count(*), job_id from employees group by job_id;
-- 8
select max(salary) - min(salary) difference from employees;
-- 9
select manager_id,min(salary) from employees where manager_id is not null group by manager_id;
-- 10
select department_id, sum(salary) from employees group by department_id;
-- 11
select avg(salary), job_id from employees where job_id not in('it_prog') group by job_id;
-- 12
select sum(salary), max(salary), min(salary), avg(salary) from employees where department_id in (90) group by job_id;
-- 13
select max(salary), job_id from employees group by job_id having max(salary) >= 4000;
-- 14
select department_id, avg(salary), count(*) from employees group by department_id having count(*) > 10;

-- Using Sub Queries:
-- 1
select first_name, last_name, salary from employees where salary > (select salary from employees where last_name='bull');
-- 2
select first_name, last_name, department_id, department_name from employees join departments using(department_id) where department_name='IT';
-- 3
select first_name, last_name from employees where manager_id in(select employee_id from employees where department_id in(select department_id from departments where location_id in(select location_id from locations where country_id='us')));
-- 4 
select first_name, last_name from employees where (employee_id in (select manager_id from employees));
-- 5
select * from employees where salary > all(select avg(salary)from employees group by department_id);
-- 6
select first_name, last_name, salary from employees where employees.salary = (select min_salary from jobs where employees.job_id = jobs.job_id);
-- 7
select first_name, last_name, salary from employees where department_id in(select department_id from departments where department_name like 'IT%') and salary > (select avg(salary) from employees);
-- 8
select first_name, last_name, salary from employees where salary > (select salary from employees where last_name = 'Bell') order by first_name;
-- 9
select * from employees where salary = (select min(salary) from employees);
-- 10
select * from employees where salary > all(select avg(salary) from employees group by department_id);
-- 11
select first_name,last_name, job_id, salary from employees where salary > all (select salary from employees where job_id = 'SH_CLERK') order by salary;
-- 12
select b.first_name,b.last_name from employees b where not exists (select 'x' from employees a where a.manager_id = b.employee_id);
-- 13
select employee_id, first_name, last_name, (select department_name from departments d where e.department_id = d.department_id) department from employees e order by department;
-- 14
select employee_id, first_name from employees as A where salary > (select avg(salary) from employees where department_id = A.department_id);
-- 15
set @e = 0; select e, employee_id from (select @e = @e + 1 as e, employee_id from employees) a where mod(a.e, 2) = 0;
-- 16
select distinct salary from employees e1 where 5 in (select count(distinct salary) from employees e2 where e2.salary >= e1.salary);
-- 17
select distinct salary from employees e1 where 4 in (select count(distinct salary) from employees e2 where e2.salary <= e1.salary);
-- 18
select * from (select * from employees order by employee_id desc limit 10)records order by employee_id;
-- 19
select * from departments where department_id not in (select department_id from employees);
-- 20
select distinct salary from employees a where 3 >= (select count(distinct salary) from employees b where b.salary >= a.salary) order by a.salary desc;
-- 21
select distinct salary from employees a where 3 <= (select count(distinct salary) from employees b where b.salary >= a.salary) order by a.salary desc;
-- 22
select * from employees emp1 where (1) = (select count(distinct(emp2.salary))from employees emp2 where emp2.salary > emp1.salary);

-- Using Join Queries:
select * from employees;
select * from departments;
select * from locations;
select * from jobs;
-- 1
select location_id, street_address, city, state_province, country_name from locations inner join countries;
-- 2
select first_name, last_name, department_id, department_name from employees inner join departments using (department_id);
-- 3
select p.first_name, p.last_name, p.job_id, p.department_id, d.department_name from employees as p inner join departments d on (p.department_id = d.department_id) inner join locations as c on (d.location_id = c.location_id) where lower(c.city) = 'London';
-- 4
select e.employee_id 'Emp_Id', e.last_name 'Employee', ln.employee_id 'Manager_Id', ln.last_name 'Manager' from employees e join employees as ln on (e.manager_id = ln.employee_id);
-- 5
select p.first_name, p.last_name, p.hire_date from employees p join employees as e on (e.last_name = 'Jones') where e.hire_date < p.hire_date;
-- 6
select department_name as 'Department Name', count(*) as 'No of Employees' from departments inner join employees on employees.department_id = departments.department_id group by departments.department_id, department_name order by department_name;
-- 7
select employee_id, job_title, end_date-start_date Days from job_history inner join jobs where department_id=90;
-- 8
select d.department_id, d.department_name, d.manager_id, e.first_name from departments d inner join employees as e on (d.manager_id = e.employee_id);
-- 9
select d.department_name, e.first_name, c.city from departments d inner join employees e on (d.manager_id = e.employee_id) inner join locations as c on (c.location_id=d.location_id);
-- 10
select job_title, avg(salary) from employees inner join jobs group by job_title;
-- 11
select j.job_title, e.first_name, e.salary-min(j.min_salary) from employees as e, jobs as j where j.job_id=e.job_id group by j.job_title, e.first_name, e.salary;
-- 12
select a.* from job_history as a inner join employees as e on (a.employee_id = e.employee_id) where salary > 10000;
-- 13
select d.department_name,(DATEDIFF(now(), e.hire_date))/365 experience,concat(e.first_name," ",e.last_name) as name,e.hire_date,e.salary from employees e,departments d where d.manager_id=e.employee_id and (DATEDIFF(now(), e.hire_date))/365>15;