DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

-- DROP TABLE SpotifyClone.plan;
CREATE TABLE plan (
    plan_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10 , 2 ) NOT NULL
) engine = InnoDB;

-- DROP TABLE SpotifyClone.user;
CREATE TABLE user(
user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
age INT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES plan(plan_id)
) engine = InnoDB;

-- DROP TABLE SpotifyClone.artist;
CREATE TABLE artist (
  artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE album(
album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
artist_id INT NOT NULL ,
FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;

-- DROP TABLE SpotifyClone.song;
CREATE TABLE song(
song_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;


CREATE TABLE historic(
historic_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
song_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user(user_id),
FOREIGN KEY (song_id) REFERENCES song(song_id)
) engine = InnoDB;

CREATE TABLE following_artist(
following_artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user(user_id),
FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;


INSERT INTO SpotifyClone.plan (name, price) VALUES
("gratuito", 0),
("familiar", 7.99),
("universitário", 5.99);

INSERT INTO SpotifyClone.user (name, age, plan_id) VALUES
("Thati", 23, 1),
("Cintia", 35, 2),
("Bill", 20, 3),
("Roger", 45, 1);

INSERT INTO SpotifyClone.artist (name) VALUES
("Walter Phoenix"),
("Peter Strong"),
("Lance Day"),
("Freedie Shannon");

INSERT INTO SpotifyClone.album (name, artist_id) VALUES 
("Envious", 1),
("Exuberant", 1),
("Hallowed Steam", 2),
("Incandescent", 3),
("Temporary Culture", 4);

INSERT INTO SpotifyClone.song (name, album_id) VALUES
("Soul For Us", 1),
("Reflections Of Magic", 1),
("Dance With Her Own", 1),
("Troubles Of My Inner Fire", 2),
("Time Fireworks", 2),
("Magic Circus", 3),
("Honey, So Do I", 3),
("Sweetie, Let's Go Wild", 3),
("She Knows", 3),
("Fantasy For Me", 4),
("Celebration Of More", 4),
("Rock His Everything", 4),
("Home Forever", 4),
("Diamond Power", 4),
("Honey, Let's Be Silly", 4),
("Thang Of Thunder", 5),
("Words Of Her Life", 5),
("Without My Streets", 5);

INSERT INTO historic (song_id, user_id) VALUES
(1, 1),
(6, 1),
(14, 1),
(16, 1),
(13, 2),
(17, 2),
(2, 2),
(15, 2),
(4, 3),
(16, 3),
(6, 3),
(3, 4),
(18, 4),
(11, 4);

INSERT INTO following_artist (user_id, artist_id) VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
