CREATE VIEW top_3_artistas AS
  SELECT 
  a.name AS 'artista',
  COUNT(u.user_id) AS 'seguidores'
  FROM SpotifyClone.following_artist AS f
  INNER JOIN SpotifyClone.user AS u
  ON f.user_id=u.user_id
  INNER JOIN SpotifyClone.artist AS a
  ON f.artist_id=a.artist_id
  GROUP BY a.artist_id
  ORDER BY `seguidores` DESC, `artista`
  LIMIT 3;
