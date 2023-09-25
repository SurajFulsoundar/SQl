
-- adding new view 

create view Emp_from_dev as
select name,email,age,salary from employee 
where did=(select did from dept where dname='devlopm00ent')

-- modify the view 

alter view EMP_from_dev as
select name, email,age,salary,did from employee 
where did=()


create proc sp_emp_select
as begin
select * from employee
return
end

exec sp_emp_select

create proc sp_emp_city(@city varchar(10))
as begin
select * from employee where city=@city
return
end

exec sp_emp_city
@city='pune'

-- DML
create proc sp_insert_emp
(
@id int,
@name varchar(20),
@email varchar(20),
@age int,
@sal numeric(12,2),
@city varchar(10),
@did int,
@mid int
)

as begin
insert into employee values(@id,@email,@age,@sal,@city,@did,@mid)
return
end


select * from employee



