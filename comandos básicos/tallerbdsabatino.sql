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



Fernando Monares de 28 años de edad con domicilio en San Sebastian 114, Toluca, cel: 7412589632, correo: fernando@gmail.com, y status activo
Alejandro Gaitan de 25 años de edad con domicilio en San Mateo 41, México, cel: 7225896348, correo: alejandro@gmail.com y status activo
Carlos Morales de 23 años de edad con domicilio en Laguna de la felicidad 114, Toluca, cel: 7221234567, correo: carlos@gmail.com y status activo
Jocelyn Mejia de 18 años de edad con domicilio en Barrio de la paz S/N, México, cel: 722582958 , correo:jocelyn@gmail.com y status activo
Fernando Trejo de 33 años de edad con domicilio en Matlazincas 16, Metepec, cel: 722048992 , correo:fernando@correo.com y status activo
Sebastian Sosa de 45 años de edad con domicilio en Domicilio Desconocido, Toluca, cel: 7225654489, correo: sebastian@gmail.com y status activo
Maria Gutierrez de 53 años de edad con domicilio en San Carlos 16, Toluca, cel: 7223692248, correo: maria@gmail.com y status activo
Carlos Molinos de 19 años de edad con domicilio en Domicilio Desconocido, Toluca, cel: 7225514789, correo: carlos@correo.com y status activo
Maria Sosa de 20 años de edad con domicilio en Roma 501, México, cel: 722256394 , correo:maria@correo.com y status activo
Eduardo Valdez de 44 años de edad con domicilio en Domicilio Desconocido, Metepec, cel: 7222233669, correo: eduardo@gmail.com y status activo
-- Avtualizamos algunos datos 
UPDATE tbl_usuario SET nombre = "Eduardo valdéz" WHERE id_usuario = 10;
UPDATE tbl_usuario SET nombre = "Alejandro Gaitán" WHERE id_usuario = 2;

ALTER TABLE `taller_bd_sabatino`.`tbl_usuario` 
ADD INDEX `FK_ID_TIPO_USUARIO_idx` (`idTipoUsuario` ASC);

ALTER TABLE `taller_bd_sabatino`.`tbl_usuario` 
ADD CONSTRAINT `FK_ID_TIPO_USUARIO`
FOREIGN KEY (`idTipoUsuario`)
REFERENCES `taller_bd_sabatino`.`tbl_tiposusuario` (`idTipoUsuario`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
