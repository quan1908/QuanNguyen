USE master
GO
--Nếu tồn tại đối tượng (CSDL) tên là Example4 thì xóa đối tượng (CSDL) này đi
IF(DB_ID('Example4') IS NOT NULL)
DROP DATABASE Example4

--Tạo CSDL tên là Example4 (lưu ý đường dẫn WHERE phải tồn tại từ trước nếu ko sẽ phát sinh lỗi)
CREATE DATABASE Example4
ON PRIMARY
(
	NAME='Example4',
	FILENAME='WHERE\Example4.mdf'
)
LOG ON
(
	NAME='Example4',
	FILENAME='WHERE\Example4.ldf'
)
GO

CREATE DATABASE Example4
ON PRIMARY
(
	NAME=N'Customer_DB',
	FILENAME=N'C:\Temp\Example4.mdf'
)
LOG ON
(
	NAME=N'Customer_DB_log',
	FILENAME=N'C:\Temp\Example4_DB_log.ldf'
)
COLLATE SQL_Latin1_General_CP1_CI_AS
GO

USE Example4
GO
--Thay đổi tên CSDL Example4 thành Example4Test:
ALTER DATABASE Example4 MODIFY NAME = Example4Test
GO

USE Example4Test
GO
EXECUTE sp_changedbowner @loginame='sa'
EXEC sp_changedbowner 'sa'

USE Example4Test
GO
ALTER DATABASE CUST_DB SET AUTO_SHRINK ON
GO

USE master
GO
