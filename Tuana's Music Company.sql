CREATE DATABASE music_company;
USE music_company;

CREATE TABLE singers (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE albums (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  release_year INT,
  singer_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (singer_id) REFERENCES singers(id)
);

CREATE TABLE songs (
id INT NOT NULL auto_increment,
primary key (id),
name varchar(255) not null,
minute_long FLOAT NOT NULL,
album_id INT NOT NULL,
foreign key (album_id) references albums(id)
);


INSERT INTO singers (name)
VALUES ('Katy Perry'), ('Ariana Grande'), ('Billie Eilish'), ('Drake');

DELETE FROM singers WHERE 'Singer Name' = ('Katy Perry');
UPDATE singers SET id= 1 WHERE id =2;
UPDATE singers SET id= 2 WHERE id =3;
UPDATE singers SET id= 3 WHERE id =4;
UPDATE singers SET id= 4 WHERE id =5;
SELECT * FROM singers;

SELECT id AS 'ID', name AS 'Singer Name' FROM singers;

INSERT INTO albums (name, release_year, singer_id )
VALUES ('Teenage Dream ', 2010, 1); 
INSERT INTO albums (name, release_year, singer_id )
VALUES ('Positions', 2020, 2),
       ('Happier Then Ever',2021, 3),
       ('Dark Lane Demo Tapes', 2020, 4);
SELECT * FROM albums;

SELECT * FROM albums
WHERE release_year IS NOT NULL
ORDER BY release_year
LIMIT 1;

SELECT DISTINCT singers.name AS 'Singer Name'
FROM singers
JOIN albums ON singers.id = albums.singer_id;

INSERT INTO songs (name, minute_long, album_id )
VALUES ('Teenage Dream', 46.44, 1),
       ('Positions', 41.07, 2),
       ('Happier Then Ever', 65.00, 3),
       ('Dark Lane Demo Tapes', 49.55, 4);
       SELECT * FROM songs;
       
SELECT MAX(minute_long) AS LongestAlbum,
albums.name AS Name,
albums.release_year AS 'Release Year'
FROM albums
JOIN songs on albums.id = songs.album_id
GROUP BY songs.album_id
ORDER BY MAX(minute_long) DESC
LIMIT 1;


INSERT INTO singers (name)
VALUE ('Olivia Rodrigo');
SELECT * FROM singers;

INSERT INTO albums (name, release_year, singer_id )
VALUES ('SOUR', 2021, 5);
SELECT * FROM albums;

DELETE FROM singers WHERE id = 5 ;
DELETE FROM singers WHERE id = 6;
SELECT * FROM singers;

SELECT AVG(minute_long) as 'Average Song Duration'
FROM songs;

       






