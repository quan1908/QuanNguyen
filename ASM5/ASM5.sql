CREATE DATABASE ASM5
GO

USE ASM5
GO

CREATE TABLE Person(
PersonID int,
Name varchar(50),
Adress varchar(100),
BirthDate datetime,
CONSTRAINT pk_Person PRIMARY KEY (PersonID)
)
GO

INSERT INTO Person VALUES
(1,'Nguyen Van A','Ha Noi','1995-01-03'),
(2,'Nguyen Van B','Ho Chi Minh','1996-04-01'),
(3,'Nguyen Van C','Hue','1998-08-19'),
(4,'Nguyen Van D','Da Nang','1997-04-10'),
(5,'Nguyen Van E','Hai Phong','1999-08-18')
GO


CREATE TABLE DanhBa(
PersonID int,
Tel varchar(12) UNIQUE,
CONSTRAINT fk_Person FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
)
GO

INSERT INTO DanhBa VALUES 
(1,'123456789'),
(1,'987654321'),
(2,'123456788'),
(2,'123456787'),
(3,'123456786'),
(3,'123456785'),
(4,'123456782'),
(5,'123456784'),
(5,'123456783')
GO

--4a+b:
SELECT*FROM Person
SELECT*FROM DanhBa
GO

--5:
SELECT*FROM Person
ORDER BY Name ASC
GO

SELECT Person.Name, DanhBa.Tel
FROM Person JOIN DanhBa ON Person.PersonID = DanhBa.PersonID
WHERE Name = 'Nguyen Van A'
GO

SELECT *FROM DanhBa JOIN Person ON Person.PersonID = DanhBa.PersonID
WHERE BirthDate='1999-08-18'
GO

--6:
SELECT Person.Name, COUNT(DanhBa.Tel) AS SumTel
FROM Person JOIN DanhBa ON Person.PersonID = DanhBa.PersonID
GROUP BY Person.Name
GO

SELECT COUNT(Name) AS N'Tổng số người tháng 8'
FROM Person
WHERE Month(BirthDate) = 8
GO

SELECT * FROM Person JOIN DanhBa ON Person.PersonID = DanhBa.PersonID
GO

SELECT * FROM Person JOIN DanhBa ON Person.PersonID = DanhBa.PersonID
WHERE Tel='123456789'
GO

--7:
ALTER TABLE Person
ADD CONSTRAINT CHK_Person CHECK (DATEDIFF(dd,BirthDate,GETDATE()) > 0)
GO

SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
GO

ALTER TABLE DanhBa
ADD StartDate datetime DEFAULT (GETDATE())
GO

--8a:
CREATE INDEX IX_HoTen ON Person(Name)
CREATE INDEX IX_SDT ON DanhBa(Tel)
GO
--8b:
CREATE VIEW View_SoDienThoai AS
SELECT Person.Name, DanhBa.Tel
FROM Person JOIN DanhBa ON Person.PersonID = DanhBa.PersonID
CREATE VIEW View_SinhNhat AS
SELECT Person.Name, Person.BirthDate, DanhBa.Tel
FROM Person JOIN DanhBa ON Person.PersonID = DanhBa.PersonID
WHERE MONTH(BirthDate)= GETDATE()
GO
--8C:
 CREATE PROCEDURE sp_Them_Danhba
 	@TenKH Nvarchar(40),
 	@DiaChi Nvarchar(100),
 	@NgaySinh DATETIME
 AS
 BEGIN
 	BEGIN TRY
 		INSERT INTO Person VALUES
 			(@TenKH,@DiaChi,@NgaySinh)
 	END TRY
 	BEGIN CATCH
 		PRINT N'Có Lỗi'
 	END CATCH
 	PRINT N'Done'
 END
 GO

 CREATE PROCEDURE sp_Tim_Danhba
 	@TenKH Nvarchar(40)
 AS
 BEGIN
 	BEGIN TRY
 		SELECT * FROM Person WHERE Name LIKE @TenKH
 	END TRY
 	BEGIN CATCH
 		PRINT N'Có lỗi'
 	END CATCH
 	PRINT 'Done'
 END
 GO