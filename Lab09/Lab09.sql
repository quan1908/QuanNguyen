CREATE DATABASE Lab09
GO 
USE Lab09
GO

CREATE TABLE Class(
ClassCode varchar(10),
HeadTeacher varchar(30),
Room varchar(30),
TimeSlot char,
CloseDate datetime,
CONSTRAINT PK_Class PRIMARY KEY (ClassCode)
)
INSERT INTO Class VALUES
('A1001','Nguyen Van A','201','A','2020-12-1'),
('A1002','Nguyen Thi B','202','B','2020-12-2'),
('A1003','Nguyen Van C','203','C','2020-12-3'),
('A1004','Nguyen Thi D','204','D','2020-12-4'),
('A1005','Nguyen Van E','205','E','2020-12-5')
GO

CREATE TABLE Student(
RollNo varchar(10),
ClassCode varchar(10),
FullName varchar(30),
Male bit,
BirthDate datetime,
Address varchar(30),
Provice char(2),
Email varchar(30),
CONSTRAINT PK_RollNo PRIMARY KEY (RollNo),
CONSTRAINT FK_ClassCode FOREIGN KEY (ClassCode) REFERENCES Class(ClassCode)
)
INSERT INTO Student VALUES
('B1001','A1001','Nguyen Van F',1,'1997-01-03','Cau Giay','HN','F@gmail.com'),
('B1002','A1002','Nguyen Van G',1,'1998-01-03','Tien Hai','TB','G@gmail.com'),
('B1003','A1003','Nguyen Van H',1,'1999-01-03','Nho Quan','NB','H@gmail.com'),
('B1004','A1004','Nguyen Thi I',0,'1996-01-03','Dinh Cong','HN','I@gmail.com'),
('B1005','A1005','Nguyen Van k',1,'1995-01-03','Van DIen','HN','K@gmail.com')
GO

CREATE TABLE Subject(
SubjectCode varchar(10),
SubjectName varchar(40),
WMark bit,
PMark bit,
WTest_per int,
PTest_per int,
CONSTRAINT PK_SubjectCode PRIMARY KEY (SubjectCode)
)
INSERT INTO Subject VALUES
('001','Elementary Programing with C','1','1','2','3'),
('002','HTML','1','1','2','3'),
('003','CSS','1','1','2','3'),
('004','Java Script','1','1','2','3'),
('005','SQL','1','1','2','3')
GO

CREATE TABLE Mark(
RollNo varchar(10),
SubjectCode varchar(10),
WMark float,
PMark float,
Mark float,
CONSTRAINT PK_RollSubject PRIMARY KEY(RollNo,SubjectCode),
CONSTRAINT FK_RollNo FOREIGN KEY (RollNo) REFERENCES Student(RollNo),
CONSTRAINT FK_SubjectCode FOREIGN KEY (SubjectCode) REFERENCES Subject(SubjectCode)
)
INSERT INTO Mark VALUES
('B1001','001',9,9,9.0),
('B1002','002',8,9,8.5),
('B1003','003',9,10,9.5),
('B1004','004',8,10,9.0),
('B1005','005',8,8,8.0)
GO

--2:
CREATE VIEW V_StudentMark AS
SELECT Student.FullName
FROM Student JOIN Mark ON Student.RollNo=Mark.RollNo

--3:
CREATE VIEW V_StudentFail AS
SELECT Student.FullName,Mark.Mark
FROM Student JOIN Mark ON Student.RollNo=Mark.RollNo
WHERE Mark < 9

--4:
CREATE VIEW V_TimeSlotE AS
SELECT Student.FullName, Class.TimeSlot
FROM Student JOIN Class ON Student.ClassCode = Class.ClassCode
WHERE TimeSlot='E'

--5:
????
--6:
????
SELECT*FROM Class
SELECT*FROM Student
SELECT*FROM Subject
SELECT*FROM Mark