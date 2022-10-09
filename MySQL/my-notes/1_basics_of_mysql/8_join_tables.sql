SHOW DATABASES;
USE  album;
SHOW tables;
SELECT * FROM album;
SELECT * FROM track;
SELECT a.artist AS Artist, a.title AS Album, t.track_number AS "Track Number",
       t.title AS Track, t.duration AS Seconds
       FROM album AS a JOIN track AS t ON a.id=t.album_id ORDER BY a.artist, a.title, t.track_number;
