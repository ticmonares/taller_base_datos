--  ALIAS
SELECT nombre_columna AS nombre_alias FROM nombre_tabla
SELECT * FROM tbl_usuario
--     -> ;
-- +----+---------------------------+------+-----------------------+-----------+-------------------+----------+
-- | id | nombre                    | edad | direccion             | telefono  | correo            | status   |
-- +----+---------------------------+------+-----------------------+-----------+-------------------+----------+
-- |  1 | Manuel del Angel Ramses   |   22 | San Isidro 123        | 722258369 | manuel@correo.com | activo   |
-- |  2 | Juan Carlos García        |   21 | Lago de la alegía 312 |  27312312 | jaun@correo.com   | inactivo |
-- | 25 | Samuel Arriaga González   |   42 | San Marciano 412      |  12312311 | samuel@correo.com | activo   |
-- | 26 | Francisco Garc?a Carbajal |   44 | Morelos 123           |   2312718 | paco@gmail.com    | activo   |
-- +----+---------------------------+------+-----------------------+-----------+-------------------+----------+
SELECT emal AS nombre_alias FROM nombre_tabla
-- +-------------------+
-- | email             |
-- +-------------------+
-- | manuel@correo.com |
-- | jaun@correo.com   |
-- | samuel@correo.com |
-- | paco@gmail.com    |
-- +-------------------+

-- VALOR NULL

INSERT INTO tbl_usuario (id, nombre, edad) VALUES (3, "Carlos Adrian Morales", 28);

-- Comprobar valor NULL
-- Syntaxis is NULL
SELECT nombre_columna
FROM nombre_tabla
WHERE nombre_columna IS NULL;
-- Syntaxis is NOT NULL
SELECT nombre_columna
FROM nombre_tabla
WHERE nombre_columna IS NOT NULL;

-- CONCAT()
 SELECT  CONCAT(nombre, edad, direccion) FROM tbl_usuario;
-- +-------------------------------------------+
-- | Manuel del Angel Ramses22San Isidro 123   |
-- | Juan Carlos García21Lago de la alegía 312 |
-- | Carlos Adrian Morales28                   |
-- | Samuel Arriaga González42San Marciano 412 |
-- | Francisco Garc?a Carbajal44Morelos 123    |
-- +-------------------------------------------+
-- CONCAT_WS
SELECT CONCAT_WS (" ",nombre, edad, direccion) FROM tbl_usuario;
+---------------------------------------------+
| CONCAT_WS (" ",nombre, edad, direccion)     |
+---------------------------------------------+
| Manuel del Angel Ramses 22 San Isidro 123   |
| Juan Carlos García 21 Lago de la alegía 312 |
| Carlos Adrian Morales 28                    |
| Samuel Arriaga González 42 San Marciano 412 |
| Francisco Garc?a Carbajal 44 Morelos 123    |
+---------------------------------------------+
5 rows in set (0.00 sec)

mysql> SELECT CONCAT_WS (" | ",nombre, edad, direccion) FROM tbl_usuario;
+-------------------------------------------------+
| CONCAT_WS (" | ",nombre, edad, direccion)       |
+-------------------------------------------------+
| Manuel del Angel Ramses | 22 | San Isidro 123   |
| Juan Carlos García | 21 | Lago de la alegía 312 |
| Carlos Adrian Morales | 28 |                    |
| Samuel Arriaga González | 42 | San Marciano 412 |
| Francisco Garc?a Carbajal | 44 | Morelos 123    |
+-------------------------------------------------+
5 rows in set (0.00 sec)

-- LIMIT 
SELECT nombre_columna(s)
FROM nombre_tabla
WHERE condicion
LIMIT number;

SELECT * FROM tbl_usuario;
+----+---------------------------+------+-----------------------+-----------+-------------------+----------+
| id | nombre                    | edad | direccion             | telefono  | correo            | status   |
+----+---------------------------+------+-----------------------+-----------+-------------------+----------+
|  1 | Manuel del Angel Ramses   |   22 | San Isidro 123        | 722258369 | manuel@correo.com | activo   |
|  2 | Juan Carlos García        |   21 | Lago de la alegía 312 |  27312312 | jaun@correo.com   | inactivo |
|  3 | Carlos Adrian Morales     |   28 |                       |         0 |                   |          |
| 25 | Samuel Arriaga González   |   42 | San Marciano 412      |  12312311 | samuel@correo.com | activo   |
| 26 | Francisco Garc?a Carbajal |   44 | Morelos 123           |   2312718 | paco@gmail.com    | activo   |
+----+---------------------------+------+-----------------------+-----------+-------------------+----------+

