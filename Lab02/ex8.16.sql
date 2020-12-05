DECLARE @poly geometry
SET @poly = geometry::Parse('POLYGON((0 2, 10 3, 3 4, 0 2))');
SELECT @poly