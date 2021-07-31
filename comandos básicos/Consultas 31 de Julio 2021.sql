USE tallerbd;
SELECT * FROM tbl_usuario;
SELECT * FROM tbl_usuario WHERE ciudad IS NOT NULL;
UPDATE tbl_usuario SET ciudad = "NO ESPECIFICA" WHERE id = 28;
SELECT nombre, correo AS correoElectronico, telefono AS celular FROM tbl_usuario;
/*IS NULL -> VALOR VERDADERO SI EL VALOR DEL CAMPO ES NULL, SINO RETORNA UN VALOR FALSO */ 
/*IS NOT NULL  -> VALOR VERDADERO SI EL CAMPO NO ES NULL, SINO RETORORNA UN VALOR FALSO */
SELECT nombre, CONCAT_WS(", ", direccion, ciudad ) AS direccionCompleta FROM tbl_usuario;
SELECT * FROM tbl_usuario LIMIT 1 ;
SELECT * FROM tbl_usuario WHERE status = "inactivo";
UPDATE tbl_usuario SET status = "inactivo" WHERE id = 38;
SELECT * FROM tbl_usuario WHERE fechaREgistro = "2021-07-29";
SELECT * FROM tbl_usuario WHERE fechaRegistroTS = "2021-07-29 11:02:47";
INSERT INTO tbl_usuario (`id`, `nombre`, `edad`, `direccion`, `ciudad`, `telefono`, `correo`, `status`, `fechaRegistro`) 
VALUES ('38', 'Diego Martinez', '23', 'San Isidrio 563', 'Toluca', '7258633658', 'diego@gmail.com', 'activo', '2021-07-31');
SELECT * FROM tbl_usuario WHERE edad BETWEEN 20 AND 29;
SELECT * FROM tbl_usuario WHERE fechaRegistro BETWEEN '2021-07-01' AND '2021-07-15';
SELECT * FROM tbl_usuario WHERE nombre BETWEEN 'Adriana Mercado' AND 'Fernando Trejo';
SELECT * FROM tbl_usuario WHERE edad NOT BETWEEN 20 AND 29;
SELECT * FROM tbl_usuario WHERE fechaRegistro NOT BETWEEN '2021-07-01' AND '2021-07-15';
SELECT * FROM tbl_usuario WHERE nombre NOT BETWEEN 'Adriana Mercado' AND 'Fernando Trejo';
SELECT * FROM tbl_usuario WHERE nombre IN ("Fernando Monares", "Sebastian Sosa", "Carlos Morales");
SELECT * FROM tbl_usuario WHERE nombre = "Fernando Monares" OR nombre = "Sebastian Sosa" OR nombre = "Carlos Morales";
SELECT * FROM tbl_usuario WHERE edad IN (20, 21, 22, 28);
SELECT * FROM tbl_usuario WHERE nombre IN ("Fernando");
SELECT * FROM tbl_usuario WHERE nombre LIKE "%Fer%";
SELECT * FROM tbl_usuario WHERE nombre LIKE "Fernando _rej_";
SELECT * FROM tbl_usuario WHERE nombre LIKE "%ri%";
SELECT * FROM tbl_usuario WHERE nombre LIKE "M____ Sosa";
