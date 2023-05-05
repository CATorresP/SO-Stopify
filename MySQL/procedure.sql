#DROP PROCEDURE albumArtistas;
DELIMITER 
&&
CREATE PROCEDURE albumArtistas(id_album int)
BEGIN 
	SELECT group_concat(alar.artista) AS artistas
	FROM (
		SELECT al.id AS id, ar.nombre AS artista, COUNT(ar.nombre) AS cantidad
		FROM album AS al
		JOIN album_cancion AS alc
		ON al.id = alc.id_album
		JOIN cancion AS c
		ON alc.id_cancion = c.id
		JOIN artista_cancion AS arc
		ON c.id = arc.id_cancion
		JOIN artista AS ar
		ON arc.id_artista = ar.id
		WHERE al.id = id_album
		GROUP BY ar.nombre
		ORDER BY cantidad DESC)	AS alar
	GROUP BY alar.id;
END 
&&
DELIMITER ;
CALL albumArtistas(2);

#DROP PROCEDURE cancionArtistas;
DELIMITER 
&&
CREATE PROCEDURE cancionArtistas(id_cancion int)
BEGIN 
	SELECT GROUP_CONCAT(ar.nombre) AS artistas
	FROM cancion AS c
	JOIN artista_cancion AS arc
	ON arc.id_cancion = c.id
	JOIN artista AS ar
	ON arc.id_artista = ar.id
	WHERE c.id = id_cancion
	GROUP BY c.id;
END 
&&
DELIMITER ;
CALL cancionArtistas(2);

#DROP PROCEDURE albumGenero;
DELIMITER &&
CREATE PROCEDURE albumGenero(id_album int)
BEGIN 
	SELECT cg.titulo AS titulo, group_concat(cg.genero)
	FROM (
		SELECT al.titulo AS titulo, g.categoria AS genero, COUNT(g.categoria) AS cantidad
		FROM album AS al
		JOIN album_cancion AS alc
		ON al.id = alc.id_album
		JOIN cancion AS c
		ON alc.id_cancion = c.id
		JOIN genero AS g
		ON c.id_genero = g.id
		WHERE al.id = id_album
		GROUP BY g.categoria
		ORDER BY cantidad DESC)	AS cg
	GROUP BY cg.titulo;
END 
&&
DELIMITER ;
CALL albumGenero(1);

#DROP PROCEDURE albumCntTbl;
DELIMITER //
CREATE PROCEDURE albumCntTbl(id_album int)
BEGIN 
	SELECT alc.orden AS orden, c.id AS id, c.titulo AS titulo, c.m_dur AS min, c.s_dur AS seg, group_concat(ar.nombre) AS artista, g.categoria AS genero, c.audio AS audio_path
	FROM album AS al
	JOIN album_cancion AS alc
	ON al.id = alc.id_album
	JOIN cancion AS c
	ON alc.id_cancion = c.id
	JOIN artista_cancion AS arc
	ON c.id = arc.id_cancion
	JOIN artista AS ar
	ON arc.id_artista = ar.id
	JOIN genero AS g
	ON c.id_genero = g.id
	WHERE al.id = id_album
	GROUP BY c.id
	ORDER BY alc.orden ASC;
END //
DELIMITER ;
CALL albumCntTbl('2');

#DROP PROCEDURE searchCancion;
DELIMITER //
CREATE PROCEDURE searchCancion(titulo VARCHAR(40))
BEGIN 
	SELECT al.id AS id_album, sc.id AS id_cancion, sc.titulo AS titulo, al.port_img AS port_path
	FROM (
		SELECT c.id AS id, c.titulo AS titulo
		FROM cancion AS c
		WHERE c.titulo LIKE CONCAT('%', titulo, '%')
		) AS sc
	JOIN album_cancion AS alc
	ON sc.id = alc.id_cancion
	JOIN album AS al
	ON al.id = alc.id_album;
END //
DELIMITER ;
CALL searchCancion('fas');

#DROP PROCEDURE searchAlbum;
DELIMITER //
CREATE PROCEDURE searchAlbum(titulo VARCHAR(40))
BEGIN 
	SELECT al.id AS id_album, al.titulo AS titulo, al.port_img AS port_path
	FROM album AS al
	WHERE al.titulo LIKE CONCAT('%', titulo, '%');
END //
DELIMITER ;
CALL searchAlbum('i');


#DROP PROCEDURE searchUsuario;
DELIMITER //
CREATE PROCEDURE searchUsuario(titulo VARCHAR(40))
BEGIN 
	SELECT al.id AS id_album, al.titulo AS titulo, al.port_img AS port_path
	FROM album AS al
	WHERE al.titulo LIKE CONCAT('%', titulo, '%');
END //
DELIMITER ;
CALL searchUsuario('i');