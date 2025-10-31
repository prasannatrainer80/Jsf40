drop database if exists JFS40New;

create database JFS40New;

use JFS40New;

Create table Employee
(
   Empno INT,
   Name varchar(1),
   Dob date,
   Gender varchar(1),
   Dept varchar(5),
   Desig varchar(5),
   Salary numeric(9,2)
);

 -- Add Primary Key on Empno field on Employee table 

alter table employee
add constraint pk_employee_empno primary key(empno);

-- alter table employee
-- drop primary key;

-- Modify Name field of size varchar(30) 

alter table Employee
modify name varchar(30) NOT NULL;

-- Modify the Gender datatype as Enum('MALE','FEMALE') 

alter table Employee
modify gender Enum('MALE','FEMALE');

-- Modify the Dept datatype as varchar(20)

alter table Employee
modify dept varchar(20) NOT NULL;

-- Modify the Field Desig as varchar(20) 

Alter Table Employee
Modify desig varchar(20) NOT NULL;

-- Add new column comm INT to Employee table 

Alter table Employee
add comm INT;

-- Drop column INT from Employee table 

Alter table Employee
Drop Column Comm;

Create Table LeaveDetails
(
   LeaveId INT,
   Empno INT,
   LeaveStartDate Date,
   LeaveEndDate Date,
   NoOfDays INT,
   LeaveReason varchar(30),
   LeaveStatus varchar(10),
   ManagerComments varchar(30)
);

-- Modify LeaveId as primary key and auto Increment

alter table LeaveDetails
modify leaveId INT NOT NULL Auto_Increment Primary Key;


-- Add Foreign key on Empno Field

alter table LeaveDetails
add constraint fk_LeaveDetails_empno Foreign Key(empno) 
REFERENCES Employee(Empno);

Insert into Employee(Empno,Name,Dob,Gender,Dept,Desig,Salary)
values(1,'Nikhil','2002-12-12','MALE','Java','Expert',82345),
(2,'Praveen','2002-11-11','MALE','Java','Manager',88234),
(3,'Poojitha','2003-11-11','FEMALE','Mysql','Expert',84235),
(4,'Harshitha','2003-12-12','FEMALE','Java','TeamLead',88111),
(5,'Purushottam','2004-12-01','MALE','Mysql','DBA',90000);