SELECT * FROM tbl_usuario LIMIT 2;
+----+-------------------------+------+-----------------------+-----------+-------------------+----------+
| id | nombre                  | edad | direccion             | telefono  | correo            | status   |
+----+-------------------------+------+-----------------------+-----------+-------------------+----------+
|  1 | Manuel del Angel Ramses |   22 | San Isidro 123        | 722258369 | manuel@correo.com | activo   |
|  2 | Juan Carlos García      |   21 | Lago de la alegía 312 |  27312312 | jaun@correo.com   | inactivo |
+----+-------------------------+------+-----------------------+-----------+-------------------+----------+

-- WHERE

SELECT * FROM tbl_usuario;
+----+---------------------------+------+-----------------------+-----------+-------------------+----------+
| id | nombre                    | edad | direccion             | telefono  | correo            | status   |
+----+---------------------------+------+-----------------------+-----------+-------------------+----------+
|  1 | Manuel del Angel Ramses   |   22 | San Isidro 123        | 722258369 | manuel@correo.com | activo   |
|  2 | Juan Carlos García        |   21 | Lago de la alegía 312 |  27312312 | jaun@correo.com   | inactivo |
|  3 | Carlos Adrian Morales     |   28 |                       |         0 |                   |          |
| 25 | Samuel Arriaga González   |   42 | San Marciano 412      |  12312311 | samuel@correo.com | activo   |
| 26 | Francisco Garc?a Carbajal |   44 | Morelos 123           |   2312718 | paco@gmail.com    | activo   |
+----+---------------------------+------+-----------------------+-----------+-------------------+----------+


SELECT * FROM tbl_usuario WHERE status = "inactivo";
+----+--------------------+------+-----------------------+----------+-----------------+----------+
| id | nombre             | edad | direccion             | telefono | correo          | status   |
+----+--------------------+------+-----------------------+----------+-----------------+----------+
|  2 | Juan Carlos García |   21 | Lago de la alegía 312 | 27312312 | jaun@correo.com | inactivo |
+----+--------------------+------+-----------------------+----------+-----------------+----------+

-- Date
SELECT * FROM tbl_usuario;
+----+---------------------------+------+------------------------+-----------+-------------------+----------+---------------+
| id | nombre                    | edad | direccion              | telefono  | correo            | status   | fechaRegistro |
+----+---------------------------+------+------------------------+-----------+-------------------+----------+---------------+
|  1 | Manuel del Angel Ramses   |   22 | San Isidro 123         | 722258369 | manuel@correo.com | activo   | 2021-07-21    |
|  2 | Juan Carlos García        |   21 | Lago de la alegría 312 |  27312312 | jaun@correo.com   | inactivo | 2021-07-14    |
|  3 | Carlos Adrian Morales     |   28 |                        |         0 |                   |          | 2021-07-21    |
| 25 | Samuel Arriaga González   |   42 | San Marciano 412       |  12312311 | samuel@correo.com | activo   | 2021-07-01    |
| 26 | Francisco Garc?a Carbajal |   44 | Morelos 123            |   2312718 | paco@gmail.com    | activo   | 2021-06-01    |
+----+---------------------------+------+------------------------+-----------+-------------------+----------+---------------+


SELECT * FROM tbl_usuario WHERE fechaRegistro = "2021-07-21";
+----+-------------------------+------+----------------+-----------+-------------------+--------+---------------+
| id | nombre                  | edad | direccion      | telefono  | correo            | status | fechaRegistro |
+----+-------------------------+------+----------------+-----------+-------------------+--------+---------------+
|  1 | Manuel del Angel Ramses |   22 | San Isidro 123 | 722258369 | manuel@correo.com | activo | 2021-07-21    |
|  3 | Carlos Adrian Morales   |   28 |                |         0 |                   |        | 2021-07-21    |
+----+-------------------------+------+----------------+-----------+-------------------+--------+---------------+

