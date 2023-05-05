USE Stopify;
INSERT INTO Stopify.artista (nombre) VALUES 
	('Guns N\' Roses'),
	('Foo Fighters'),
	('Daft Punk'),
	('Maroon 5'),
	#('David Guetta'),
	('Bruno Mars');

SELECT * FROM Stopify.artista;
#============================================================================================
INSERT INTO Stopify.genero (categoria) VALUES
	('pop'),
	('rock'),
	('metal'),
	('electronica');
SELECT * FROM Stopify.genero;
#============================================================================================
INSERT INTO Stopify.album (anno_publicacion, port_img, titulo) VALUES
	(1987, './assets/img/album_portrait/ab67616d00001e0221ebf49b3292c3f0f575f0f5.jpeg', 'Appetite For Destruction'),
	(1991, './assets/img/album_portrait/ab67616d00001e0292d21aef6c0d288cc4c05973.jpeg', 'Use Your Illusion II'),
	(1997, './assets/img/album_portrait/ab67616d00001e020389027010b78a5e7dce426b.jpeg', 'The Colour and The Shape'),
	(2011, './assets/img/album_portrait/ab67616d00001e02cdac19bbaee5cc123edcc26f.jpeg', 'Wasting Light'),
	(2001, './assets/img/album_portrait/ab67616d00001e02b33d46dfa2635a47eebf63b2.jpeg', 'Discovery'),
	(2013, './assets/img/album_portrait/ab67616d00001e029b9b36b0e22870b9f542d937.jpeg', 'Random Access Memories'),
	(2014, './assets/img/album_portrait/ab67616d00001e02442b53773d50e1b5369bb16c.jpeg', 'V');
	
SELECT * FROM Stopify.album;
#============================================================================================
#Insertar canciones
#Rock
SET @var_genero  := (SELECT id FROM Stopify.genero WHERE categoria = 'rock');
INSERT INTO Stopify.cancion (id_genero, m_dur, s_dur, audio, titulo) VALUES
#Canciones GunsNRoses
	#Appetite of Destruction
	(@var_genero, 4, 33, 'Appetite For Destruction/01 - Welcome To The Jungle.mp3','Welcome To The Jungle'),
	(@var_genero, 3, 22, 'Appetite For Destruction/02 - It\'s So Easy.mp3', 'It\'s So Easy'),
	(@var_genero, 4, 28, 'Appetite For Destruction/03 - Nightrain.mp3', 'Nightrain'),
	(@var_genero, 4, 23, 'Appetite For Destruction/04 - Out Ta Get Me.mp3', 'Out Ta Get Me'),
	(@var_genero, 3, 48, 'Appetite For Destruction/05 - Mr. Brownstone.mp3', 'Mr. Brownstone'),
	(@var_genero, 6, 45, 'Appetite For Destruction/06 - Paradise City.mp3', 'Paradise City'),
	(@var_genero, 3, 39, 'Appetite For Destruction/07 - My Michelle.mp3', 'My Michelle'),
	(@var_genero, 3, 51, 'Appetite For Destruction/08 - Think About You.mp3', 'Think About You'),
	(@var_genero, 5, 56, 'Appetite For Destruction/09 - Sweet Child O\' Mine.mp3', 'Sweet Child O\' Mine'),
	(@var_genero, 3, 17, 'Appetite For Destruction/10 - You\'re Crazy.mp3', 'You\'re Crazy'),
	(@var_genero, 3, 26, 'Appetite For Destruction/11 - Anything Goes.mp3', 'Anything Goes'),
	(@var_genero, 6, 13, 'Appetite For Destruction/12 - Rocket Queen.mp3', 'Rocket Queen'),
	#Use Your Illusion II
	(@var_genero, 7, 42, 'Use Your Illusion II/01 - Civil War.mp3', 'Civil War'),
	(@var_genero, 4, 21, 'Use Your Illusion II/02 - 14 Years.mp3', '14 Years'),
	(@var_genero, 3, 16, 'Use Your Illusion II/03 - Yesterdays.mp3', 'Yesterdays'),
	(@var_genero, 5, 36, 'Use Your Illusion II/04 - Knockin\' On Heaven\'s Door.mp3', 'Knockin\' on Heaven\'s Door'),
	(@var_genero, 5, 41, 'Use Your Illusion II/05 - Get In The Ring.mp3', 'Get in the Ring'),
	(@var_genero, 3, 23, 'Use Your Illusion II/06 - Shotgun Blues.mp3', 'Shotgun Blues'),
	(@var_genero, 7, 04, 'Use Your Illusion II/07 - Breakdown.mp3', 'Breakdown'),
	(@var_genero, 4, 47, 'Use Your Illusion II/08 - Pretty Tied Up.mp3', 'Pretty Tied Up'),
	(@var_genero, 8, 42, 'Use Your Illusion II/09 - Locomotive.mp3', 'Locomotive'),
	(@var_genero, 4, 06, 'Use Your Illusion II/10 - So Fine.mp3', 'So Fine'),
	(@var_genero, 9, 23, 'Use Your Illusion II/11 - Estranged.mp3', 'Estranged'),
	(@var_genero, 5, 43, 'Use Your Illusion II/12 - You Could Be Mine.mp3', 'You Could Be Mine'),
	(@var_genero, 4, 44, 'Use Your Illusion II/13 - Don\'t Cry (Alt. Lyrics).mp3', 'Don\'t Cry'),
	(@var_genero, 1, 26, 'Use Your Illusion II/14 - My World.mp3', 'My World'),
