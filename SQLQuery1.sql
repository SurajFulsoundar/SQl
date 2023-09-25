create table Employee 
(id int ,
name varchar(20), 
sallary decimal
 

)
drop table Employee
create table Dept(
Did int,
Dname varchar (20),
constraint pk_Dept Primary key (Did)
)
create table Employee
( 
id int,
Did int,
name varchar(20),
constraint fk_emp_dept foreign key (did) references Dept(did)
)
exec sp_help Employee
create table Bank 
(
accNo int,
balance int,
AcName varchar(20)not null,
branch varchar(20), --Default 'Kothrud',
email varchar(20)unique,

constraint pk_balance primary key (balance),
constraint chk_balance check (balance > 0)
)
drop table Bank 
alter table Employee add age int
alter table Employee add constraint chk_age check (age > 18)
exec sp_help Employee 
exec sp_help Bank 
alter table Employee drop constraint chk_age
alter table Bank add constraint branch default 'Kothrud' for branch
alter table bank drop constraint dep_branch 
create unique index in _emp on Employee (id)






create table Employee
(
 id int primary key,
 name varchar(20) unique,
 salary numeric (12,2),

)
select * from Employee 
insert into Employee values(1,'Suraj', 22, 'suraj1302@gmail.com', 55000.99)
insert into Employee values (2, 'Gopal', 23, 'Gopal1302@gmail.com', 50000.22)
insert into Employee values(3,'Rushi', 22, 'Rushi1302@gmail.com', 45000.99)
insert into Employee values (4, 'Sunil', 20, 'Sunil1302@gmail.com', 40000.22)
insert into Employee values(5,'Pramod', 22, 'Pramod1302@gmail.com', 35000.99)
insert into Employee values (6, 'Krishna', 23, 'krishna1302@gmail.com', 40000.22)
insert into Employee values(7,'Sagar', 22, 'sagar1302@gmail.com', 35000.99)
insert into Employee values (8, 'Omkar', 20, 'omkar1302@gmail.com', 40000.22)

create table EmployeeInfo
(
EmpID int primary key,
EmpFName varchar (50),
EmpLName varchar(50),
Department varchar(55),
Project varchar(10),
Address varchar(25),
DOB date,
Gender varchar(30)
)
select * from EmployeeInfo


create table EmoloyeePosition
(
EmpId int,
EmpPosition varchar (20),
DateOfJoining date,
Salary Numeric(12,2),
constraint FK_EmpId foreign key(EmpId) references EmployeeInfo (EmpId)
)
select * from EmoloyeePosition

 
insert into EmployeeInfo(EmpID,EmpFName,EmpLName,Department,Project,Address,DOB,Gender)values
(1,'Rohit','Gupta','Admin','P1','Delhi','12/02/1979','Male'),
(2,'Rahul','Mahajan','Admin','P2','Mumbai','10/10/1986','Male'),
(3,'Sonia','Banrjee','HR','P3','Pune','05/06/1983','FeMale'),
(4,'Ankita','Kapoor','HR','P4','Channai','11/28/1983','FeMale'),
(5,'Swati','Grag','HR','P5','Delhi','10/10/1986','FeMale')

insert into EmoloyeePosition (EmpId,EmpPosition,DateOfjoining,salary) values
(1,'Executive','01/04/2020',75000),
(2,'Manager','03/04/2020',5000000),
(3,'Manager','02/04/2020',15000),
(4,'Officer','02/04/2020',90000),
(5,'Manager','03/04/2020',300000)


-- 1. Create a query to generate the first records from the EmployeeInfo table.
    select top 1 * from EmployeeInfo

-- 2. Create a query to generate the last records from the EmployeeInfo table.
    select top 1 * from EmployeeInfo order by EmpId desc

-- 3. Create a query to fetch the third-highest salary from the EmpPosition table.
    select * from EmoloyeePosition order by salary desc offset 2 rows fetch next 1 row only

-- 4. Write a query to find duplicate records from a table.
    select EmoloyeePosition, count(EmpId) from EmoloyeePosition group by EmoloyeePosition having count(EmpId) > 1

-- 5. Create an SQL query to fetch EmpPostion and the total salary paid for each employee position.
    select EmpPosition, sum(salary) from EmoloyeePosition group by EmpPosition

-- 6. find the employee who has max salary
    select max(salary) as 'max salary' from EmoloyeePosition


-- 7 find the employee who has max salary from HR department
    select e.EmpFName,e.EmpLName, max(salary) as 'maxSalary' from EmployeeInfo e inner join EmoloyeePosition
	on e.EmpId=em.EmpId
	group by e.empFname

-- 8 find the age of each employee



-- 9 display only female employee details


-- 10 display employee whos position is executive


-- 11 display count of employee in each city


drop table student
create table student
(
 rollno int primary key,
 stdname varchar(50),
 marks int NOT NULL,
 grade varchar(1),
 city varchar(20)
)
 select * from student

insert into student 
(rollno,stdname,marks,grade,city)
values 
(101,'anil',78,'c','pune'),
(102,'bhumika',93,'A','mumbai'),
(103,'chetan',85,'B','mumbai'),
(104,'Dhruv',96,'A','delhi'),
(105,'emanuel',12,'F','Delhi'),
(106,'Farah',82,'B','Delhi')

-- Display all table
select * from student

 -- Dublicate value not dispaly
