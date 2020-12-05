DECLARE @multipoly geometry
SET @multipoly = geometry::Parse('MultiPolygon (((0 0, 0 2, 2 3, 3 0, 0 0),
(1 1, 1 2, 2 1, 1 1)))');
SELECT @multipoly