#Canciones Foo Fighters	
	#The Colour and The Shape
	(@var_genero, 1, 23, 'The Colour And The Shape/01 - Doll.mp3', 'Doll'),
	(@var_genero, 3, 51, 'The Colour And The Shape/02 - Monkey Wrench.mp3', 'Monkey Wrench'),
	(@var_genero, 4, 08, 'The Colour And The Shape/03 - Hey, Johnny Park!.mp3', 'Hey, Johnny Park!'),
	(@var_genero, 3, 33, 'The Colour And The Shape/04 - My Poor Brain.mp3', 'My Poor Brain'),
	(@var_genero, 2, 30, 'The Colour And The Shape/05 - Wind Up.mp3', 'Wind Up'),
	(@var_genero, 2, 15, 'The Colour And The Shape/06 - Up In Arms.mp3', 'Up in Arms'),
	(@var_genero, 4, 20, 'The Colour And The Shape/07 - My Hero.mp3', 'My Hero'),
	(@var_genero, 2, 26, 'The Colour And The Shape/08 - See You.mp3', 'See You'),
	(@var_genero, 2, 36, 'The Colour And The Shape/09 - Enough Space.mp3', 'Enough Space'),
	(@var_genero, 4, 49, 'The Colour And The Shape/10 - February Stars.mp3', 'February Stars'),
	(@var_genero, 4, 10, 'The Colour And The Shape/11 - Everlong.mp3', 'Everlong'),
	(@var_genero, 5, 03, 'The Colour And The Shape/12 - Walking After You.mp3', 'Walking After You'),
	(@var_genero, 5, 40, 'The Colour And The Shape/13 - New Way Home.mp3', 'New Way Home'),
	(@var_genero, 3, 24, 'The Colour And The Shape/19 - The Colour And The Shape (Bonus Track).mp3', 'The Colour And The Shape'),
	#Wasting Light	
	(@var_genero, 4, 46, 'Wasting Light/01 - Bridge Burning.mp3','Bridge Burning'),
	(@var_genero, 4, 19, 'Wasting Light/02 - Rope.mp3', 'Rope'),
	(@var_genero, 4, 26, 'Wasting Light/03 - Dear Rosemary.mp3', 'Dear Rosemary'),
	(@var_genero, 3, 22, 'Wasting Light/04 - White Limo.mp3', 'White Limo'),
	(@var_genero, 4, 27, 'Wasting Light/05 - Arlandria.mp3', 'Arlandria'),
	(@var_genero, 4, 58, 'Wasting Light/06 - These Days.mp3', 'These Days'),
	(@var_genero, 3, 51, 'Wasting Light/07 - Back & Forth.mp3', 'Back & Forth'),
	(@var_genero, 4, 36, 'Wasting Light/08 - A Matter Of Time.mp3', 'A Matter of Time'),
	(@var_genero, 4, 31, 'Wasting Light/09 - Miss The Misery.mp3', 'Miss the Misery'),
	(@var_genero, 4, 15, 'Wasting Light/10 - I Should Have Known.mp3', 'I Should Have Known'),
	(@var_genero, 4, 15, 'Wasting Light/11 - Walk.mp3', 'Walk');

