--Crear una tabla llamada empleados con las columnas id, nombre, apellido, edad, y salario.
CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    salario INT NOT NULL
);

--Insertar 1,000 filas de datos simulados
INSERT INTO
    empleados (
        nombre,
        apellido,
        edad,
        salario
    )
SELECT md5(random()::text), (
        ARRAY[
            'González', 'Pérez', 'López', 'Martínez', 'Suárez'
        ]
    ) [floor(random() * 5 + 1)], (20 + random() * 40)::int, (30000 + random() * 50000)::numeric(10, 2)
FROM generate_series(1, 1000);

--Crear un indice en la columna apellido.
CREATE INDEX idx_apellido ON empleados (apellido);

--Consultar la tabla para encontrar los empleados con un apellido especifico y medir el tiempo de ejecucion con y sin indice.

-- Consulta sin índice (antes de crear el índice)
EXPLAIN ANALYZE SELECT * FROM empleados WHERE apellido = 'Pérez';

-- Consulta con índice (después de crear el índice)
EXPLAIN ANALYZE SELECT * FROM empleados WHERE apellido = 'Pérez';
--Eliminar el indice creado.
DROP INDEX idx_apellido;

--Volver a ejecutar la consulta para comparar los tiempos de ejecucion.
EXPLAIN ANALYZE SELECT * FROM empleados WHERE apellido = 'Pérez';
--Limpiar la base de datos eliminando la tabla empleados.
DROP TABLE empleados;