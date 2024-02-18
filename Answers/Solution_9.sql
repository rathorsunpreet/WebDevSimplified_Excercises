DELETE FROM albums
WHERE id = (SELECT id FROM albums WHERE band_id = (SELECT id FROM bands WHERE name = 'Rammstien'));

DELETE FROM bands
WHERE id = (SELECT id FROM bands WHERE name = 'Rammstien');