-- TIMESTAMP

UPDATE tbl_usuario SET edad = 34 WHERE id = 26;
Query OK, 1 row affected (0.37 sec)
Rows matched: 1  Changed: 1  Warnings: 0

SELECT * FROM  tbl_usuario;
+----+---------------------------+------+------------------------+-----------+-------------------+----------+---------------+---------------------+
| id | nombre                    | edad | direccion              | telefono  | correo            | status   | fechaRegistro | fechaRegistroTS     |
+----+---------------------------+------+------------------------+-----------+-------------------+----------+---------------+---------------------+
|  1 | Manuel del Angel Ramses   |   22 | San Isidro 123         | 722258369 | manuel@correo.com | activo   | 2021-07-21    | 2021-07-21 14:58:36 |
|  2 | Juan Carlos García        |   21 | Lago de la alegría 312 |  27312312 | jaun@correo.com   | inactivo | 2021-07-14    | 2021-07-21 14:58:36 |
|  3 | Carlos Adrian Morales     |   28 |                        |         0 |                   |          | 2021-07-21    | 2021-07-21 14:58:36 |
| 25 | Samuel Arriaga González   |   42 | San Marciano 412       |  12312311 | samuel@correo.com | activo   | 2021-07-01    | 2021-07-21 14:58:36 |
| 26 | Francisco Garc?a Carbajal |   34 | Morelos 123            |   2312718 | paco@gmail.com    | activo   | 2021-06-01    | 2021-07-21 14:59:17 |
+----+---------------------------+------+------------------------+-----------+-------------------+----------+---------------+---------------------+


--BETWEEN
--Ejemplo con números
 SELECT * FROM tbl_usuario;
