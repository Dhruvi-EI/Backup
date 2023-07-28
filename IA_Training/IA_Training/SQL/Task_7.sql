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
-- Using Sub Queries:
-- 1 







	







 



