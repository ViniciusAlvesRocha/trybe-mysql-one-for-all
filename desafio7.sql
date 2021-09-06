CREATE VIEW perfil_artistas AS
  SELECT 
  at.name AS 'artista',
  ab.name AS 'album',
  COUNT(f.user_id) AS 'seguidores'
  FROM SpotifyClone.album AS ab
  INNER JOIN SpotifyClone.artist AS at
  ON ab.artist_id=at.artist_id
  INNER JOIN SpotifyClone.following_artist AS f
  ON at.artist_id=f.artist_id
  INNER JOIN SpotifyClone.user AS u
  ON f.user_id=u.user_id
  GROUP BY ab.album_id
  ORDER BY `seguidores` DESC, `artista`, `album`;
