DROP DATABASE Stopify;
CREATE DATABASE Stopify;
USE Stopify;
-- Table: usuario
CREATE TABLE usuario (
   id int  NOT NULL AUTO_INCREMENT,
   nombre_usuario varchar(30)  NOT NULL,
   contrasenna varchar(64)  NOT NULL,
   correo varchar(256)  NOT NULL UNIQUE,
   PRIMARY KEY (id)   
);
-- Table: lista_reproduccion
CREATE TABLE lista_reproduccion (
   id int  NOT NULL AUTO_INCREMENT,
   id_usuario int  NOT NULL,
   nombre varchar(20)  NOT NULL,
   descripcion varchar(50)  NOT NULL,
   FOREIGN KEY (id_usuario) REFERENCES usuario(id),
   PRIMARY KEY (id)
);
-- Table: artista
CREATE TABLE artista (
   id int  NOT NULL AUTO_INCREMENT,
   nombre varchar(30)  NOT NULL,
   PRIMARY KEY (id)
);
-- Table: genero
CREATE TABLE genero (
   id int  NOT NULL AUTO_INCREMENT,
   categoria varchar(20)  NOT NULL,
   PRIMARY KEY (id)
);
-- Table: cancion
CREATE TABLE cancion (
	id int  NOT NULL AUTO_INCREMENT,
	titulo varchar(40)  NOT NULL,
	s_dur int  NOT NULL,
	m_dur int  NOT NULL,
	id_genero int  NOT NULL,
	audio varchar(2048),
	FOREIGN KEY (id_genero) REFERENCES genero(id),
	PRIMARY KEY (id)
);
-- Table: artista_cancion
CREATE TABLE artista_cancion (
   id_artista int  NOT NULL,
   id_cancion int  NOT NULL,
	FOREIGN KEY (id_artista) REFERENCES artista(id),
   FOREIGN KEY (id_cancion) REFERENCES cancion(id),
   PRIMARY KEY (id_artista, id_cancion)
);    
-- Table: album
CREATE TABLE album (
   id int  NOT NULL AUTO_INCREMENT,
   titulo varchar(40)  NOT NULL,
   anno_publicacion INT NOT NULL,
   port_img varchar(2048),
   PRIMARY KEY (id)
);
-- Table: album_cancion
CREATE TABLE album_cancion (
   id_cancion int  NOT NULL,
   id_album int  NOT NULL,
   orden INT NOT NULL,
   FOREIGN KEY (id_cancion) REFERENCES cancion(id),
   FOREIGN KEY (id_album) REFERENCES album(id),
   PRIMARY KEY (id_cancion,id_album)
);
-- Table: cancion_favoritos
CREATE TABLE cancion_favoritos (
   id_cancion int  NOT NULL,
   id_usuario int  NOT NULL,
   FOREIGN KEY (id_cancion) REFERENCES cancion(id),
   FOREIGN KEY (id_usuario) REFERENCES usuario(id),
   PRIMARY KEY (id_cancion,id_usuario)
);
-- Table: lista_cancion
CREATE TABLE lista_cancion (
   id_lista int  NOT NULL,
   id_cancion int  NOT NULL,    
   FOREIGN KEY (id_lista) REFERENCES lista_reproduccion(id),
   FOREIGN KEY (id_cancion) REFERENCES cancion(id),
   PRIMARY KEY (id_lista,id_cancion)
);