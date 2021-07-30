-- CREAMOS UNA NUEVA BASE DE DATOS
-- CREATE SCHEMA taller_bd_sabatino  DEFAULT CHARACTER SET utf8mb4;
CREATE DATABASE taller_bd_sabatino DEFAULT CHARACTER SET utf8mb4;
-- Seleccionamos la nueva base de datos que acabamos de crear
USE taller_bd_sabatino;
-- Creamos una nueva tabla
CREATE TABLE taller_bd_sabatino.tbl_usuario (
  id_usuario INT(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NULL,
  edad INT(3) NULL,
  direccion VARCHAR(45) NULL,
  ciudad VARCHAR(45) NULL,
  telefono BIGINT(10) NULL,
  correo VARCHAR(45) NULL,
  status VARCHAR(45) NULL DEFAULT '\"inactivo\"',
  fechaRegistro DATE NULL,
  fechaActualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
  PRIMARY KEY (id_usuario))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;
-- Insertamos algunos registros
INSERT INTO taller_bd_sabatino.tbl_usuario (nombre, edad, direccion, ciudad, telefono, correo, status, fechaRegistro)
VALUES ('Fernando Monares', '28', 'San Sebastian 114', 'Toluca', '7412589632', 'fernando@gmail.com', 'activo', CURDATE());
INSERT INTO taller_bd_sabatino.tbl_usuario (nombre, edad, direccion, ciudad, telefono, correo, status, fechaRegistro)
VALUES ('Alejandro Gaitan', '25', 'San Mateo 41', 'México', '7225896348', 'alejandro@gmail.com', 'activo', CURDATE());
INSERT INTO taller_bd_sabatino.tbl_usuario (nombre, edad, direccion, ciudad, telefono, correo, status, fechaRegistro)
VALUES ('Carlos Morales', '23', 'Laguna de la felicidad 114', 'Toluca', '7221234567', 'carlos@gmail.com', 'activo', CURDATE());
INSERT INTO taller_bd_sabatino.tbl_usuario (nombre, edad, direccion, ciudad, telefono, correo, status, fechaRegistro)
VALUES ('Jocelyn Mejia', '18', 'Barrio de la paz S/N', 'México', '722582958', 'jocelyn@gmail.com', 'activo', CURDATE());
INSERT INTO taller_bd_sabatino.tbl_usuario (nombre, edad, direccion, ciudad, telefono, correo, status, fechaRegistro)
VALUES ('Fernando Trejo', '33', 'Matlazincas 16', 'Metepec', '722048992', 'fernando@correo.com', 'activo', CURDATE());
INSERT INTO taller_bd_sabatino.tbl_usuario (nombre, edad, direccion, ciudad, telefono, correo, status, fechaRegistro)
VALUES ('Sebastian Sosa', '45', 'Domicilio Desconocido', 'Toluca', '7225654489', 'sebastian@gmail.com', 'activo', CURDATE());
INSERT INTO taller_bd_sabatino.tbl_usuario (nombre, edad, direccion, ciudad, telefono, correo, status, fechaRegistro)
VALUES ('Maria Gutierrez', '53', 'San Carlos 16', 'Toluca', '7223692248', 'maria@gmail.com', 'activo', CURDATE());
INSERT INTO taller_bd_sabatino.tbl_usuario (nombre, edad, direccion, ciudad, telefono, correo, status, fechaRegistro)
VALUES ('Carlos Molinos', '19', 'Domicilio Desconocido', 'Toluca', '7225514789', 'carlos@correo.com', 'activo', CURDATE());
INSERT INTO taller_bd_sabatino.tbl_usuario (nombre, edad, direccion, ciudad, telefono, correo, status, fechaRegistro)
VALUES ('Maria Sosa', '20', 'Roma 501', 'México', '722256394', 'maria@correo.com', 'activo', CURDATE());
INSERT INTO taller_bd_sabatino.tbl_usuario (nombre, edad, direccion, ciudad, telefono, correo, status, fechaRegistro)
VALUES ('Eduardo Valdez', '44', 'Domicilio Desconocido', 'Metepec', '7222233669', 'eduardo@gmail.com', 'activo', CURDATE());
-- Avtualizamos algunos datos 
UPDATE tbl_usuario SET nombre = "Eduardo valdéz" WHERE id_usuario = 10;
UPDATE tbl_usuario SET nombre = "Alejandro Gaitán" WHERE id_usuario = 2;