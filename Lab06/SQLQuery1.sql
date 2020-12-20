IF EXISTS(SELECT*FROM sys.databases WHERE NAME='Lab06')
DROP DATABASE Lab06

CREATE DATABASE Lab06
GO

USE Lab06
GO

CREATE TABLE SanPham(
	MaSP int,
	Name Varchar(50) UNIQUE,
	SL int,
	Gia int CHECK(Gia>0),
	DonVi varchar(50),
	Status Varchar(50) NULL,
	Description NVarChar(50),
	Category Nvarchar(50),
	CONSTRAINT PK_MaSP PRIMARY KEY (MaSP)
	)
	INSERT INTO SanPham VALUES 
	(1,'A Machine',1,1000,'Chiec','','Máy đang hot','Apple'),
	(2,'B Machine',5,1000,'Chiec','','Máy đang hot','SamSung'),
	(3,'C Machine',10,1000,'Chiec','','Máy đang Ế','Nokia'),
	(4,'D Machine',2,1000,'Chiec','','Máy đang hot','Xiaomi'),
	(5,'E Machine',1,1000,'Chiec','','Máy nhập mới','Huawei')
	GO

CREATE TABLE Customers(
CustomerID int,
Name varchar(50),
Address varchar(100),
Phone varchar(20),
CONSTRAINT PK_CustomersID PRIMARY KEY (CustomerID)
)
INSERT INTO Customers VALUES 
(1,'Nguyen Van A','Hanoi','0123456789'),
(2,'Nguyen Van B','Hanoi','0123456780'),
(3,'Nguyen Van C','Hanoi','0123456781'),
(4,'Nguyen Van D','Hanoi','0123456782'),
(5,'Nguyen Van E','Hanoi','0123456783')GO

CREATE TABLE TheOrder(
OrderID int,
CustomerID int,
NgayDatHang datetime,
Status varchar(50),
CONSTRAINT PK_OrderID PRIMARY KEY (OrderID),
CONSTRAINT FK_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)
INSERT INTO TheOrder VALUES 
(1,3,'2020-12-1','Dang Giao'),
(2,4,'2019-12-1','Da Giao Xong'),
(5,2,'2020-12-20','Cho Lay Hang'),
(4,5,'2020-11-1','Da Giao Xong'),
(3,1,'2020-12-2','Dang Giao')
GO

CREATE TABLE OrderDetails(
OrderID int NOT NULL,
MaSP int NOT NULL,
SL int,
SoTien money CHECK (SoTien>0),
CONSTRAINT PK_OrderSP PRIMARY KEY (OrderID,MaSP),
CONSTRAINT FK_OrderID FOREIGN KEY (OrderID) REFERENCES TheOrder(OrderID),
CONSTRAINT FK_MaSP FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
)
INSERT INTO OrderDetails VALUES 
(1,4,3,3000),
(2,5,5,5000),
(3,3,3,3000),
(4,2,2,2000),
(5,1,1,1000)
GO
SELECT*FROM OrderDetails
SELECT*FROM TheOrder
SELECT*FROM SanPham
SELECT*FROM Customers
GO
--4.a:
SELECT Customers.Name FROM Customers JOIN TheOrder ON TheOrder.CustomerID = Customers.CustomerID

--4.b:
SELECT*FROM SanPham

--4.c:
SELECT*FROM TheOrder

--5.a:
SELECT*FROM Customers
ORDER BY Name ASC

--5.b:
SELECT*FROM SanPham
ORDER BY Gia DESC

--5.c:
?????

--6.a:
SELECT COUNT(Name) AS TONGKH FROM Customers

--6.b:
SELECT SUM(SL) FROM OrderDetails

--6.c:
SELECT SUM(SoTien) FROM OrderDetails

--7.a:
ALTER TABLE OrderDetails
ADD CONSTRAINT CHK_SoTien CHECK (SoTien>0)

--7.b:
ALTER TABLE TheOrder
ADD CONSTRAINT CHK_Ngaydathang CHECK (DATEDIFF(dy,GETDATE(),NgayDatHang)>=0)

--7.c:
????