IF EXISTS (SELECT * FROM sys.databases WHERE Name='Lab04')
DROP DATABASE Lab04
GO
CREATE DATABASE Lab04
GO
USE Lab04
GO
CREATE TABLE Students(
MaSV int,
TenSV VARCHAR(50) NOT NULL,
Ngaysinh DATETIME,
CONSTRAINT pk_MaSV PRIMARY KEY (MaSV)
)
INSERT INTO Students VALUES (1,'Nguyen Anh Quan','1996-08-19')
INSERT INTO Students VALUES (2,'Kim Ji Soo','03-01-1995')
INSERT INTO Students VALUES (3,'Kwon Ji Young','1988-08-18')
INSERT INTO Students VALUES (4,'Lalisa Manoban','1997-03-27')
INSERT INTO Students VALUES (5,'Jennie Kim','1996-01-16')
GO

CREATE TABLE class(
TenLop varchar(50),
TenPhong int,
CONSTRAINT pk_TenLop PRIMARY KEY (TenLop)
)
INSERT INTO class VALUES ('6',201)
INSERT INTO class VALUES ('7',302)
INSERT INTO class VALUES ('8',403)
INSERT INTO class VALUES ('9',504)
INSERT INTO class VALUES ('10',605)
INSERT INTO class VALUES ('11',705)
GO

CREATE TABLE StudentsClass(
MaSV int,
TenSV varchar(50),
TenLop varchar(50),
CONSTRAINT fk_TenSV FOREIGN KEY (MaSV) REFERENCES Students(Masv),
CONSTRAINT fk_TenLop FOREIGN KEY (TenLop) REFERENCES class(TenLop)
)
INSERT INTO StudentsClass VALUES (1,'Nguyen Anh Quan','10')
INSERT INTO StudentsClass VALUES (2,'Kim Ji Soo','9')
INSERT INTO StudentsClass VALUES (3,'Jennie Kim','8')
INSERT INTO StudentsClass VALUES (4,'Kwon Ji Young','7')
INSERT INTO StudentsClass VALUES (5,'Lalisa Manoban','6')
GO

UPDATE Students
SET TenSV = 'Kim Ji Soo',Ngaysinh='1995-01-03'
WHERE MaSV=2
GO

DELETE FROM class WHERE TenPhong=705
GO

SELECT*FROM Students
GO
SELECT*FROM class
GO
SELECT*FROM StudentsClass
GO