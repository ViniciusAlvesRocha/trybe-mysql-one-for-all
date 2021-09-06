DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (user_id INTEGER)
RETURNS INTEGER READS SQL DATA
BEGIN
DECLARE result INT;
SELECT
COUNT(*)
FROM SpotifyClone.historic AS h
WHERE h.user_id = user_id
INTO result;
RETURN result;
END $$

DELIMITER ;