#Canciones electronica
SET @var_genero  := (SELECT id FROM Stopify.genero WHERE categoria = 'electronica');
INSERT INTO Stopify.cancion (id_genero, m_dur, s_dur, audio, titulo) VALUES
#Canciones Daft Punk
	#Discovery
   (@var_genero, 5, 20, 'Discovery/01 - One More Time.mp3', 'One More Time'),
	(@var_genero, 3, 32, 'Discovery/02 - Aerodynamic.mp3', 'Aerodynamic'),
	(@var_genero, 5, 01, 'Discovery/03 - Digital Love.mp3', 'Digital Love'),
	(@var_genero, 3, 44, 'Discovery/04 - Harder, Better, Faster, Stronger.mp3', 'Harder, Better, Faster, Stronger'),
	(@var_genero, 3, 31, 'Discovery/05 - Crescendolls.mp3', 'Crescendolls'),
	(@var_genero, 1, 44, 'Discovery/06 - Nightvision.mp3', 'Nightvision'),
	(@var_genero, 3, 57, 'Discovery/07 - Superheroes.mp3', 'Superheroes'),
	(@var_genero, 3, 21, 'Discovery/08 - High Life.mp3', 'High Life'),
	(@var_genero, 3, 52, 'Discovery/09 - Something About Us.mp3', 'Something About Us'),
	(@var_genero, 3, 47, 'Discovery/10 - Voyager.mp3', 'Voyager'),
	(@var_genero, 5, 45, 'Discovery/11 - Veridis Quo.mp3', 'Veridis Quo'),
	(@var_genero, 3, 26, 'Discovery/12 - Short Circuit.mp3', 'Short Circuit'),
	(@var_genero, 4, 00, 'Discovery/13 - Face To Face.mp3', 'Face to Face'),
	(@var_genero, 10, 0, 'Discovery/14 - Too Long.mp3', 'Too Long');

#Canciones pop
SET @var_genero  := (SELECT id FROM Stopify.genero WHERE categoria = 'pop');
INSERT INTO Stopify.cancion (id_genero, m_dur, s_dur, audio, titulo) VALUES
#Canciones Maroon 5
	#V
   (@var_genero, 3, 09, 'V/01 - Maps.mp3', 'Maps'),
	(@var_genero, 3, 51, 'V/02 - Animals.mp3', 'Animals'),
	(@var_genero, 3, 59, 'V/03 - It Was Always You.mp3', 'It Was Always You'),
	(@var_genero, 3, 58, 'V/04 - Unkiss Me.mp3', 'Unkiss Me'),
	(@var_genero, 3, 55, 'V/05 - Sugar.mp3', 'Sugar'),
	(@var_genero, 3, 23, 'V/06 - Leaving California.mp3', 'Leaving California'),
	(@var_genero, 3, 39, 'V/07 - In Your Pocket.mp3', 'In Your Pocket'),
	(@var_genero, 3, 16, 'V/08 - New Love.mp3', 'New Love'),
	(@var_genero, 3, 46, 'V/09 - Coming Back For You.mp3', 'Coming Back For You'),
	(@var_genero, 3, 14, 'V/10 - Feelings.mp3', 'Feelings'),
	(@var_genero, 3, 56, 'V/11 - My Heart Is Open (Feat. Gwen Stefani).mp3', 'My Heart Is Open');
	#(@var_genero, 3, 44, 'This Summer');
	
SELECT * FROM Stopify.cancion;
#============================================================================================
#Insertar relacion entre artistas con canciones
SET @var_artista := (SELECT id FROM Stopify.artista WHERE nombre = 'Guns N\' Roses');
INSERT INTO Stopify.artista_cancion (id_artista, id_cancion) VALUES
	#Appetite of Destruction
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Welcome To The Jungle')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'It\'s So Easy')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Nightrain')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Out Ta Get Me')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Mr. Brownstone')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Paradise City')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'My Michelle')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Think About You')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Sweet Child O\' Mine')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'You\'re Crazy')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Anything Goes')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Rocket Queen')),
	#Use Your Illusion II
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Civil War')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = '14 Years')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Yesterdays')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Knockin\' on Heaven\'s Door')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Get in the Ring')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Shotgun Blues')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Breakdown')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Pretty Tied Up')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Locomotive')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'So Fine')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Estranged')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'You Could Be Mine')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Don\'t Cry')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'My World'));
#Canciones Foo Fighters	
SET @var_artista := (SELECT id FROM Stopify.artista WHERE nombre = 'Foo Fighters');
INSERT INTO Stopify.artista_cancion (id_artista, id_cancion) VALUES
	#The Colour and The Shape
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Doll')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Monkey Wrench')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Hey, Johnny Park!')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'My Poor Brain')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Wind Up')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Up in Arms')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'My Hero')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'See You')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Enough Space')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'February Stars')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Everlong')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Walking After You')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'New Way Home')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'The Colour And The Shape')),
	#Wasting Light 
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Bridge Burning')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Rope')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Dear Rosemary')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'White Limo')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Arlandria')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'These Days')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Back & Forth')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'A Matter of Time')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Miss the Misery')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'I Should Have Known')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Walk'));

SET @var_artista := (SELECT id FROM Stopify.artista WHERE nombre = 'Daft Punk');
INSERT INTO Stopify.artista_cancion (id_artista, id_cancion) VALUES
	#Discovery
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'One More Time')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Aerodynamic')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Digital Love')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Harder, Better, Faster, Stronger')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Crescendolls')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Nightvision')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Superheroes')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'High Life')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Something About Us')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Voyager')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Veridis Quo')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Short Circuit')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Face to Face')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Too Long'));