+----+------------------+------+---------------------------------+------------+----------------------+--------+---------------+---------------------+
| id | nombre           | edad | direccion                       | telefono   | correo               | status | fechaRegistro | fechaRegistroTS     |
+----+------------------+------+---------------------------------+------------+----------------------+--------+---------------+---------------------+
| 27 | Fernando Monares |   28 | San Bernardino 412 Col. Morelos | 7221472583 | ticmonares@gmail.com | activo | 2021-07-08    | 2021-07-29 09:13:13 |
| 28 | Adriana Mercado  |   20 | San Sebastian 213               | 7222583691 | adriana@correo.com   | activo | 2021-07-13    | 2021-07-29 09:13:19 |
| 29 | Carlos Morales   |   28 | Mtalzincas 312                  | 7229638965 | carlos@correo.com    | activo | 2021-07-25    | 2021-07-29 09:13:23 |
| 30 | Sebastian Sosa   |   31 | Florentina 556                  | 7221458963 | sebas@correo.com     | activo | 2021-07-29    | 2021-07-29 09:13:32 |
+----+------------------+------+---------------------------------+------------+----------------------+--------+---------------+---------------------+
SELECT * FROM tbl_usuario WHERE edad BETWEEN 20 AND 29;
+----+------------------+------+---------------------------------+------------+----------------------+--------+---------------+---------------------+
| id | nombre           | edad | direccion                       | telefono   | correo               | status | fechaRegistro | fechaRegistroTS     |
+----+------------------+------+---------------------------------+------------+----------------------+--------+---------------+---------------------+
| 27 | Fernando Monares |   28 | San Bernardino 412 Col. Morelos | 7221472583 | ticmonares@gmail.com | activo | 2021-07-08    | 2021-07-29 09:13:13 |
| 28 | Adriana Mercado  |   20 | San Sebastian 213               | 7222583691 | adriana@correo.com   | activo | 2021-07-13    | 2021-07-29 09:13:19 |
| 29 | Carlos Morales   |   28 | Mtalzincas 312                  | 7229638965 | carlos@correo.com    | activo | 2021-07-25    | 2021-07-29 09:13:23 |
+----+------------------+------+---------------------------------+------------+----------------------+--------+---------------+---------------------+
--Ejemplo con fechas
SELECT nombre, edad, correo FROM tbl_usuario WHERE fechaRegistro;
+------------------+------+----------------------+
| nombre           | edad | correo               |
+------------------+------+----------------------+
| Fernando Monares |   28 | ticmonares@gmail.com |
| Adriana Mercado  |   20 | adriana@correo.com   |
| Carlos Morales   |   28 | carlos@correo.com    |
| Sebastian Sosa   |   31 | sebas@correo.com     |
+------------------+------+----------------------+
SELECT nombre, edad, correo FROM tbl_usuario WHERE fechaRegistro BETWEEN '2021-07-01' AND '2021-07-15';
+------------------+------+----------------------+
| nombre           | edad | correo               |
+------------------+------+----------------------+
| Fernando Monares |   28 | ticmonares@gmail.com |
| Adriana Mercado  |   20 | adriana@correo.com   |
+------------------+------+----------------------+
--Ejemplo con texto
SELECT nombre, edad, correo FROM tbl_usuario;
+------------------+------+----------------------+
| nombre           | edad | correo               |
+------------------+------+----------------------+
| Fernando Monares |   28 | ticmonares@gmail.com |
| Adriana Mercado  |   20 | adriana@correo.com   |
| Carlos Morales   |   28 | carlos@correo.com    |
| Sebastian Sosa   |   31 | sebas@correo.com     |
+------------------+------+----------------------+
SELECT nombre, edad, correo FROM tbl_usuario WHERE fechaRegistro BETWEEN '2021-07-01' AND '2021-07-15';
+------------------+------+----------------------+
| nombre           | edad | correo               |
+------------------+------+----------------------+
| Fernando Monares |   28 | ticmonares@gmail.com |
| Adriana Mercado  |   20 | adriana@correo.com   |
+------------------+------+----------------------+
--Ejemplo con texto
SELECT nombre, edad, correo FROM tbl_usuario WHERE nombre BETWEEN "Adriana Mercado" AND "Fernando Monares";
+------------------+------+----------------------+
| nombre           | edad | correo               |
+------------------+------+----------------------+
| Fernando Monares |   28 | ticmonares@gmail.com |
| Adriana Mercado  |   20 | adriana@correo.com   |
| Carlos Morales   |   28 | carlos@correo.com    |
+------------------+------+----------------------+
--NOT BETWEEN
SELECT nombre, edad, correo, status FROM tbl_usuario;
+------------------+------+----------------------+--------+
| nombre           | edad | correo               | status |
+------------------+------+----------------------+--------+
| Fernando Monares |   28 | ticmonares@gmail.com | activo |
| Adriana Mercado  |   20 | adriana@correo.com   | activo |
| Carlos Morales   |   28 | carlos@correo.com    | activo |
| Sebastian Sosa   |   31 | sebas@correo.com     | activo |
+------------------+------+----------------------+--------+
SELECT nombre, edad, correo, status FROM tbl_usuario WHERE edad NOT BETWEEN 20 AND 29;
+----------------+------+------------------+--------+
| nombre         | edad | correo           | status |
+----------------+------+------------------+--------+
| Sebastian Sosa |   31 | sebas@correo.com | activo |
+----------------+------+------------------+--------+ 

