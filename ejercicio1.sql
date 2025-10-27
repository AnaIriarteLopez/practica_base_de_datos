-- Crear una tabla llamada "clientes" con las siguientes columnas:
--▪ "id" (entero autoincremental)
--▪ "nombre" (cadena de caracteres)
--▪ "email" (cadena de caracteres)
--▪ "edad" (entero).

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255),
    email VARCHAR(255),
    edad INT
);