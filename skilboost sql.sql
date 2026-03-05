create database mahmod;
use mahmod;

-- to create a table
create table employees (
employee_id int,
first_name varchar (50),
last_name varchar (50),
hourly_pay decimal (5,2),
hire_date date
);

-- to add a new column
alter table employees
add phone_number varchar (20);

-- to rename a table
rename table employees to employers;

-- to rename a column in the table_
alter table employers
rename column phone_number to email;

-- to edit the data type/ data type size
alter table employers
modify column email varchar (50);

-- to change column position
alter table employers
modify column email varchar (50) after last_name;

insert into employers
values (002, "Shodipo", "Fadl", "fadlshodipo@gmail.com", 70.36, "2025-06-29", "Port Harcourt"),
(003, "Shodipo", "Zara", "zarashodipo@gmail.com", 90.99, "2025-11-06", "Abuja"),
(004, "Shodipo", "Kofo", "kofoshodipo@gmail.com", 100.36, "2025-12-01", "Ogun"),
(005, "Ubani", "Wendy", "wenubani@gmail.com", 30.33, "2021-03-03", "Abia");

select * from employers;


-- Classwork
create database sql_class;
use sql_class;
create table students (
StudentID int,
First_name varchar (15),
Last_name varchar (15),
Date_of_birth date,
Email varchar (20),
Phone_number varchar (20)
);


insert into students
values (3, "Tochukwu", "Somtochukwu", "2002-04-03", "tochukwusomtochukwu@sb.com", "08123456789"),
(4, "Maro", "Renor", "2003-05-04", "marorenor@sb.com", "08123456789"),
(5, "Ideozu", "Igazuema", "2004-06-05", "ideaozuigazuema@sb.com", "08123456789"),
(6, "Shodipo", "Mahmod", "2005-07-06", "shodipomahmod@sb.com", "08123456789"),
(7, "Ewon", "Emmanuel", "2006-08-07", "ewonemmanuel@sb.com", "08123456789"),
(8, "Nwokedi", "Victoria", "2007-09-08", "nwokedivictoria@sb.com", "08123456789"),
(9, "Emone", "Lewis", "2008-10-09", "emonelewis@sb.com", "08123456789"),
(10, "Odikagbo", "Samuel", "2009-11-10", "odikagbosamuel@sb.com", "08123456789"),
(11, "Godson", "Chiamaka", "2010-12-11", "godsonchiamaka@sb.com", "08123456789");

select * from students;

-- to update a table
update employers
set hourly_pay = 150.54
where employee_id =1;

-- to delete data from a table
delete from employers
where employee_id = 5;

-- creating a tble with a constraint
create table marketing (
transaction_id int primary key auto_increment,
amount decimal (5,2) not null,
product varchar (30) unique);

insert into marketing
values (1, 30.56, "rice");

insert into marketing (amount, product)
values ("35.73", "plantain");

select * from marketing;

use sql_class;
create table employees (
employee_id int auto_increment primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
date_of_birth date,
hire_date date);
alter table employees
add department varchar(25);

alter table employees
modify column last_name varchar (100);

alter table employees
rename column hire_date to joining_date;

alter table employees
drop column date_of_birth;

insert into employees
values(1,"shodipo", "mahmod", "2005-12-12", "HR"); 

insert into employees (first_name, last_name, joining_date, department)
values("asemota", "charles", "2024-6-12", "cybersecurity"),
("owen", "michael", "2023-9-18", "front_end");

select * from employees;

use database mahmod;
