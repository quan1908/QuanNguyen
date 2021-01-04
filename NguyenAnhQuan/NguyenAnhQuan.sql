CREATE DATABASE NguyenAnhQuan
GO

USE NguyenAnhQuan
GO

CREATE TABLE Categories(
CateID char(6),
CateName nvarchar(100) NOT NULL,
Description nvarchar(200),
CONSTRAINT PK_CateID PRIMARY KEY (CateID)
)
GO
INSERT INTO Categories VALUES
(1,'RAM','Random Access Memory'),
(2,'CPU','Central Processing Unit'),
(3,'HDD','Hard Disk Drive')
GO

CREATE TABLE Parts(
PartID int IDENTITY,
PartName nvarchar(100) NOT NULL,
CateID char(6),
Description nvarchar(1000),
Price money DEFAULT 0,
Quantity int DEFAULT 0,
Warranty INT DEFAULT 1,
Photo nvarchar(200) Default 'photo/nophoto.png',
CONSTRAINT PK_PartID PRIMARY KEY (PartID),
CONSTRAINT fk_CateID FOREIGN KEY (CateID) REFERENCES Categories(CateID)
)
GO
INSERT INTO Parts(PartName,CateID,Description,Price,Quantity,Warranty,Photo) VALUES
('DELL',3,NULL,100,5,12,'Dell.png'),
('APPLE',2,NULL,300,3,24,'APPLE.png'),
('ACER',1,NULL,400,6,36,'Dell.png')
GO

SELECT*FROM Categories JOIN Parts ON Categories.CateID = Parts.CateID
WHERE Price > 100
GO

SELECT*FROM Categories JOIN Parts ON Categories.CateID = Parts.CateID
WHERE CateName = 'CPU'
GO

CREATE VIEW V_Parts AS
SELECT P.PartID, P.PartName, C.CateName,P.Price,P.Quantity
FROM Categories C JOIN Parts P ON C.CateID = P.CateID
GO

CREATE VIEW V_TopParts AS
SELECT TOP 1 *
FROM PARTS
ORDER BY Price DESC
GO