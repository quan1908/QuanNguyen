USE AdventureWorks2019
-- Sử dụng cơ sở dữ liệu AdventureWorks
GO

SELECT * FROM HumanResources.Employee
--Khai báo biến
Go
DECLARE @deptID INT
--Khai báo biến cục bộ tên là deptID kiểu int
SELECT @deptID=1
--Gán giá trị cho biến bằng 1
SELECT Name, GroupName FROM HumanResources.Department
WHERE DepartmentID = @deptID
Go

SELECT @@LANGUAGE	--Hiển thị thông tin của biến toàn cục @@LANGUAGE, trả lại thông tin ngôn ngữ sử dụng trong sql server
SELECT @@VERSION	--Hiển thị thông tin của biến toàn cục @@VERSION, trả lại thông tin về phiên bản sql server


Go

--Lấy tổng tất cả giá trị các bản ghi trường StadardCost thuộc bảng  ProductCostHistory
SELECT SUM(StandardCost) FROM Production.ProductCostHistory 

--Tính giá trị trung bình của trường StadardCost thuộc bảng  ProductCostHistory
SELECT AVG(StandardCost) FROM Production.ProductCostHistory 

--Lấy ra giá trị lớn nhất của trường StandardCost trong bảng ProductCostHistory
SELECT MAX(StandardCost) FROM Production.ProductCostHistory 

--Đếm tổng số bản ghi trong bảng ProductPhoto
SELECT COUNT(*) FROM Production.ProductPhoto

--Lấy ra ngày giờ hệ thống:
SELECT GETDATE()

--Lấy ra giờ hệ thống
SELECT DATEPART(hh,GETDATE())

--Định dạng ngày dùng hàm CONVERT
SELECT CONVERT(VarChar(50), GETDATE(), 103)
--Tham khảo thêm ở đây:
/*
http://www.java2s.com/Code/SQLServer/Date-Timezone/CONVERTVarChar50GETDATE102.htm
*/

--Lấy ra định danh của cơ sở dữ liệu
SELECT DB_ID('AdventureWorks') 

--Tạo cơ sở dữ liệu:
CREATE DATABASE EXAMPLE3

USE EXAMPLE3

--Tạo bảng trong cơ sở dữ liệu
CREATE TABLE Contacts
(MailID VARCHAR(20),
 Name NTEXT,
 TelephoneNumber INT)

--Thêm 1 cột vào bảng đã có:
ALTER TABLE Contacts ADD Address NVARCHAR(50)

--Thêm dữ liệu vào bảng Contacts:
INSERT INTO Contacts values ('abc@yahoo.com',N'Nguyễn Văn A',9898998,N'Hà Nội')
INSERT INTO Contacts values ('nguyenthiB@yahoo.com',N'Nguyễn Thị B',4329234,N'Hà Nội')
INSERT INTO Contacts values ('tranvanC@yahoo.com',N'Trần Văn C',905243524,N'Hà Nội')
INSERT INTO Contacts values ('trinhvanD@yahoo.com',N'Trịnh Văn D',4563576,N'Hà Nội')

--Lấy ra tất cả bản ghi trong bảng:
SELECT * FROM Contacts

--Xóa bản ghi có maiID=tranvanC@yahoo.com
DELETE FROM Contacts WHERE MailID='tranvanC@yahoo.com'

--Sửa bản ghi có mailID=trinhvanD@yahoo.com
UPDATE Contacts SET Name=N'Trịnh Hoàng Long' WHERE MailID='trinhvanD@yahoo.com'

--Tạo login account để test GRANT
CREATE LOGIN example3 WITH PASSWORD='123456'

--Tạo user từ login account vừa tạo
CREATE USER example3 FROM LOGIN example3

--Hủy bỏ tất cả các quyền của user example3 trên bảng Contacts
REVOKE ALL ON Contacts FROM example3
--Disconnect và connect lại với user example3/123456, thực hiện câu lệnh select để demo cho sinh viên thấy user không còn bất kỳ quyền nào trên bảng Contacts trong cơ sở dữ liệu

--Gán quyền SELECT cho example3 trên bảng Contacts 
GRANT SELECT ON Contacts TO  example3