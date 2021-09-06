CREATE VIEW top_2_hits_do_momento AS
  SELECT
  s.name AS 'cancao',
  COUNT(h.song_id) AS 'reproducoes'
  FROM SpotifyClone.historic AS h
  INNER JOIN SpotifyClone.user AS u
  ON h.user_id = u.user_id
  INNER JOIN SpotifyClone.song AS s
  ON h.song_id=s.song_id
  GROUP BY h.song_id
  ORDER BY `reproducoes` DESC, `cancao`
  LIMIT 2;
