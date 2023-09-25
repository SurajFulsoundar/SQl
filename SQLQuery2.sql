
create database dp4

 use[dp_6_titance]

 drop database dp4

 select * from employee

 drop table employee

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

 select * from employee

-- % is used for not known letters or count

-- start with s end with any letters
select * from employee where Ename like 's%'

-- start with any letters end with i
select * from employee where ename like '%i'

-- start and end with any letters, name contains i
select * from employee where ename like'%s%'

-- match with multiple letters
select * from employee where ename like '%[djr]'

select * from employee where ename like'[pg]%'

-- range [a-g]
select * from employee where ename like'[a-g]%'

select * from employee where ename like'%[a-n]'

-- underscore is used to define specific letters
-- match the exact count of letters

select * from employee where ename like' s____'

select * from employee where ename like'____j'

select * from employee where ename like'__K__'

-- first five records 

--   display 3 emp with highest to lowest salary

select top 3 * from employee order by salary desc

-- dispaly emp who have highest salary  in the table

select  top 1 * from employee order by salary desc

select top 3 * from employee order by ename desc

-- dispaly emp who have lowest salary  in the table
select top 1 * from employee order by salary 

select * from employee order by salary desc

-- ties -- > match data based on column that we specify in order by

select top 5 with ties * from employee order by salary

select top 7 with ties * from employee order by salary desc


select * from employee

update employee
set salary= 35000.99
where did=3

-- display emp who have 5th highest salary in the table

select * 
from employee
order by salary desc
offset 2 rows
fetch next 1 rows only

-- display emp who have 3rd and 4th highest salary in the table

select *
from employee order by salary desc
offset 2 rows
fetch next 2 rows only

-- display emp who have 2rd lowest salary in the table

select * 
from employee order by salary 
offset 2 rows
fetch next 1 rows only


-- display emp who have 5rd and 6th lowest salary in the table
select * 
from employee order by salary
offset 4 rows
fetch next 2 rows only

-- Aggrigate function

-- max price, age salary

select max(salary) as 'Max salary' from employee

select min(salary) as 'Min salary'from employee

select avg(salary) as 'avg salary' from employee

select sum(salary) as 'sum salary' from employee

select count(did) from employee

select count(distinct 'City') from employee


-- find total count with null records count (*)

select count(*) as 'total count' from employee






 

   




















