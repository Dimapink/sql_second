INSERT INTO music.genres(name)
VALUES ('K-pop'),
       ('Rock'),
       ('Hip-hop');

INSERT INTO music.artist(name)
VALUES 
	('Seventeen'), 
 	('Ive'), 
 	('Illit'), 
 	('Kiss of life'),
 	('Kojaque'), 
 	('RXKS'), 
 	('Xanman'), 
 	('Pearl Jam'), 
 	('Kings of Leon'), 
 	('Motley Crue');


INSERT INTO music.genre_to_artist(genre_id, artist_id)
VALUES 
 	(1, 1), (1, 2), (1, 3), (1, 4), (2, 5), (2, 6), (2, 7), 
 	(3, 8), (3, 9), (3, 10);

INSERT iNTO music.album (name, published)
VALUES 
	('FML', '24.04.2023'), ('Attacca', '22.10.2021'),
	('SUPER REAL ME', '25.03.2024'), ('Magnetic (Remixes)', '19.04.2024'),
	('DELI DAYDREAMS', '23.02.2018'), 
	('IN SKY', '26.06.2023'), ('Demon Eater', '27.07.2023'), 
	('Xan Servin 2', '02.08.2018'), ('Gucci Down', '09.05.2019'), ('Only by the Night', '19.09.2008');
	
INSERT INTO music.artist_to_album(artist_id, album_id)
VALUES 
 	(1, 1), (1, 2),
 	(3, 3), (3, 4), 
	(5, 5), 
	(6, 6), (6, 7),
	(7,8), (7,9),
	(9, 10);
	

INSERT into music.song(name, duration, album)
VALUES 
	('F*ck My Life', 219, 1), ('Super', 220, 1), ('Fire', 200, 1), ('I Dont Understand But I Luv U', 300, 1), ('Dust', 170, 1), ('April shower', 210, 1), 
	('To you', 230, 2), ('Rock with you', 222, 2), ('Crush', 197, 2), ('PANG!', 310, 2), ('Imperfect love', 176, 2), ('I cant run away', 213, 2), ('2 MINUS 1', 200, 2), 
	('My World', 215, 3), ('Magnetic', 223, 3), ('Midnight Fiction', 221, 3), ('Lucky Girl Syndrome', 197, 3), 
	('Magnetic (R&B Remix)', 215, 4), ('Magnetic (Starlight Remix)', 223, 4), ('Magnetic (City Night Remix)', 221, 4), 
	('White Noise', 312, 5), ('Safest Memory', 115 ,5), 
	('IN SKY', 115, 6), ('Demon Eater', 300, 7), 
	('Itro', 30, 7), ('Set It Off', 97, 7), ('Point', 150, 7), ('Mud', 97, 7), ('Gucci Down', 200, 9), 
	('Closer', 180, 10), ('Crawl', 246, 10), ('Sex on file', 203, 10);


INSERT INTO music.collection(name, published)
VALUES 
	('Best wishes', '12.12.2020'), ('All the best', '01.05.2018'), ('Little Hope', '13.05.2023'), ('Big sur', '12.11.2020');

	
INSERT INTO music.song_to_collection(collection_id, song_id)
VALUES 
	(1, 1), (1, 3), (1, 5), (1, 7), 
	(2, 2), (2, 4), (2, 6), (2, 8),
	(3, 9), (3, 12), (3, 15), (3, 17),
	(4, 10), (4, 12), (4, 14), (4, 16);
