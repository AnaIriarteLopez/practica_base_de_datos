-- Ejecutar consultas sobre la tabla empleados y ventas usando EXPLAIN para visualizar cómo
-- PostgreSQL utiliza (o no utiliza) los índices.

EXPLAIN ANALYZE SELECT * FROM empleados WHERE apellido = 'Pérez';

EXPLAIN
ANALYZE
SELECT *
FROM ventas
WHERE
    fecha = CURRENT_DATE - 30
    AND producto = 'Laptop';

--Identificar consultas donde el índice es útil y aquellas donde no es aprovechado, explicando por qué.
-- Consulta 1: El índice sobre el campo 'apellido' es utilizado eficientemente, ya que la consulta filtra por un valor específico.
-- Consulta 2: El índice compuesto sobre 'fecha' y 'producto' también es utilizado, ya que ambas condiciones de filtrado coinciden con los campos indexados.