create database jay
use jay

create table department
(deptid int primary key,
Dname varchar(20) not null,
location varchar(20) not null)

select * from department
drop table department

create table worker_info
(WORKER_ID int identity(1,1),
FIRST_NAME varchar(20),
LAST_NAME varchar(20),
SALARY int,
JOINING_DATE datetime,
DEPARTMENT varchar(10))

select * from worker_info

insert into worker_info
values  ('Monika', 'Arora', 100000, convert(datetime,'20-02-14 09:00',5), 'HRD'),
		('Niharika' ,'Verma', 80000,convert(datetime,'14-06-11 09:00',5) ,'Admin'),
	    ('Vishal' ,'Singhal', 300000,convert(datetime,'20-02-14 09:00',5),'HRD'),
	    ('Amitabh','Singh', 500000, convert(datetime,'20-02-14 09:00',5),'Admin'),
		('Vivek','Bhati', 500000,convert(datetime,'20-06-14 09:00',5), 'Admin'),
		('Vipul', 'Diwan', 200000,convert(datetime,'11-06-14 09:00',5),'Account'),
		('Satish','Kumar', 75000,convert(datetime,'20-01-14 09:00',5), 'Account'),
		('Geetika', 'Chauhan', 90000,convert(datetime,'11-06-14 09:00',5), 'Admin')

--	query to show complete_name with department name from the table worker_info.

select (first_name+' '+last_name) as complete_name,SUBSTRING(UPPER(department),1,3) DEPARTMENT from worker_info

-- query to show the first name with H at the end of name and having six alphabet and joined on jan 2014

select FIRST_NAME,JOINING_DATE,LEN(FIRST_NAME) NO_OF_ALPHABET FROM worker_info 
WHERE FIRST_NAME LIKE '%H' AND LEN(FIRST_NAME)=6		--HOW TO RESTRICT THE NO OF ALHABET TO 6

--
panigrahibikash42@gmail.com