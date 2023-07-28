-- task 7
use humanresource;
select * from employees;
select * from departments;
select * from locations;
select * from jobs;
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
select b.first_name,b.last_name from employees as b where not exists (select 'x' from employees as a where a.manager_id = b.employee_id);
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