/* 1. */
SELECT * FROM songs;

/* 2. */
SELECT bands.name AS 'Bands Name'
FROM bands;

/* 3. */
SELECT * FROM albums
WHERE release_year IS NOT NULL
ORDER BY release_year
LIMIT 1;

/* 4. */
SELECT DISTINCT b.name AS 'Band Name'
FROM bands AS b 
JOIN albums AS a ON b.id = a.band_id;

/* 5. */
SELECT b.name AS 'Band Name'
FROM bands AS b 
LEFT JOIN albums AS a ON b.id = a.band_id
GROUP BY b.id
HAVING COUNT(a.id) = 0;

/* 6.*/
SELECT a.name AS 'Name',
a.release_year AS 'Release Year', 
SUM(s.length) AS 'Duration'
FROM albums AS a 
LEFT JOIN songs AS s ON a.id = s.album_id
GROUP BY a.id
ORDER BY SUM(s.length) DESC
LIMIT 1;

/* 7. */
SELECT * FROM albums;

UPDATE albums 
SET release_year = 1986
WHERE id = 4;

/* 8. */
SELECT * FROM bands;
SELECT * FROM albums;

SELECT id FROM bands
ORDER BY id DESC
LIMIT 1;

INSERT INTO bands (name) VALUES ('Olivia Rodrigo');
INSERT INTO albums (name, release_year, band_id) 
VALUES ('Sour', 2023, 8);


/* 9. */
DELETE FROM bands WHERE bands.id = 8;
DELETE FROM albums WHERE albums.band_id = 8;

SELECT * FROM albums;

/* 10. */
SELECT AVG(songs.length) AS 'Average Song Duration'
FROM songs;

/* 11. */
SELECT a.name AS Album, 
a.release_year AS 'Release Year',
MAX(s.length) AS Duration
FROM albums AS a
JOIN songs AS s ON a.id = s.album_id
GROUP BY a.id;

/* 12. */
SELECT b.name AS Bands, 
COUNT(s.id) AS 'Number of Songs'
FROM bands AS b
JOIN albums AS a ON b.id = a.band_id
JOIN songs AS s ON a.id = s.album_id
GROUP BY b.id;