--Operador IN
SELECT nombre, edad, correo, status FROM tbl_usuario;
+------------------+------+----------------------+--------+
| nombre           | edad | correo               | status |
+------------------+------+----------------------+--------+
| Fernando Monares |   28 | ticmonares@gmail.com | activo |
| Adriana Mercado  |   20 | adriana@correo.com   | activo |
| Carlos Morales   |   28 | carlos@correo.com    | activo |
| Sebastian Sosa   |   31 | sebas@correo.com     | activo |
+------------------+------+----------------------+--------+
SELECT nombre, edad, correo, status FROM tbl_usuario 
WHERE nombre IN ("Fernando Monares", "Carlos Morales", "Sebastian Sosa");
+------------------+------+----------------------+--------+
| nombre           | edad | correo               | status |
+------------------+------+----------------------+--------+
| Fernando Monares |   28 | ticmonares@gmail.com | activo |
| Carlos Morales   |   28 | carlos@correo.com    | activo |
| Sebastian Sosa   |   31 | sebas@correo.com     | activo |
+------------------+------+----------------------+--------+
--LIKE
SELECT nombre, edad, correo, status FROM tbl_usuario;
+------------------+------+---------------------------+--------+
| nombre           | edad | correo                    | status |
+------------------+------+---------------------------+--------+
| Fernando Monares |   28 | ticmonares@gmail.com      | activo |
| Adriana Mercado  |   20 | adriana@correo.com        | activo |
| Carlos Morales   |   28 | carlos@correo.com         | activo |
| Sebastian Sosa   |   31 | sebas@correo.com          | activo |
| Eduardo Vald?z   |   18 | eduardo@gmail.com         | activo |
| Jocelyn Mejia    |   22 | jocelyn@hotmail.com       | activo |
| Rodrigo Gonz?lez |   26 | rodrigo@gmail.com         | activo |
| Maria Sosa       |   33 | maria@hotmail.com         | activo |
| Maria Morales    |   53 | maria@correo.com          | activo |
| Fernando Trejo   |   44 | fertrejo@correo.com       | activo |
| Maria Fernandez  |   53 | mariaFernandez@correo.com | activo |
+------------------+------+---------------------------+--------+
SELECT nombre, edad, correo, status FROM tbl_usuario WHERE nombre LIKE '%fer%';
+------------------+------+---------------------------+--------+
| nombre           | edad | correo                    | status |
+------------------+------+---------------------------+--------+
| Fernando Monares |   28 | ticmonares@gmail.com      | activo |
| Fernando Trejo   |   44 | fertrejo@correo.com       | activo |
| Maria Fernandez  |   53 | mariaFernandez@correo.com | activo |
+------------------+------+---------------------------+--------+
SELECT nombre, edad, correo, status FROM tbl_usuario WHERE nombre LIKE '%ri%';
+------------------+------+---------------------------+--------+
| nombre           | edad | correo                    | status |
+------------------+------+---------------------------+--------+
| Adriana Mercado  |   20 | adriana@correo.com        | activo |
| Rodrigo Gonz?lez |   26 | rodrigo@gmail.com         | activo |
| Maria Sosa       |   33 | maria@hotmail.com         | activo |
| Maria Morales    |   53 | maria@correo.com          | activo |
| Maria Fernandez  |   53 | mariaFernandez@correo.com | activo |
+------------------+------+---------------------------+--------+

SELECT nombre, edad, correo, status FROM tbl_usuario;
+------------------+------+---------------------------+--------+
| nombre           | edad | correo                    | status |
+------------------+------+---------------------------+--------+
| Fernando Monares |   28 | ticmonares@gmail.com      | activo |
| Adriana Mercado  |   20 | adriana@correo.com        | activo |
| Carlos Morales   |   28 | carlos@correo.com         | activo |
| Sebastian Sosa   |   31 | sebas@correo.com          | activo |
| Eduardo Vald?z   |   18 | eduardo@gmail.com         | activo |
| Jocelyn Mejia    |   22 | jocelyn@hotmail.com       | activo |
| Rodrigo Gonz?lez |   26 | rodrigo@gmail.com         | activo |
| Maria Sosa       |   33 | maria@hotmail.com         | activo |
| Maria Morales    |   53 | maria@correo.com          | activo |
| Fernando Trejo   |   44 | fertrejo@correo.com       | activo |
| Maria Fernandez  |   53 | mariaFernandez@correo.com | activo |
+------------------+------+---------------------------+--------+
11 rows in set (0.000 sec)

MariaDB [tallerbd]> SELECT nombre, edad, correo, status FROM tbl_usuario WHERE nombre LIKE '% M______';
+------------------+------+----------------------+--------+
| nombre           | edad | correo               | status |
+------------------+------+----------------------+--------+
| Fernando Monares |   28 | ticmonares@gmail.com | activo |
| Adriana Mercado  |   20 | adriana@correo.com   | activo |
| Carlos Morales   |   28 | carlos@correo.com    | activo |
| Maria Morales    |   53 | maria@correo.com     | activo |
+------------------+------+----------------------+--------+

