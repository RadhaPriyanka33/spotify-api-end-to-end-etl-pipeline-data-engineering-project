-- Albums and number of tracks in each album

SELECT name, SUM(total_tracks_in_album) as total_tracks 
FROM "spotify_db"."album_data" 
GROUP BY name
ORDER BY sum(total_tracks_in_album) DESC;


--Average Track Count per Album

SELECT AVG(total_tracks) AS avg_track_count
FROM "spotify_db"."album_data";


--Longest and Shortest Songs

SELECT MAX(duration_ms) AS longest_song_duration
FROM  "spotify_db"."songs_data";


SELECT MIN(duration_ms) AS shortest_song_duration
FROM  "spotify_db"."songs_data";


--Number of Albums Released by Artists

SELECT artist_name, COUNT(album.album_id) AS num_albums
FROM "spotify_db"."artist_data"  artist
INNER JOIN "spotify_db"."songs_data" song
ON artist.artist_id = song.artist_id
INNER JOIN "spotify_db"."album_data" album
ON album.album_id = song.album_id
GROUP BY artist_name;


--Top Artists by Number of Songs

SELECT artist_name, COUNT(song_id) AS num_songs
FROM "spotify_db"."artist_data"  artist
INNER JOIN "spotify_db"."songs_data" song
ON artist.artist_id = song.artist_id
GROUP BY artist_name
ORDER BY num_songs DESC
LIMIT 10;


--Album with the Most Tracks

SELECT album_id, name, total_tracks_in_album
FROM "spotify_db"."album_data"
WHERE total_tracks_in_album = (SELECT MAX(total_tracks_in_album) FROM "spotify_db"."album_data")
LIMIT 1;


--Albums Released within a Specific Time Range

SELECT * FROM "spotify_db"."album_data" 
WHERE release_date BETWEEN '2023-01-01' AND '2023-05-01';


