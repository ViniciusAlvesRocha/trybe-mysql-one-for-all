CREATE VIEW estatisticas_musicais AS
  SELECT 
  COUNT(DISTINCT s.song_id) AS 'cancoes',
  COUNT(DISTINCT at.artist_id) AS 'artistas',
  COUNT(DISTINCT ab.album_id) AS 'albuns'
  FROM SpotifyClone.album AS ab
  INNER JOIN SpotifyClone.artist AS at
  ON ab.artist_id = at.artist_id
  INNER JOIN SpotifyClone.song AS s
  ON s.album_id = ab.album_id;

-- DROP VIEW estatisticas_musicais;
-- SELECT * FROM estatisticas_musicais;
/* SELECT
COUNT(DISTINCT s.song_id) AS 'cancoes',
COUNT(DISTINCT at.artist_id) AS 'artistas',
COUNT(DISTINCT ab.album_id) AS 'albuns'
FROM SpotifyClone.album AS ab
INNER JOIN SpotifyClone.artist AS at
ON ab.artist_id = at.artist_id
INNER JOIN SpotifyClone.song AS s
ON s.album_id = ab.album_id; */
