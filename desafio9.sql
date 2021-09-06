DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN name VARCHAR(100))
BEGIN
  SELECT
  b.name AS 'artista',
  a.name AS 'album'
  FROM SpotifyClone.album AS a 
  INNER JOIN SpotifyClone.artist AS b
  ON b.artist_id=a.artist_id 
  WHERE b.name = name;
END $$
DELIMITER ;