-- Operadores AND, OR y NOT 
--Operador AND
SELECT nombre, edad, correo, status FROM tbl_usuario;
+------------------+------+---------------------------+----------+
| nombre           | edad | correo                    | status   |
+------------------+------+---------------------------+----------+
| Fernando Monares |   28 | ticmonares@gmail.com      | activo   |
| Adriana Mercado  |   20 | adriana@correo.com        | activo   |
| Carlos Morales   |   28 | carlos@correo.com         | inactivo |
| Sebastian Sosa   |   31 | sebas@correo.com          | activo   |
| Eduardo Vald?z   |   18 | eduardo@gmail.com         | activo   |
| Jocelyn Mejia    |   22 | jocelyn@hotmail.com       | inact    |
| Rodrigo Gonz?lez |   26 | rodrigo@gmail.com         | inact    |
| Maria Sosa       |   33 | maria@hotmail.com         | activo   |
| Maria Morales    |   53 | maria@correo.com          | inact    |
| Fernando Trejo   |   44 | fertrejo@correo.com       | activo   |
| Maria Fernandez  |   53 | mariaFernandez@correo.com | activo   |
+------------------+------+---------------------------+----------+
SELECT nombre, edad, correo, status FROM tbl_usuario WHERE status = "activo" AND edad > 30;
+-----------------+------+---------------------------+--------+
| nombre          | edad | correo                    | status |
+-----------------+------+---------------------------+--------+
| Sebastian Sosa  |   31 | sebas@correo.com          | activo |
| Maria Sosa      |   33 | maria@hotmail.com         | activo |
| Fernando Trejo  |   44 | fertrejo@correo.com       | activo |
| Maria Fernandez |   53 | mariaFernandez@correo.com | activo |
+-----------------+------+---------------------------+--------+
-- Opredador OR
SELECT nombre, edad, correo, status FROM tbl_usuario;
+------------------+------+---------------------------+----------+
| nombre           | edad | correo                    | status   |
+------------------+------+---------------------------+----------+
| Fernando Monares |   28 | ticmonares@gmail.com      | activo   |
| Adriana Mercado  |   20 | adriana@correo.com        | activo   |
| Carlos Morales   |   28 | carlos@correo.com         | inactivo |
| Sebastian Sosa   |   31 | sebas@correo.com          | activo   |
| Eduardo Vald?z   |   18 | eduardo@gmail.com         | activo   |
| Jocelyn Mejia    |   22 | jocelyn@hotmail.com       | inactivo |
| Rodrigo Gonz?lez |   26 | rodrigo@gmail.com         | inactivo |
| Maria Sosa       |   33 | maria@hotmail.com         | activo   |
| Maria Morales    |   53 | maria@correo.com          | inactivo |
| Fernando Trejo   |   44 | fertrejo@correo.com       | activo   |
| Maria Fernandez  |   53 | mariaFernandez@correo.com | activo   |
+------------------+------+---------------------------+----------+
SELECT nombre, edad, correo, status FROM tbl_usuario WHERE status = "activo" OR edad > 22;
+------------------+------+---------------------------+----------+
| nombre           | edad | correo                    | status   |
+------------------+------+---------------------------+----------+
| Fernando Monares |   28 | ticmonares@gmail.com      | activo   |
| Adriana Mercado  |   20 | adriana@correo.com        | activo   |
| Carlos Morales   |   28 | carlos@correo.com         | inactivo |
| Sebastian Sosa   |   31 | sebas@correo.com          | activo   |
| Eduardo Vald?z   |   18 | eduardo@gmail.com         | activo   |
| Rodrigo Gonz?lez |   26 | rodrigo@gmail.com         | inactivo |
| Maria Sosa       |   33 | maria@hotmail.com         | activo   |
| Maria Morales    |   53 | maria@correo.com          | inactivo |
| Fernando Trejo   |   44 | fertrejo@correo.com       | activo   |
| Maria Fernandez  |   53 | mariaFernandez@correo.com | activo   |
+------------------+------+---------------------------+----------+
-- Operador NOT
SELECT nombre, edad, ciudad, status FROM tbl_usuario ;
+------------------+------+---------+----------+
| nombre           | edad | ciudad  | status   |
+------------------+------+---------+----------+
| Fernando Monares |   28 | Toluca  | activo   |
| Adriana Mercado  |   20 | Toluca  | activo   |
| Carlos Morales   |   28 | Metepec | inactivo |
| Sebastian Sosa   |   31 | M├®xico  | activo   |
| Eduardo Vald?z   |   18 | Toluca  | activo   |
| Jocelyn Mejia    |   22 | M├®xico  | inactivo |
| Rodrigo Gonz?lez |   26 | Toluca  | inactivo |
| Maria Sosa       |   33 | M├®xico  | activo   |
| Maria Morales    |   53 | Toluca  | inactivo |
| Fernando Trejo   |   44 | Metepec | activo   |
| Maria Fernandez  |   53 | Toluca  | activo   |
+------------------+------+---------+----------+
SELECT nombre, edad, ciudad, status FROM tbl_usuario WHERE NOT ciudad = "Toluca" ;
+----------------+------+---------+----------+
| nombre         | edad | ciudad  | status   |
+----------------+------+---------+----------+
| Carlos Morales |   28 | Metepec | inactivo |
| Sebastian Sosa |   31 | M├®xico  | activo   |
| Jocelyn Mejia  |   22 | M├®xico  | inactivo |
| Maria Sosa     |   33 | M├®xico  | activo   |
| Fernando Trejo |   44 | Metepec | activo   |
+----------------+------+---------+----------+

