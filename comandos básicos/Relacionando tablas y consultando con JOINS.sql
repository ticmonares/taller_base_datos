SELECT * FROM tallerbd.tbl_alumno;
CREATE TABLE `tallerbd`.`tbl_alumno` (
  `id_alumno` INT NOT NULL AUTO_INCREMENT,
  `matricula` VARCHAR(255) NOT NULL,
  `nombre` VARCHAR(255) NULL,
  `apellido1` VARCHAR(255) NULL,
  `apellido2` VARCHAR(255) NULL,
  `fechaRegistro` DATETIME NULL,
  `fechaActualizacion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  `activo` CHAR(1) NULL DEFAULT 'N',
  PRIMARY KEY (`id_alumno`));

CREATE TABLE `tallerbd`.`tbl_pagos_alumno` (
  `id_pago` INT NOT NULL AUTO_INCREMENT,
  `matricula` VARCHAR(255) NOT NULL,
  `idUsuario` VARCHAR(45) NOT NULL,
  `cantidad` DECIMAL NULL,
  `fechaRegistro` DATETIME NULL,
  `fechaActualizacion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  `activo` CHAR(1) NULL DEFAULT 'N',
  PRIMARY KEY (`id_pago`));
  
  ALTER TABLE `tallerbd`.`tbl_pagos_alumno` 
CHANGE COLUMN `idUsuario` `idUsuario` INT NOT NULL ;

  /*Modificamos al campo matricula como unico*/
ALTER TABLE `tallerbd`.`tbl_alumno` 
ADD UNIQUE INDEX `matricula_UNIQUE` (`matricula` ASC) 
;
/*Creamos la llave foranea de matricula*/
ALTER TABLE `tallerbd`.`tbl_pagos_alumno` 
ADD CONSTRAINT `FK_MATRICULA`
  FOREIGN KEY (matricula)
  REFERENCES `tallerbd`.`tbl_alumno` (matricula)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
/*Creamos la llave foranea de usuario*/
ALTER TABLE `tallerbd`.`tbl_pagos_alumno` 
ADD INDEX `FK_IDUSUARIO_idx` (`idUsuario` ASC);
ALTER TABLE `tallerbd`.`tbl_pagos_alumno` 
ADD CONSTRAINT `FK_IDUSUARIO`
  FOREIGN KEY (`idUsuario`)
  REFERENCES `tallerbd`.`tbl_usuario` (`idUsuario`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

/*INSERTAMOS registros*/
INSERT INTO tbl_alumno
( matricula, nombre, apellido1, apellido2, fechaRegistro, activo)VALUES
("TOL-123", "Julian", "Casablancas", "Stroke", now(), "S");
INSERT INTO tbl_alumno
( matricula, nombre, apellido1, apellido2, fechaRegistro, activo)VALUES
("TOL-321", "Juan Carlos", "Ramírez", "García", now(), "S");
INSERT INTO tbl_alumno
( matricula, nombre, apellido1, apellido2, fechaRegistro, activo)VALUES
("TOL-538", "Daniel", "Mercado", "Moreno", now(), "S");
INSERT INTO tbl_alumno
( matricula, nombre, apellido1, apellido2, fechaRegistro, activo)VALUES
("TOL-946", "Hector", "Rodríguez", "Salgado", now(), "S");
INSERT INTO tbl_alumno
( matricula, nombre, apellido1, apellido2, fechaRegistro, activo)VALUES
("TOL-812", "Jose Antonio", "Carbajal", "De la Peña", now(), "S");

SELECT * FROM tbl_pagos_alumno;
INSERT INTO `tallerbd`.`tbl_pagos_alumno`
(matricula, idUsuario, cantidad, fechaRegistro, activo) VALUES
("TOL-946", 1, 5000, now(),"S");
INSERT INTO `tallerbd`.`tbl_pagos_alumno`
(matricula, idUsuario, cantidad, fechaRegistro, activo) VALUES
("TOL-812", 1, 2500, now(),"S");
INSERT INTO `tallerbd`.`tbl_pagos_alumno`
(matricula, idUsuario, cantidad, fechaRegistro, activo) VALUES
("TOL-123", 1, 2000, now(),"S");

SELECT CONCAT_WS(" ", A.nombre, A.apellido1, A.apellido2) AS nombreCompleto, A.matricula, B.cantidad, C.nombre AS usuarioResponsable
FROM tbl_alumno A
INNER JOIN tbl_pagos_alumno B USING (matricula)
INNER JOIN tbl_usuario C USING (idUsuario);


SELECT CONCAT_WS(" ", A.nombre, A.apellido1, A.apellido2) AS nombreCompleto, A.matricula, SUM(B.cantidad), C.nombre AS usuarioResponsable
FROM tbl_alumno A
INNER JOIN tbl_pagos_alumno B USING (matricula)
INNER JOIN tbl_usuario C USING (idUsuario)
WHERE A.activo = "S" AND B.activo = "S"
GROUP BY matricula
ORDER BY nombreCompleto
;











