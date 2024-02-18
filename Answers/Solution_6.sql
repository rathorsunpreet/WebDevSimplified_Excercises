SELECT albums.name AS 'Name', albums.release_year AS 'Release Year', SUM(songs.length) AS Duration
FROM albums
JOIN songs ON songs.album_id = albums.id
GROUP BY albums.name
ORDER BY Duration DESC
LIMIT 1;