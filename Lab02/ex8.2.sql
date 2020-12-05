--Khai báo biến kiểu int
DECLARE @age int = 40
--Khai báo biến kiểu thập phân
DECLARE @taxPercent decimal = 0.75
--Khai báo biến đổi loại tiền
DECLARE @amount money = 50000
DECLARE @bonus money = @amount*.10
--Khai báo biến của loại ngày
DECLARE @userDate date = '09-30-2009'
DECLARE @currentDate date = GETDATE()
SELECT @age, @taxPercent, @amount, @bonus, @userDate, @currentDate