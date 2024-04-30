--ЗАДАНИЕ 2

-- Самая длинная песня
SELECT song.name as "Название", song.duration as "Продолжительность в сек."
FROM music.song
ORDER BY song.duration DESC
LIMIT 1;

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT song.name as "Название", song.duration as "Продолжительность в сек."
FROM music.song
WHERE song.duration >= 210
ORDER BY song.duration DESC;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT collection.name, collection.published
from music.collection
WHERE collection.published BETWEEN '2018-01-01' and '2021-01-01'
ORDER BY collection.published;

--Исполнители, чьё имя состоит из одного слова.
SELECT artist.name
from music.artist
WHERE artist.name not like '% %'
ORDER BY artist.name;

--Название треков, которые содержат слово «мой» или «my».
SELECT song.name
from music.song
WHERE song.name like '% my %' or song.name like '%My%' or song.name like '% мой %' or song.name like '%Мой%'
ORDER BY song.name;


--ЗАДАНИЕ 3
--Количество исполнителей в каждом жанре.
SELECT genres.name AS "Жанр", count(genre_to_artist.artist_id) AS "Количество артистов"
FROM music.genres
INNER JOIN music.genre_to_artist on genres.id = genre_to_artist.genre_id
GROUP BY genres.name;



--Количество треков, вошедших в альбомы 2019–2020 годов
SELECT count(song.id) AS "Количество треков"
FROM music.song
INNER JOIN music.album ON song.album = album.id
WHERE album.published BETWEEN '2018-12-31' AND '01.01.2021';


--Средняя продолжительность треков по каждому альбому.
SELECT album.name AS "Альфом", ROUND(AVG(song.duration), 2) AS "AVG Duration"
FROM music.album
INNER JOIN music.song on album.id = song.album
GROUP BY album.id;


--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT distinct(artist.name) as "Артист"
FROM music.artist
INNER JOIN music.artist_to_album on artist.id = artist_to_album.artist_id
INNER JOIN music.album on artist_to_album.album_id = album_id
WHERE album.published not between '01-01-2020' and '01-01-2021';

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT distinct(collection.name)
FROM music.collection
INNER JOIN music.song_to_collection on song_to_collection.collection_id = collection.id 
INNER JOIN music.song on song_to_collection.song_id = song.id
INNER JOIN music.album on song.album = album.id
INNER JOIN music.artist_to_album on artist_to_album.album_id = album.id
INNER JOIN music.artist on artist_to_album.artist_id = artist.id
WHERE artist.name = 'Illit'