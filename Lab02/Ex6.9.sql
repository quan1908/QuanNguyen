use AdventureWorks2019
go

select * from HumanResources.Department

update HumanResources.Department
SET GroupName = 'Sales'
WHERE Name='Sales'