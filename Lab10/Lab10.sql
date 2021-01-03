CREATE DATABASE Lab10
GO

USE Lab10
GO

CREATE TABLE Toys(
ProductCode varchar(5),
Name varchar(30),
Category varchar(30),
Manufacturer varchar(40),
AgeRange varchar(15),
UnitPrice money,
Netweight Int,
QtyOnHand varchar(20),
CONSTRAINT PK_Product PRIMARY KEY (ProductCode)
)
GO
INSERT INTO Toys VALUES
(1,'Lego','Lap ghep','The Lego Group','Tren 6t',100,600,'Bo'),
(2,'Doll','Choi','Doll Inc','Tren 6t',200,100,'Chiec'),
(3,'Xe Dieu Khien','Dieu Khien Tu Xa','Cars Group','Tren 6t',500,700,'Chiec'),
(4,'Co Vua','Tri Tue','The IQ Group','Tren 6t',100,400,'Bo'),
(5,'Co Tuong','Tri Tue','The IQ Group','Tren 6t',100,400,'Bo'),
(6,'Ca Ngua','Tri Tue','The IQ Group','Tren 6t',100,300,'Bo'),
(7,' Bang ve Etch-A-Sketch','Ve Tranh','The Art Group','Tren 6t',50,100,'Chiec'),
(8,'May Dien Tu Nintendo','Dien Tu','Nintendo Group','Tren 6t',500,600,'Bo'),
(9,'G.I.Joe','Mo Hinh','The Lego Group','Tren 6t',200,100,'Bo'),
(10,'NERF Gun','Sung','The Lego Group','Tren 6t',100,400,'Chiec'),
(11,'Rubik','Lap ghep','The Lego Group','Tren 6t',100,100,'Chiec'),
(12,'Silly Putty','Nhua Deo','The Lego Group','Tren 6t',100,100,'Chiec'),
(13,'Dat Nan','Nan','VN inc','Tren 6t',100,100,'Bo'),
(14,'Magic Card','Bai Giai Tri','Yugi Group','Tren 6t',100,100,'bo'),
(15,'Teddy Bear','Mo Hinh','Teddy Group','Tren 6t',500,100,'bo')
GO

SELECT *FROM Toys
GO

CREATE PROCEDURE HeavyToys
AS
SELECT*FROM Toys
WHERE Netweight>500
GO

CREATE PROCEDURE PriceIncrease
AS
 CREATE PROC sp_PriceIncrease
 	@money money
 AS
 BEGIN
 	UPDATE Toys SET UnitPrice+=@money
 END
 GO

 CREATE PROC sp_QtyOnHand
 	@number int
 AS
 BEGIN
 	UPDATE Toys SET QtyOnHand+=@number
 END
 GO

 EXEC sp_HeavyToys 500
 EXEC sp_PriceIncrease 10
 EXEC sp_QtyOnHand -5

 -- 1
 EXEC sp_helptext 'sp_HeavyToys'
 SELECT * FROM sys.sql_modules WHERE definition like '%sp_HeavyToys%'
 SELECT OBJECT_DEFINITION(OBJECT_ID('sp_HeavyToys'))

 EXEC sp_helptext 'sp_PriceIncrease'
 SELECT * FROM sys.sql_modules WHERE definition like '%sp_PriceIncrease%'
 SELECT OBJECT_DEFINITION(OBJECT_ID('sp_PriceIncrease'))

 EXEC sp_helptext 'sp_QtyOnHand'
 SELECT * FROM sys.sql_modules WHERE definition like '%sp_QtyOnHand%'
 SELECT OBJECT_DEFINITION(OBJECT_ID('sp_QtyOnHand'))

 -- 2
 EXEC sp_depends 'sp_HeavyToys'
 EXEC sp_depends 'sp_PriceIncrease'
 EXEC sp_depends 'sp_QtyOnHand'
 GO

 -- 3
 ALTER PROC sp_PriceIncrease
 	@money money
 AS
 BEGIN
 	SELECT * FROM Toys
 	UPDATE Toys SET UnitPrice+=@money
 	SELECT * FROM Toys
 END
 GO

 ALTER PROC sp_QtyOnHand
 	@number int
 AS
 BEGIN
 	SELECT * FROM Toys
 	UPDATE Toys SET QtyOnHand+=@number
 	SELECT * FROM Toys
 END
 GO

 -- 4
 CREATE PROC sp_SpecificPriceIncrease
 AS
 BEGIN
 	UPDATE Toys SET UnitPrice+=QtyOnHand
 END
 GO

 -- 5
 ALTER PROC sp_SpecificPriceIncrease
 AS
 BEGIN
 	UPDATE Toys SET UnitPrice+=QtyOnHand
 	SELECT * FROM Toys
 END
 GO

 -- 6
 ALTER PROC sp_SpecificPriceIncrease
 AS
 BEGIN
 	UPDATE Toys SET UnitPrice+=QtyOnHand
 	SELECT * FROM Toys
 	EXEC sp_HeavyToys 500
 END
 GO

 -- 7
 ALTER PROC sp_PriceIncrease
 	@money money
 AS
 BEGIN
 	BEGIN TRY
 		SELECT * FROM Toys
 		UPDATE Toys SET UnitPrice+=@money
 		SELECT * FROM Toys
 	END TRY
 	BEGIN CATCH
 		PRINT N'Có lỗi'
 	END CATCH
 	PRINT N'Done'
 END
 GO

 ALTER PROC sp_QtyOnHand
 	@number int
 AS
 BEGIN
 	BEGIN TRY
 		SELECT * FROM Toys
 		UPDATE Toys SET QtyOnHand+=@number
 		SELECT * FROM Toys
 	END TRY
 	BEGIN CATCH
 		PRINT N'Có lỗi'
 	END CATCH
 	PRINT N'Done'
 END
 GO

 ALTER PROC sp_SpecificPriceIncrease
 	@gram int
 AS
 BEGIN
 	BEGIN TRY
 		UPDATE Toys SET UnitPrice+=QtyOnHand
 		SELECT * FROM Toys
 		EXEC sp_HeavyToys @gram
 	END TRY
 	BEGIN CATCH
 		PRINT N'Có lỗi'
 	END CATCH
 	PRINT N'Done'
 END
 GO