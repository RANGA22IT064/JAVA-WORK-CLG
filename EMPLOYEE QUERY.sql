create database Employee
use Employee
create table Emp(
id int primary key,
name varchar(20),
department varchar(20),
experience int);


insert into Emp(id,name,department,experience) values
(1,'ARUN','IT',2),
(2,'RANGA','CSE',3),
(3,'ABI','MECH',1),
(4,'ASWIN','CS',3),
(5,'AJAY','AIDS',1);



update Emp
set name='PRAKASH', department='CIVIL' where id=3;

alter table Emp
add salary varchar(100);

update Emp
set salary='25000' where id=1;
update Emp
set salary='20000' where id=2;
update Emp
set salary='30000' where id=3;
update Emp
set salary='50000' where id=4;
update Emp
set salary='100000' where id=5;


select*from Emp;
