   select * from customer

   drop table customer

   create table customer
   (
     cust_id int primary key,
	 cust_name varchar(25),
	 prod_name varchar(25),
	 city varchar(25),
	 country varchar(25),
     company varchar(25),
	 price decimal,
	 postal_id int,
   )

   insert into customer values(1,'Suraj','sofa','Pune','India','LG',50000.00,124578)
   insert into customer values(2,'Gopal','Fan','Pune','India','Bajaj',50000.00,987578)
   insert into customer values(3,'kunal','laptop','busan','koria','Apple',150000.00,334578)
   insert into customer values(4,'Shubham','table','Kowloon','hongkong','LG',5000.00,1246543)
   insert into customer (cust_id,cust_name,prod_name,city,country,company,price) values (5,'Ram','mobile','Tai po','hongkong','Redmi',19214.00)
   insert into customer values(6,'Sham','Car','London','England','jaguar',3500214.00,1275543)
   insert into customer values(7,'pream','Bag','London','England','Dell',5214.00,1222154)





  select * from customer

  -- 1.	Write a statement that will select the City column from the Customers table
  select city from customer

  -- 2.	Select all the different values from the Country column in the Customers table.
  select distinct country from customer

  -- 3.	Select all records where the City column has the value London
  select * from customer
  where city = 'london'

  -- 4.	Use the NOT keyword to select all records where City is NOT london
  select * from customer 
  where city not in('london')

  -- 5.	Select all records where the CustomerID column has the value 3.
  select * from customer 
  where cust_id =3

  -- 6.	Select all records where the City column has the value 'pune' and the PostalCode column has the value 987578.
  select * from customer
  where city='pune' and postal_id= 987578

  -- 7.	Select all records where the City column has the value 'pune' or 'London'.
  select * from customer
  where city ='pune' or city ='london'

  -- 8.	Select all records from the Customers table, sort the result alphabetically by the column City.
  select * from customer
  order by city

  -- 9.	Select all records from the Customers table, sort the result reversed alphabetically by the column City.

  select * from customer
  order by city desc

  --10.	Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City

  select * from customer
  order by country, city 

  -- 11.	Select all records from the Customers where the PostalCode column is empty.

  select * from customer
  where postal_id is null

  -- 12.	Select all records from the Customers where the PostalCode column is NOT empty.

  select * from customer
  where postal_id is not null
   
 -- *** 13.	Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".

   select city as 'Oslo' 
   from customer 

   -- 14.	Delete all the records from the Customers table where the Country value is 'korea'.
   alter table customer
   drop column country
   where country='korea'

   -- 15.	Use the MIN function to select the record with the smallest value of the Price column.

   select min(price)
   from customer

   --16.	Use an SQL function to select the record with the highest value of the Price column.
   select max(price)
   from customer

   -- 17.	Use the correct function to return the number of records that have the Price value set to 5000

   select count(price)
   from customer
   where price=5000

   -- 18.	Use an SQL function to calculate the average price of all products.
   select avg(price)
   from customer

   --19.	Use an SQL function to calculate the sum of all the Price column values in the Products table
   select sum(price)
   from customer
    
	--20.	Select all records where the value of the City column starts with the letter "p".
	select * 
	from customer
	where city like'p%'

	--21.	Select all records where the value of the City column ends with the letter "o".
	select *
	from customer
	where city like'%o'

	-- 22.	Select all records where the value of the City column contains the letter "a".
	select * 
	from customer
	where city like'%a%'

	-- 23.	Select all records where the value of the City column starts with letter "b" and ends with the letter "n".
	select *
	from customer
	where city like'b%%n'

	select * from customer

	-- 24.	Select all records where the value of the City column does NOT start with the letter "p".
	select *
	from customer
	where city not like'p%'

	--25.	Select all records where the second letter of the City is an "o".
	select *
	from customer
	where city like'_o%'

	--26.	Select all records where the first letter of the City is an "p" or "k" or an "l".
	select *
	from customer
	where city like'[pkl]%'

	--27.	Select all records where the first letter of the City starts with anything from an "a" to an "f".
	select *
	from customer
	where city like'[a-f]%'

	--28.	Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
	select *
	from customer
	where city not like'[pkl]%'

	--29.	Use the IN operator to select all the records where the Country is either "india" or "england".
	select *
	from customer
	where country in ('india','england')

	--30.	Use the IN operator to select all the records where Country is NOT "india" and NOT "england".

	select *
	from customer
	where country not in ('india','england')

	--31.	Use the BETWEEN operator to select all the records where the value of the Price column is between 5000 and 40000

	select *
	from customer
	where price between 5000 and 40000

	--32.	Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
	select *
	from customer
	where price not between 5000 and 40000

	--33.	Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
	 select * 
     from customer
	 where prod_name between 'geotost' and 'pavlova'
	 order by prod_name

	 --34.	When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.

	 select postal_id as pno 
	 from customer

--     35.	When displaying the Customers table, refer to the table as Consumers instead of Customers.

     select * from 
     customer as 

	 --36.	List the number of customers in each country.
	 select count(cust_id)
	 from customer
	 group by country

	 --38.	Write the correct SQL statement to create a new database called testDB.
	 create database testDB

	 --39.	Write the correct SQL statement to delete a database named testDB
	 drop database testDB
 
	--40.	Add a column of type DATE called Birthday in Persons table
	alter table customer
	add birth_date date

	--41.	Delete the column Birthday from the Persons table
	alter table customer
	drop column birth_date





	                                                                                


