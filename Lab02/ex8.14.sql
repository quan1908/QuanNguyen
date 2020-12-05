DECLARE @line geometry;
SET @line = geometry::Parse('LINESTRING(1 1, 4 5, 10 13, 19 25)');
SELECT @line