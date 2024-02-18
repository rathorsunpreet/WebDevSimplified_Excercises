SELECT bands.name AS 'Band', COUNT(songs.id) AS 'Number of Songs'
FROM songs
JOIN albums ON songs.album_id = albums.id
JOIN bands ON albums.band_id = bands.id
GROUP BY albums.band_id;