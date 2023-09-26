
create table Employee
(
 did int primary key,
 Ename varchar(20),
 age int,
 email varchar(25),
 salary numeric (12,2),
)

insert into Employee values(1,'Suraj',22, 'suraj1302@gmail.com', 55000.99)
insert into Employee values (2, 'Gopal',23, 'Gopal1302@gmail.com', 50000.22)
insert into Employee values(3,'Rushi',22, 'Rushi1302@gmail.com', 45000.99)
insert into Employee values (4, 'Sunil',20, 'Sunil1302@gmail.com', 40000.22)
insert into Employee values(5,'Pramod',22, 'Pramod1302@gmail.com', 35000.99)
insert into Employee values (6, 'Krishna',23, 'krishna1302@gmail.com', 40000.22)
insert into Employee values(7,'Sagar',22, 'sagar1302@gmail.com', 35000.99)
insert into Employee values (8, 'Omkar',20, 'omkar1302@gmail.com', 40000.22)

drop table employee

select * from employee

drop table dept1
select * from dept1

create table dept1
(
id int primary key,
dname varchar(25),
did int,
constraint fk_did foreign key(did) references employee(did)
)

alter table dept drop constraint fk_did
select * from dept1
 
insert into dept1(id,dname,did) values 
(101,'HR',1),
(102,'manager',2),
(103,'Admin',3),
(104,'Development',4),
(105,'management',5)

alter table employee
alter column email nvarchar(25)

drop table employee

select * from Employee 

-- Subquery in SQL

-- outer query
-- inner query

--Inner query gets executed first. Inner query will return the result to the outer query
--then the outer query gets executed.



-- find the max salary in employee table
select max(salary) from employee

-- display the employe details who has max salary in employee table
       
         -- outer query                    inner query  
select * from employee where salary=(select max(salary) from employee) 

-- display employee details who work in HR dept

select * from employee where did=
(
select did 
from dept1
where dname='Development'
)

-- display employee details who has less salary than krishna
select * from employee where salary <
(
select salary from employee where name='krishna'
)

-- display the employee from devlopment dept who has less salary then the
--avg salary of admin dept
select * from employee where salary<
(
select avg(salary) from employee where did=(select did from dept where
dname='admin')
)
and
did=(select did from dept where dname='development')

-- display the employee details who has 2nd highest salary

select * from employee where salary=
select max(salary) from employee where salary <>
(
select max(salary) from employee
)

-- update the salary by 2000rs for employee who work in HR dept
update employee 
set salary=salary + 20000
where did in
(
select did from dept where dname='HR'
)

-- delete the employee who work in admin dept

delete from employee
where did in 
(
select did from dept where dname='Admin'
)



