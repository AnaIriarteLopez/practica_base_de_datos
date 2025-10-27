-- Crear una tabla llamada "empleados" con las siguientes columnas:
--▪ "id" (entero autoincremental y clave primaria)
--▪ "nombre" (cadena de caracteres),
--▪ "edad" (entero mayor que 18)
--▪ "salario" (decimal mayor que 0)
CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT CHECK (edad > 18),
    salario DECIMAL CHECK (salario > 0)
)