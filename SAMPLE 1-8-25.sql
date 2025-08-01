create database Sample
use Sample
CREATE TABLE Stud(
reg_no INT PRIMARY KEY,
name VARCHAR(10) NOT NULL,
depart VARCHAR(10) NOT NULL,
year INT NOT NULL
);

INSERT INTO Stud(reg_no,name,depart,year)values
 (7,'RANGA','IT',4),
 (99,'ARUNEEE','IT',4);
 INSERT INTO Stud(reg_no,name,depart,year)values
 (1,'RAHUL','MECH',1),
 (52,'PAVI','CS',2);
select*FROM Stud;

update Stud
set name='Arun' where reg_no=9;

delete from Stud
where reg_no=99;

drop table Stud;

alter table Stud
Add phone varchar(10);

update Stud
set phone='9345550825' where reg_no=7;

SELECT count(*) AS TOT_STUDENT FROM Stud;

Select depart,max(year) as max_year from Stud group by depart;

Select min(year) as min_year from Stud;

Select avg(year) as avg_year from Stud;

Select depart,count(*) as dep_count from Stud group by depart;

select * from Stud
ORDER BY year asc;

SELECT * FROM Stud
ORDER BY name;

select * from Stud
ORDER BY depart desc;
   
select lower(depart) as dep_up from Stud;

select upper(name) as name_up from Stud;

select left(name,2) as srt from Stud;
select name,length(name) as name_len from Stud;

select concat(name,'-',depart) as combain from Stud;

select name,year,year+1 as nxt_yr from Stud;

select reg_no,mod(reg_no,2) as ord from Stud;

alter table Stud
add date_details date;
update Stud set date_details='2024-07-31' where reg_no=7;
update Stud set date_details='2024-07-31' where reg_no=1;
update Stud set date_details='2024-07-31' where reg_no=52;
update Stud set date_details='2024-07-31' where reg_no=99;

select curdate();

select reg_no,name,year(date_details) as yr from Stud;