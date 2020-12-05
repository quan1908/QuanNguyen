DECLARE @mpoint geometry;
SET @mpoint = geometry::Parse('MULTIPOINT((6 8), (5 7))');
SELECT @mpoint