IF EXISTS(SELECT*FROM sys.databases WHERE NAME='Lab05')
DROP DATABASE Lab05
GO

CREATE DATABASE Lab05
GO

USE Lab05
GO

CREATE TABLE PhongBan(
MaPB varchar(7),
TenPB nvarchar(50),
CONSTRAINT pk_MaPB PRIMARY KEY (MaPB)
)
INSERT INTO PhongBan 
VALUES('1','A'),
('2','B'),
('3','C'),
('4','D'),
('5','E')
GO

CREATE TABLE NhanVien(
MaNV varchar(7),
TenNV nvarchar(50),
NgaySinh Datetime,
SoCMND char(9),
GioiTinh Char(1),
DiaChi nvarchar(100),
NgayVaoLam Datetime,
MaPB varchar(7),
CONSTRAINT pk_MaNV PRIMARY KEY (MaNV),
CONSTRAINT fk_MaPB FOREIGN KEY (MaPB) REFERENCES PhongBan(MaPB)
)
INSERT INTO NhanVien 
VALUES ('1','Nguyen Van A','1971-08-19','123451','M','Ha Noi','2020-1-8','1'),
('2','Nguyen Van B','1970-08-19','123452','M','Ha Tinh','2010-1-8','1'),
('3','Nguyen Van C','1972-08-19','123453','M','Hue','2020-1-15','1'),
('4','Nguyen Van D','1973-08-19','123454','M','Quang Binh','2020-2-8','1'),
('5','Nguyen Van E','1974-08-19','123455','F','Thanh Hoa','2019-2-14','2')
GO
CREATE TABLE LuongDA(
MaDA varchar(8),
MaNV varchar(7),
NgayNhan Datetime NOT NULL,
SoTien Money,
CONSTRAINT pk_Ma PRIMARY KEY(MaDA,MaNV),
CONSTRAINT fk_MaNV FOREIGN KEY(MaNV) REFERENCES NhanVien(MaNV),
CONSTRAINT CHK_SoTien CHECK(SoTien>0)
)
INSERT INTO LuongDA VALUES
('1','2','2019-2-15',5000),
('2','1','2019-3-20',5000),
('5','1','2019-5-16',3000),
('4','2','2019-6-1',2000),
('3','3','2019-7-4',1000)
GO

ALTER TABLE NhanVien
ADD CONSTRAINT CHK_NgaySinh CHECK (NgaySinh < GETDATE())

ALTER TABLE NhanVien
ADD CONSTRAINT CHK_NgayVaoLamNgaySinh CHECK (DATEDIFF(year, NgaySinh,NgayVaoLam)>=20)

SELECT MaDA FROM LuongDA

SELECT MaNV,SUM(SoTien) FROM LuongDA GROUP BY MaNV

SELECT TenNV FROM NhanVien

SELECT SoTien FROM LuongDA

SELECT COUNT(TenNV) FROM NhanVien

SELECT * FROM NhanVien
WHERE SoCMND LIKE '%5'

SELECT*FROM NhanVien WHERE TenNV LIKE 'N%'

SELECT TOP 1 NhanVien.TenNV,MAX(LuongDA.Sotien)AS [MAX] FROM LuongDA JOIN NhanVien ON LuongDA.MaNV = NhanVien.MaNV
GROUP BY NhanVien.TenNv

DELETE FROM LuongDA WHERE MaDA LIKE 'DXD02'

DELETE FROM LuongDA WHERE SoTien LIKE '2000000'

UPDATE LuongDA SET SoTien=SoTien*10/100 + SoTien WHERE MaDA LIKE 'XDX01'

DELETE FROM NhanVien WHERE MaNV NOT IN(SELECT MaNV FROM LuongDA)

UPDATE NhanVien SET NgayVaoLam='1998-02-12' WHERE MaNV LIKE '%'

GO
SELECT*FROM PhongBan
GO
SELECT*FROM NhanVien
GO
SELECT*FROM LuongDA
GO