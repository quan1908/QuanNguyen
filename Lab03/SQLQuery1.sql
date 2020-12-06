IF EXISTS (SELECT * FROM sys.databases WHERE Name='BookLibrary')
DROP DATABASE BookLibrary
GO
CREATE DATABASE BookLibrary
GO
CREATE TABLE Book (
BookCode int PRIMARY KEY,
BookTitle varchar(100) NOT NULL,
Author varchar(50) NOT NULL,
Edition int,
BookPrice money,
Copies int,
)
SELECT*FROM Book
GO

CREATE TABLE Member (
MemberCode int PRIMARY KEY,
Name varchar(50) NOT NULL,
Adress varchar(100) NOT NULL,
PhoneNumber int 
)
SELECT*FROM Member
GO

CREATE TABLE IssueDetails(
BookCode int FOREIGN KEY REFERENCES Book(BookCode),
MemberCode int FOREIGN KEY REFERENCES Member(MemberCode),
IssueDate datetime,
ReturnDate datetime,
)
SELECT*FROM IssueDetails
GO

ALTER TABLE Book
ADD CONSTRAINT CHK_BookPrice CHECK (BookPrice > 0 AND BookPrice <200)
GO

ALTER TABLE	Member
ADD UNIQUE (PhoneNumber)
GO

ALTER TABLE IssueDetails
ALTER COLUMN BookCode INT NOT NULL
GO
ALTER TABLE IssueDetails
ADD CONSTRAINT pk_BookCode
PRIMARY KEY (BookCode)

ALTER TABLE IssueDetails
ADD CONSTRAINT pk_MemberCode
PRIMARY KEY (MemberCode)
GO

INSERT INTO Book VALUES (1,'OneMan','Q',1,100,1)
INSERT INTO Book VALUES (2,'Heaven','A',1,100,1)
INSERT INTO Book VALUES (3,'Angry','B',1,100,1)
INSERT INTO Book VALUES (4,'Sad','C',1,100,1)
INSERT INTO Book VALUES (5,'Lovesicks Boy','D',1,100,1)
GO
INSERT INTO Member VALUES (1,'UsainNg','Manchester City',668866)
INSERT INTO Member VALUES (2,'Cristiano','Lisbon City',886688)
INSERT INTO Member VALUES (3,'Didier','Chelsea',123456)
INSERT INTO Member VALUES (4,'Carlos','Norwich City',987654)
INSERT INTO Member VALUES (5,'Nemanja','Liverpool City',456789)
go

INSERT INTO IssueDetails VALUES (1,5,'','')
INSERT INTO IssueDetails VALUES (2,4,'','')
INSERT INTO IssueDetails VALUES (3,3,'','')
INSERT INTO IssueDetails VALUES (4,2,'','')