SET @var_artista := (SELECT id FROM Stopify.artista WHERE nombre = 'Maroon 5');
INSERT INTO Stopify.artista_cancion (id_artista, id_cancion) VALUES
#Canciones Marron 5
	#V
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Maps')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Animals')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'It Was Always You')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Unkiss Me')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Sugar')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Leaving California')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'In Your Pocket')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'New Love')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Coming Back For You')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'Feelings')),
	(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'My Heart Is Open'));
	#(@var_artista, (SELECT id FROM Stopify.cancion WHERE titulo = 'This Summer'));

SELECT * FROM Stopify.artista_cancion;
#============================================================================================
#INSERT ALBUM_CANCION
SET @var_album = (SELECT id FROM Stopify.album WHERE titulo = 'Appetite For Destruction');
INSERT INTO Stopify.album_cancion (orden, id_album, id_cancion) VALUES
	(1,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Welcome To The Jungle')),
	(2,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'It\'s So Easy')),
	(3,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Nightrain')),
	(4,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Out Ta Get Me')),
	(5,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Mr. Brownstone')),
	(6,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Paradise City')),
	(7,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'My Michelle')),
	(8,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Think About You')),
	(9,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Sweet Child O\' Mine')),
	(10, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'You\'re Crazy')),
	(11, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Anything Goes')),
	(12, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Rocket Queen'));

SET @var_album = (SELECT id FROM Stopify.album WHERE titulo = 'Use Your Illusion II');
INSERT INTO Stopify.album_cancion (orden, id_album, id_cancion) VALUES
	(1,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Civil War')),
	(2,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = '14 Years')),
	(3,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Yesterdays')),
	(4,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Knockin\' on Heaven\'s Door')),
	(5,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Get in the Ring')),
	(6,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Shotgun Blues')),
	(7,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Breakdown')),
	(8,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Pretty Tied Up')),
	(9,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Locomotive')),
	(10, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'So Fine')),
	(11, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Estranged')),
	(12, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'You Could Be Mine')),
	(13, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Don\'t Cry')),
	(14, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'My World'));

SET @var_album = (SELECT id FROM Stopify.album WHERE titulo = 'The Colour and The Shape');
INSERT INTO Stopify.album_cancion (orden, id_album, id_cancion) VALUES
	(1,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Doll')),
	(2,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Monkey Wrench')),
	(3,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Hey, Johnny Park!')),
	(4,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'My Poor Brain')),
	(5,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Wind Up')),
	(6,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Up in Arms')),
	(7,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'My Hero')),
	(8,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'See You')),
	(9,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Enough Space')),
	(10, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'February Stars')),
	(11, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Everlong')),
	(12, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Walking After You')),
	(13, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'New Way Home')),
	(14, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'The Colour And The Shape'));

SET @var_album = (SELECT id FROM Stopify.album WHERE titulo = 'Wasting Light');
INSERT INTO Stopify.album_cancion (orden, id_album, id_cancion) VALUES
	(1,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Bridge Burning')),
	(2,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Rope')),
	(3,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Dear Rosemary')),
	(4,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'White Limo')),
	(5,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Arlandria')),
	(6,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'These Days')),
	(7,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Back & Forth')),
	(8,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'A Matter of Time')),
	(9,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Miss the Misery')),
	(10, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'I Should Have Known')),
	(11, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Walk'));

SET @var_album = (SELECT id FROM Stopify.album WHERE titulo = 'Discovery');
INSERT INTO Stopify.album_cancion (orden, id_album, id_cancion) VALUES
	(1,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'One More Time')),
	(2,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Aerodynamic')),
	(3,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Digital Love')),
	(4,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Harder, Better, Faster, Stronger')),
	(5,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Crescendolls')),
	(6,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Nightvision')),
	(7,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Superheroes')),
	(8,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'High Life')),
	(9,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Something About Us')),
	(10, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Voyager')),
	(11, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Veridis Quo')),
	(12, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Short Circuit')),
	(13, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Face to Face')),
	(14, @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Too Long'));
	
SET @var_album = (SELECT id FROM Stopify.album WHERE titulo = 'V');
INSERT INTO Stopify.album_cancion (orden, id_album, id_cancion) VALUES
#Canciones Marron 5
	#V
	(1,   @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Maps')),
	(2,   @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Animals')),
	(3,   @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'It Was Always You')),
	(4,   @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Unkiss Me')),
	(5,   @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Sugar')),
	(6,   @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Leaving California')),
	(7,   @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'In Your Pocket')),
	(8,   @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'New Love')),
	(9,   @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Coming Back For You')),
	(10,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'Feelings')),
	(11,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'My Heart Is Open'));
	#(12,  @var_album, (SELECT id FROM Stopify.cancion WHERE titulo = 'This Summer'));
	
	