-- ORDER BY KEYWORD
SELECT nombre, edad, ciudad, status FROM tbl_usuario ;
+------------------+------+---------+----------+
| nombre           | edad | ciudad  | status   |
+------------------+------+---------+----------+
| Fernando Monares |   28 | Toluca  | activo   |
| Adriana Mercado  |   20 | Toluca  | activo   |
| Carlos Morales   |   28 | Metepec | inactivo |
| Sebastian Sosa   |   31 | M├®xico  | activo   |
| Eduardo Vald?z   |   18 | Toluca  | activo   |
| Jocelyn Mejia    |   22 | M├®xico  | inactivo |
| Rodrigo Gonz?lez |   26 | Toluca  | inactivo |
| Maria Sosa       |   33 | M├®xico  | activo   |
| Maria Morales    |   53 | Toluca  | inactivo |
| Fernando Trejo   |   44 | Metepec | activo   |
| Maria Fernandez  |   53 | Toluca  | activo   |
+------------------+------+---------+----------+
SELECT nombre, edad, ciudad, status FROM tbl_usuario ORDER BY nombre;
+------------------+------+---------+----------+
| nombre           | edad | ciudad  | status   |
+------------------+------+---------+----------+
| Adriana Mercado  |   20 | Toluca  | activo   |
| Carlos Morales   |   28 | Metepec | inactivo |
| Eduardo Vald?z   |   18 | Toluca  | activo   |
| Fernando Monares |   28 | Toluca  | activo   |
| Fernando Trejo   |   44 | Metepec | activo   |
| Jocelyn Mejia    |   22 | M├®xico  | inactivo |
| Maria Fernandez  |   53 | Toluca  | activo   |
| Maria Morales    |   53 | Toluca  | inactivo |
| Maria Sosa       |   33 | M├®xico  | activo   |
| Rodrigo Gonz?lez |   26 | Toluca  | inactivo |
| Sebastian Sosa   |   31 | M├®xico  | activo   |
+------------------+------+---------+----------+
SELECT nombre, edad, ciudad, status FROM tbl_usuario ORDER BY nombre DESC;
+------------------+------+---------+----------+
| nombre           | edad | ciudad  | status   |
+------------------+------+---------+----------+
| Sebastian Sosa   |   31 | M├®xico  | activo   |
| Rodrigo Gonz?lez |   26 | Toluca  | inactivo |
| Maria Sosa       |   33 | M├®xico  | activo   |
| Maria Morales    |   53 | Toluca  | inactivo |
| Maria Fernandez  |   53 | Toluca  | activo   |
| Jocelyn Mejia    |   22 | M├®xico  | inactivo |
| Fernando Trejo   |   44 | Metepec | activo   |
| Fernando Monares |   28 | Toluca  | activo   |
| Eduardo Vald?z   |   18 | Toluca  | activo   |
| Carlos Morales   |   28 | Metepec | inactivo |
| Adriana Mercado  |   20 | Toluca  | activo   |
+------------------+------+---------+----------+