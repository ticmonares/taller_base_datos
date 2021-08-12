ALTER TABLE `taller_bd_sabatino`.`tbl_usuario` 
ADD INDEX `FK_TIPO_USUARIO_idx` (`idTipoUsuario` ASC);

ALTER TABLE `taller_bd_sabatino`.`tbl_usuario` 
ADD CONSTRAINT `FK_TIPO_USUARIO`
FOREIGN KEY (`idTipoUsuario`)
REFERENCES `taller_bd_sabatino`.`tbl_tiposusuario` (`idTipoUsuario`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

SELECT * FROM tbl_usuario;
SELECT * FROM tbl_tiposusuario;
INSERT INTO tbl_tiposusuario
(idTipoUsuario, desTipoUsuario, activo) VALUES
(3, "Usuario", "S" );
/*Generado desde el shcema */
INSERT INTO `taller_bd_sabatino`.`tbl_tiposusuario`
(`idTipoUsuario`,
`desTipoUsuario`,
`activo`)
VALUES
(5,
"Invitado",
"S");
/*Borrar registro normalmente*/
DELETE FROM tbl_tiposusuario WHERE idTIpoUsuario = 4;
/*Consulta lógica*/
SELECT * FROM tbl_tiposusuario WHERE activo = "S" ;
/*Borrado lógico*/
UPDATE tbl_tiposusuario SET activo = "N" WHERE idTipoUsuario = 4 ;



