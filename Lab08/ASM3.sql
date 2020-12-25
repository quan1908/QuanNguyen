IF EXISTS (SELECT * FROM sys.databases WHERE NAME = 'Lab08_1')
DROP DATABASE Lab08_1

CREATE DATABASE Lab08_1

USE Lab08_1
GO

CREATE TABLE Customers(
CustomersID int,
TenKH varchar(50),
CMND varchar(50) UNIQUE,
Address varchar(100),
CONSTRAINT PK_Customers PRIMARY KEY (CustomersID)
)
INSERT INTO Customers VALUES
(1,'Nguyen Van A','123456789','Ha Noi'),
(2,'Nguyen Van B','123456788','HCM'),
(3,'Nguyen Van C','123456787','Hue'),
(4,'Nguyen Van D','123456786','Thanh Hoa'),
(5,'Nguyen Van E','123456785','Lang Son')
GO

CREATE TABLE Services(
ServicesID int,
ServicesName varchar(50),
Description varchar(100) NULL,
CONSTRAINT PK_Services PRIMARY KEY (ServicesID)
)
INSERT INTO Services VALUES
(1,'Viettel','Tra Truoc'),
(2,'Viettel','Tra Sau'),
(3,'Vinaphone','Tra Truoc'),
(4,'Mobifone','Tra Truoc'),
(5,'Vinaphone','Tra Sau'),
(6,'Mobifone','Tra Sau')
GO

CREATE TABLE CustomersDetails(
CustomersID int,
ServicesID int,
Tel varchar(20),
StartDate datetime,
EndDate datetime,
CONSTRAINT PK_ServicesCustomers PRIMARY KEY (ServicesID,CustomersID),
CONSTRAINT FK_Customers FOREIGN KEY (CustomersID) REFERENCES Customers(CustomersID),
CONSTRAINT FK_Services FOREIGN KEY (ServicesID) REFERENCES Services(ServicesID),
)
INSERT INTO CustomersDetails VALUES
(1,1,'0123456789','2020-08-01','2022-08-01'),
(2,5,'0123456789','2020-09-01','2020-09-01'),
(3,4,'0123456789','2020-10-01','2020-10-01'),
(4,2,'0123456789','2020-11-01','2020-11-01'),
(5,3,'0123456789','2020-12-01','2020-12-01')
GO



--5a:
SELECT * FROM  CustomersDetails JOIN Customers ON CustomersDetails.CustomersID = Customers.CustomersID
WHERE Tel LIKE '0123456789'

--5b:
SELECT * FROM Customers JOIN CustomersDetails ON CustomersDetails.CustomersID = Customers.CustomersID
WHERE CMND='123456789'

--5c:
SELECT Customers.TenKH,CustomersDetails.Tel FROM CustomersDetails JOIN Customers ON CustomersDetails.CustomersID = Customers.CustomersID
WHERE CMND='123456789'

--5d:
SELECT CustomersDetails.Tel,CustomersDetails.StartDate FROM CustomersDetails
WHERE StartDate = '2020-08-01'

--5e:
SELECT CustomersDetails.Tel FROM CustomersDetails JOIN Customers ON CustomersDetails.CustomersID=Customers.CustomersID
WHERE Address='Ha Noi'

--6a:
SELECT COUNT(TenKH) AS N'Tổng số KH' FROM Customers

--6b:
SELECT COUNT(Tel) AS N'Tổng số thuê bao' FROM CustomersDetails

--6c:
SELECT StartDate,COUNT(Tel) FROM CustomersDetails
WHERE StartDate='2020-08-01'
GROUP BY StartDate

--6D:
SELECT*FROM Customers JOIN CustomersDetails ON CustomersDetails.CustomersID=Customers.CustomersID

--7A:
ALTER TABLE CustomersDetails 
ALTER COLUMN StartDate Datetime NOT NULL

--7b:
ALTER TABLE CustomersDetails
ADD CONSTRAINT CHK_DATE CHECK (DATEDIFF(DY,GETDATE(),StartDate)>=0)

--7C:
????

--7D:
????

SELECT*FROM Customers
SELECT*FROM Services
SELECT*FROM CustomersDetails