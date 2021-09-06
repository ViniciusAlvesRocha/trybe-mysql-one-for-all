DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.user
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.historic
  WHERE SpotifyClone.historic.user_id=OLD.user_id;
  DELETE FROM SpotifyClone.following_artist
  WHERE SpotifyClone.following_artist.user_id=OLD.user_id;
END$$
DELIMITER ;
