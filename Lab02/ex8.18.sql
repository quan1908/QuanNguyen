DECLARE @geomcollection geometry;
SET @geomcollection = geometry::Parse('GEOMETRYCOLLECTION(POINT(4 4),
LINESTRING(3 3, 8 3), POLYGON((0 2, 13 3, 4 5, 0 2)))');
SELECT @geomcollection