IF EXISTS (SELECT * FROM sys.databases WHERE NAME = 'Lab08')
DROP DATABASE Lab08

CREATE DATABASE Lab08

USE Lab08
GO

CREATE TABLE SanPham(
ProductID int,
TenSP varchar(50),
Description varchar(100) NULL,
Donvi int,
Price money CHECK(Price>0),
SL int,
CONSTRAINT PK_Product PRIMARY KEY (ProductID)
)
INSERT INTO SanPham VALUES
(1,'Iphone','Like New','','1400',10),
(2,'MacBook','New100%','','2800',5),
(3,'Laptop','New100%','','2000',4),
(4,'Galaxy','99%','','1400',10),
(5,'Note10','Old','','1000',1)
GO

--Company là hãng
CREATE TABLE Company(
CompanyID int,
CompanyName varchar(50),
Phone varchar(20),
Address varchar(100),
CONSTRAINT PK_Company PRIMARY KEY (CompanyID)
)
INSERT INTO Company VALUES
(1,'Asus','123456789','Taiwan'),
(2,'Apple','123456780','USA'),
(3,'Huawei','123456781','China'),
(4,'Xiaomi','123456782','China'),
(5,'SamSung','123456783','USA')
GO
CREATE TABLE Category(
CategoryID int,
CategoryName varchar(50),
CONSTRAINT PK_Category PRIMARY KEY (CategoryID)
)
GO

--4a:
SELECT CompanyName FROM Company

--4b:
SELECT TenSP FROM SanPham

--5a:
SELECT CompanyName FROM Company
ORDER BY CompanyName DESC

--5b:
SELECT TenSP,Price FROM SanPham
ORDER BY Price DESC

--5c:
SELECT*FROM Company
WHERE CompanyName='Asus'

--5d:
SELECT*FROM SanPham
WHERE SL < 11 

--6a:
SELECT COUNT(CompanyName) AS N'Tổng sô hãng' FROM Company 

--6b:
SELECT COUNT(TenSP) AS N'Số mặt hàng' FROM SanPham

--6c:
SELECT TenSP,SL FROM SanPham

--6D:
SELECT SUM(SL) FROM SanPham

--7A:
ALTER TABLE SanPham
ADD CONSTRAINT CHK_Price CHECK (Price>0)

--7b:
????

--7c:
ALTER TABLE SanPham
ADD CONSTRAINT PK_Product PRIMARY KEY (ProductID)

ALTER TABLE SanPham
ADD CONSTRAINT PK_Company PRIMARY KEY (CompanyID)



SELECT*FROM SanPham
SELECT*FROM Company