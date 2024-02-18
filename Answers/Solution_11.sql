SELECT albums.name AS Album, albums.release_year AS 'Release Year', 
(SELECT MAX(songs.length) FROM songs WHERE songs.album_id = albums.id) AS Duration
FROM albums
JOIN songs ON albums.id = songs.album_id
GROUP BY Album;