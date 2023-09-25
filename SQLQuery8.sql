
create table employeeTrack
(
id int primary key identity(1,1),
description varchar(255)
)

select * from employee
select * from employeeTrack

delete from employee where id=11

alter trigger tr_employee_insert
on employee after insert
as begin
declare @id int
declare @name varchar(25)
declare @email varchar(30)
select @id=id,@name=Ename,@email=email from inserted
insert into employeetrack values('new records with details'+cast(@id as varchar)+'name'+
@name+'email'+@email+'date'+cast( GETDATE() as varchar(25))+ ' added')
end

insert into employee values(9,'vishal',22,'vishal@gmail.com',40000.44,null)
insert into employee values(10,'vishakha',23,'vishakha@gmail.com',400200.44,null)
insert into employee values(11,'pravin',23,'pravin@gmail.com',400200.44,null)
insert into employee values(12,'pranali',23,'pranali@gmail.com',400200.44,null)
insert into employee values(13,'sayali',23,'sayali@gmail.com',400200.44,null)







create trigger tr_employee_delete
on employee after delete
as begin
declare @id int
declare @name varchar(25)
declare @email varchar(30)
select @id=id,@name=Ename,@email=email from deleted
insert into employeetrack values('new records with details'+cast (@id as varchar)+'name'+
@name+'email'+@email+'date'+cast( GETDATE() as varchar(25))+' removed')
end


select * from product 

select prod_name,price,
case 
     when price > 35000 then 'Expensive'
	 when price < 35000 then 'Not Expensive'
	 else 'Average'
end as 'Remark'
from product 


-- emp salary between 40k to 90k --- > High Salary 
-- salary between 25k to 40k -- > Average salary
-- salary between < 25k -- > is low salary

select * from employee

select ename,age,email,salary,
case  
    when salary > 40000 and salary < 90000 then 'High Salary'
    when salary > 25000 and salary < 40000 then 'Average Salary'
	when salary < 25000  then 'Low Salary'
    end as 'Remark'
    from employee







