create table bank
(
  bank_id int primary key,
  name varchar(25),
  adress varchar(25),
  city varchar(25),
  state varchar(25)
)

create table customer
(
 cus_id int primary key,
 bank_id int,
)

 create table accounts
 (
  acc_no int primary key,
  cust_id int,
  acctype_id int,
  balance decimal
 )

 create table accountType
 (
  acctype_id int,
  acctype varchar(25)
 )

 create table transaction
 (
  transaction_id int,
  acc_no int
 )

 create table customer_master
 (
  cust_id int,
  cust_name varchar(25),
  contact varchar(25),
  age int,
  pan_no varchar(25) unique,
 )
