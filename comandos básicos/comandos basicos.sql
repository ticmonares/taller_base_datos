-- D:\Archivos de programa\MySQL\MySQL Workbench 8.0 CE>mysql -uroot -p
-- Enter password:
-- Welcome to the MySQL monitor.  Commands end with ; or \g.
-- Your MySQL connection id is 8
-- Server version: 5.5.5-10.4.14-MariaDB mariadb.org binary distribution

-- Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

-- Oracle is a registered trademark of Oracle Corporation and/or its
-- affiliates. Other names may be trademarks of their respective
-- owners.

-- Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
-- Mostrar las bases de datos
SHOW databases;
-- +--------------------+
-- | Database           |
-- +--------------------+
-- | e_inventory        |
-- | information_schema |
-- | mysql              |
-- | performance_schema |
-- | phpmyadmin         |
-- | sci                |
-- | tallerbd           |
-- | test               |
-- | web                |
-- +--------------------+
-- 9 rows in set (0.18 sec)
-- Crear una base de datos
CREATE DATABASE nombre_base_datos;
-- Seleccionar la base de datos a utilizar
USE nombre_base_datos;
-- Database changed

-- Crear una tabla
CREATE TABLE nombre_tabla (nombre_columna_1 varchar (120), nombre_columna_2 int (11) );
-- Consultar datos de una TABLA
SELECT * FROM nombre_tabla;
-- Conultar columnas especificas de una TABLA
SELECT columna1, columna2, columna3
FROM nombre_tabla;
-- Insertar datos en una TABLA
INSERT INTO nombre_tabla (nombre_columna_1, nombre_columna_2) VALUES ("dato en columna 1", "dato en columna 2");
-- borrar un registro de la nombre_tabla
DELETE FROM nombre_tabla WHERE nombre_columna_1 = "dato en columna 1";
-- Borrar una TABLA
DROP TABLE nombre_tabla;
-- Vaciar una tabla
TRUNCATE TABLE nombre_tabla;
-- Borrar base de nombre_base_datos
DROP DATABASE nombre_base_datos;

CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
--    ....
);

