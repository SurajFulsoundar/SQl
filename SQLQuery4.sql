
create table doctors
(
 doctor_id int primary key,
 first_name varchar(30),
 last_name varchar(30),
 speciality varchar(25),
)

create table province_name
(
 province_id char(2),
 province_name varchar(30),
)

create table patient
(
  patient_id int primary key,
  first_name varchar(30),
  last_name varchar(30),
  gender char(1),
  birth_date date,
  city varchar(30),
  province_id char(2),
  allergies varchar(80),
  height decimal(3,0),
  weight decimal(4,0),
)

create table admissions
(
 patient_id int,
 admission_date date,
 discharge_date date,
 diagnosis varchar(50),
 attending_doctor_id int,
)

select * from doctors

select * from province_name

select * from patient

select * from admissions

insert into doctors values (1,'Suraj','Fulsoundar','Heart specilist')
insert into doctors values (2,'Gopal','Fulsoundar','Brain specilist')
insert into doctors values (3,'Rushi','Gade','Eyes specilist')
insert into doctors values (4,'Shivam','Minde','ear specilist')
insert into doctors values (5,'Dhananjay','Rokade','Brain specilist')

