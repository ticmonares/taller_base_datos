SELECT now();
SELECT DAY(now());
SELECT DAY('2021-08-14 08:14:46');
SELECT * FROM tbl_usuario;
SELECT fechaRegistro, DAY(fechaRegistro) AS dia FROM tbl_usuario;
SELECT * FROM tbl_usuario WHERE DAY(fechaRegistro) = 15;
SELECT DATEDIFF("2021-08-14", "2021-08-1");
SELECT DATEDIFF("2021-07-31", "2021-07-07");
SELECT DATEDIFF((SELECT fechaRegistro FROM tbl_usuario ORDER BY fechaRegistro DESC LIMIT 1), 
(SELECT fechaRegistro FROM tbl_usuario ORDER BY fechaRegistro LIMIT 1));
SELECT fechaRegistro FROM tbl_usuario ORDER BY fechaRegistro DESC LIMIT 1;
SELECT fechaRegistro FROM tbl_usuario ORDER BY fechaRegistro LIMIT 1;
SELECT DATEDIFF("2021-07-31", "2021-07-07");
SELECT MIN(fechaRegistro) AS fechaInicial, MAX(fechaRegistro) AS fechaFinal FROM tbl_usuario;
SELECT DATEDIFF(MAX(fechaRegistro), MIN( fechaRegistro) ) FROM tbl_usuario;
SELECT MIN(fechaRegistro), MAX(fechaRegistro), DATEDIFF(MAX(fechaRegistro), MIN( fechaRegistro) ) FROM tbl_usuario;
SELECT YEAR('2021-08-14 08:14:46');
SELECT CAST("2021-08-14" AS DATE);
SELECT session_user();

USE taller_bd_sabatino; 
SELECT * FROM taller_bd_sabatino.tbl_usuario;
SELECT COUNT(id_usuario) FROM tbl_usuario;
SELECT COUNT(id_usuario) FROM tbl_usuario WHERE activo = "S" AND ciudad = "Toluca";
SELECT SUM(edad) FROM tbl_usuario;
SELECT SUM(id_usuario) FROM tbl_usuario;
SELECT AVG(edad) FROM tbl_usuario;
SELECT DISTINCT edad FROM tbl_usuario;
SELECT DISTINCT ciudad FROM tbl_usuario;
SELECT DISTINCT idTipoUsuario FROM tbl_usuario;

SELECT * FROM tbl_usuario;
SELECT nombre, desTipoUsuario FROM tbl_usuario;
SELECT * FROM tbl_usuario INNER JOIN tbl_tiposusuario USING (idTipoUsuario);
SELECT nombre, desTipoUsuario FROM tbl_usuario INNER JOIN tbl_tiposusuario USING (idTipoUsuario);
SELECT nombre, desTipoUsuario FROM tbl_usuario INNER JOIN tbl_tiposusuario ON tbl_usuario.idTipoUsuario = tbl_tiposusuario.idTipoUsuario;
SELECT nombre, desTipoUsuario FROM tbl_usuario LEFT JOIN tbl_tiposusuario USING (idTipoUsuario);
SELECT nombre, desTipoUsuario FROM tbl_usuario INNER JOIN tbl_tiposusuario ON tbl_usuario.id_usuario = tbl_tiposusuario.idTipoUsuario;
SELECT nombre, desTipoUsuario FROM tbl_usuario LEFT JOIN tbl_tiposusuario ON tbl_usuario.id_usuario = tbl_tiposusuario.idTipoUsuario;
SELECT nombre, desTipoUsuario FROM tbl_usuario RIGHT JOIN tbl_tiposusuario ON tbl_usuario.id_usuario = tbl_tiposusuario.idTipoUsuario;
SELECT nombre, desTipoUsuario FROM tbl_usuario INNER JOIN tbl_tiposusuario ON tbl_usuario.idTipoUsuario = tbl_tiposusuario.idTipoUsuario;












