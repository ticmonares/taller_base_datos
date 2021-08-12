/*Funciones STRING o de CADENA*/
SELECT nombre, edad  FROM tbl_usuario;
SELECT lower(nombre), edad  FROM tbl_usuario;
SELECT upper(nombre), edad FROM tbl_usuario;
SELECT nombre AS nombreOriginal, lower(nombre) AS nombreMinusculas, upper(nombre) AS nombreMayusculas FROM tbl_usuario;
SELECT * FROM tbl_usuario;
SELECT REPLACE('UNA PALABRA', 'PALABRA', 'PALABRA NUEVA') AS resultado;
/*Funciones numéricas*/
SELECT * FROM tbl_usuario;
SELECT edad FROM tbl_usuario;
SELECT MAX(edad) AS edadMayor FROM tbl_usuario;
SELECT MIN(edad) AS edadMenor FROM tbl_usuario;
SELECT ROUND(3.18);
SELECT ROUND(3.98);
SELECT ciudad, SUM(edad) AS sumatoriaEdad FROM tbl_usuario WHERE activo = "S" GROUP BY ciudad ORDER BY ciudad ;
SELECT edad FROM tbl_usuario WHERE activo = "S" AND ciudad = "Metepec";
SELECT edad FROM tbl_usuario WHERE activo = "S" AND ciudad = "México";
SELECT edad FROM tbl_usuario WHERE activo = "S" AND ciudad = "Toluca";
SELECT * FROM tbl_usuario WHERE activo = "S" AND ciudad = "Toluca";
SELECT ciudad, SUM(1) FROM tbl_usuario WHERE activo = "S" AND ciudad = "Metepec";
SELECT ciudad, SUM(1) FROM tbl_usuario WHERE activo = "S" AND ciudad = "México";
SELECT ciudad, SUM(1) FROM tbl_usuario WHERE activo = "S" AND ciudad = "Toluca";
SELECT concat("En la ciudad de ", ciudad, " hay un total de ", SUM(1), " registros activos" ) as resultado FROM tbl_usuario WHERE activo = "S" GROUP BY ciudad ORDER BY ciudad DESC;




