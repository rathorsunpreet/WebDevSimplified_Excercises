UPDATE albums
SET release_year = 1986
WHERE release_year IS NULL AND id = (SELECT id FROM albums WHERE release_year IS NULL);