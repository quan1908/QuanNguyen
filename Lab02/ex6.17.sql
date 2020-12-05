DECLARE @PriceChangeDetails TABLE
(
HotelNumber int,
Price money,
NewPrice money
)
UPDATE HumanResources.Employee
SET NationalIDNumber = 3000
OUTPUT INSERTED.LoginID,deleted.LoginID, INSERTED.NationalIDNumber
INTO @PriceChangeDetails
WHERE NationalIDNumber = 571658797
SELECT * FROM @PriceChangeDetails

SELECT * FROM HumanResources.Employee