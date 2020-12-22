CREATE DATABASE Lab07

USE Lab07
GO

CREATE TABLE Student(
StudentNo int,
StudentName varchar(50),
StudentAddress varchar(100),
PhoneNo int,
CONSTRAINT PK_StudentNo PRIMARY KEY (StudentNo)
)
GO

CREATE TABLE Department(
DeptNo int,
DeptName varchar(50),
ManagerName char(30),
CONSTRAINT PK_DeptNo PRIMARY KEY (DeptNo)
)
GO

CREATE TABLE Assignment(
AssignmentNo int,
Description varchar(100),
CONSTRAINT PK_AssignmentNo PRIMARY KEY (AssignmentNo)
)
GO

CREATE TABLE Works_Assign(
JobID int,
StudentNo int,
AssignmentNo int,
TotalHours int,
JobDetails XML,
CONSTRAINT PK_JobID PRIMARY KEY (JobID),
CONSTRAINT FK_StudentNo FOREIGN KEY (StudentNo) REFERENCES Student(StudentNo),
CONSTRAINT FK_AssignmentNo FOREIGN KEY (AssignmentNo) REFERENCES Assignment(AssignmentNo)
)
GO

ALTER TABLE Works_Assign
DROP FK_StudentNo
ALTER TABLE Student
DROP PK_StudentNo
CREATE CLUSTERED INDEX IX_Student ON Student(StudentNo)

ALTER INDEX IX_Student ON Student Rebuild

ALTER TABLE Department
DROP PK_DeptNo

CREATE CLUSTERED INDEX IX_DeptNo ON Department(DeptNo)
CREATE NONCLUSTERED INDEX IX_Dept ON Department(DeptName,ManagerName)