select distinct city from student

  -- where clause
   -- display above 80 marks student
 select * 
 from student 
 where marks > 80

 -- display student list belong from mumbai
 select * 
 from student 
 where city ='mumbai'

  -- display student list which has A grade
 select * 
 from student 
 where grade = 'A'

  -- display student list which has marks is 80 above, and belong from delhi
  -- both condisions are must be true.
 select * 
 from student 
 where marks > 80 And  city ='delhi'

  -- display student list which has marks is 80 above or belong from delhi
  -- atleast one condition true
 select * 
 from student 
 where marks > 80 OR  city ='delhi'

 -- display student list which has marks between above 80 and below 90 
 select * 
 from student 
 where marks between  80 and 90

 -- display student list which is belong from delhi and pune
 select * 
 from student 
 where  city in ('delhi','pune')

  -- display student list which is not belong from delhi and pune
 select * 
 from student 
 where  city not in ('delhi','pune')

 --select *from student order by marks desc offset 1 rows 
-- fetch next 1 rows only

 -- order by Clause

 -- alphabetically display city
 select * from student order by city asc

  -- assending oerder display the marks
 select * 
 from student 
 order by marks asc

 -- Dessending order display marks
 select * 
 from student 
 order by marks desc

 -- write a query to find avg marks in each city in ascending order
 select city,avg(marks)
 from student
 group by city
 order by avg(marks) desc  -- By default assending order
  
 -- Aggregate  functions

 select  max(marks) 
 from student

 select  min(marks) 
 from student

 select  count(stdname) 
 from student

 select  sum(marks) 
 from student

 select  avg(marks) 
 from student

alter table student 
add city varchar(50)

select * from student


alter table student 
drop column city


update student 
set city ='mumbai'
where rollno in(101,103,104)

update student 
set salary=50000 
where rollno not in(101,102,105) 

-- Gruop by 

select city, count(rollno)
from student
group by city

select city, avg(marks)
from student
group by city

select city, sum(marks)
from student
group by city

drop table bank
create table bank
(
 costomer_id int primary key,
 costomer varchar(50),
 mode varchar(50),
 city varchar(20)
)
select * from bank

insert into bank(costomer_id,costomer,mode,city)
values
(101,'Suraj','Netbanking','pune'),
(102,'Gopal','credit card','mumbai'),
(103,'Rushi','credit card','nagar'),
(104,'Dhananjay','Netbanking','pune'),
(105,'kunal','Debit card','nashik'),
(106,'Shivam','Netbanking','sangamner'),
(107,'sanket','credit card','yevla'),
(108,'Vishal','Debit card','kukana'),
(109,'sharad','credit card','pune'),
(110,'vishal','netbanking','nashik') 

-- find the total payment according to each payment method

select mode,count(costomer)
from bank
group by mode

select grade,count(stdname)
from student
group by grade
order by grade

-- Having clause
-- similar to where clause i.e applies some condition on row
-- used when we want to apply any condition after grouping

select city
from student
where grade='A'       -- row base condition apply
group by city
having max(marks)>90   -- columns base condition apply
order by city desc

select * from student

-- Table related Queries
-- #  UPDATE     (to update exsting rows)

update student
set grade = 'O'
where marks between 80 and 90 

update student 
set city ='Nagar'
where city = 'solapur'

update student
set stdname = 'sanket'
where stdname='chetan'

update student
set rollno=101
where rollno=19

update student
set marks = 66
where rollno=105

update student
set marks=marks+1 


--# DELETE
--(to delete existing rows)

delete
from student
where marks < 30

update student
set marks= 20
where marks between 50 and 70



-- ALTER
-- to change the add column, remove, modify,rename column name

-- add column
alter table student
add age int not null default 19  

-- drop column
alter table student
drop column age 

-- RENAME Table
exec sp_rename'stud','student'

-- CHANGE Column (rename)
alter table student 
change age std_age int

-- MODIFY Column(modify data type / constraint)
 alter table student
 modify column age varchar(2)


update student
set age = 23
where rollno in(101,102,103)

update student
set age=22
where rollno not in(101,102,103)

 truncate table student

 select * from student

 alter table student
 change stdname std_name varchar(50)

 delete 
 from student
 where marks < 80

 alter table student
 drop column grade

 alter table student
 add grade varchar(20)

 create table stud
 (
 sudent_id int primary key,
 stdname varchar(50)
 )

 create table course
 (
 stdt_id int primary key,
 sub_name varchar(50)
 )

 insert into stud values(101,'Suraj')
 insert into stud values(102,'Gopal')
 insert into stud values(103,'Krishna')
 insert into stud values(106,'Radhey')
 insert into stud values(107,'Ram')
 insert into stud values(109,'Rushi')

 insert into course values(102,'English')
 insert into course values(105,'math')
 insert into course values(103,'science')
 insert into course values(107,'computersciece')
 insert into course values(109,'computersciece')
 insert into course values(111,'hindi')


 
 select * from stud
 select * from course


 select * 
 from stud as s
 left join course as c
 on s.sudent_id=c.stdt_id

 select * 
 from stud as s
 right join course as c
 on s.sudent_id=c.stdt_id

 select * 
 from stud as s
 inner join course as c
 on s.sudent_id=c.stdt_id

 select * 
 from stud as s
 left join course as c
 on s.sudent_id=c.stdt_id
 union
 select * 
 from stud as s
 right join course as c
 on s.sudent_id=c.stdt_id

 

  












 

 


 

























 


























