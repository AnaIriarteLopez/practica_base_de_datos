-- Crear una tabla llamada "productos" con las siguientes columnas:
--▪ "id" (entero autoincremental y clave primaria)
--▪ "nombre" (cadena de caracteres no nula y única)
--▪ "precio" (decimal)
--▪ "stock" (entero no negativo).

CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL UNIQUE,
    precio DECIMAL,
    stock INT CHECK (stock >= 0)
);