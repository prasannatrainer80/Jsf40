drop database IF EXISTS JFS40Project;

Create Database JSF40Project;

Use JSF40Project;

Create Table Department
(
    DeptCode varchar(30) Primary Key,
    DeptName varchar(30) NOT NULL,
    DeptHead varchar(30) NOT NULL
);

Insert into Department(DeptCode,DeptName,DeptHead)
values('D001','Java','Kishore'),
      ('D002','Dotnet','Anand'),
      ('D003','Admin','Murari'),
      ('D004','Testing','Shanthi'),
      ('D005','Accounts','Krishna');

Create Table Employ
(
   EmpId varchar(30),
   EmpName varchar(30) NOT NULL,
   Doj Date,
   Salary numeric(9,2),
   Dob Date,
   DeptCode varchar(30),
   constraint pk_Employ_Empid primary key(empId),
   constraint fk_employ_deptcode foreign key(DeptCode) 
	REFERENCES Department(DeptCode)
);

Insert into Employ(EmpId,EmpName,Doj,Salary,Dob,DeptCode)
values('E001','Ramya','2024-10-10',48823,'2005-10-10','D001'),
('E002','Mukesh','2024-02-24',88423,'2004-11-22','D002'),
('E003','Narendar','2024-10-10',78233,'2002-11-11','D003'),
('E004','Sandhan','2024-10-10',66222,'2003-12-12','D001');

Create Table Project
(
   ProjCode varchar(30),
   EmpId varchar(30),
   Hours INT,
   constraint fk_project_EmpId foreign key(EmpId) REFERENCES
		Employ(empId),
   constraint pk_project_c primary key(ProjCode,EmpId)
);


Insert into Project(ProjCode,EmpId,Hours) values('P001','E001',884),
('P002','E001',8823),('P001','E002',234);




