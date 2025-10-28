-- Crear varios índices en la tabla empleados y luego realizar actualizaciones masivas en la tabla.
CREATE INDEX idx_apellido ON empleados (apellido);

CREATE INDEX idx_departamento ON empleados (departamento);

-- Realizar actualizaciones masivas en la tabla empleados.
UPDATE empleados
SET
    salario = salario * 1.1
WHERE
    departamento = 'Ventas';

UPDATE empleados
SET
    salario = salario * 1.05
WHERE
    departamento = 'Marketing';

-- Ejecutar REINDEX para reconstruir los índices y observar los cambios en el rendimiento.
REINDEX TABLE empleados;

-- Identificar y eliminar índices innecesarios que no estén siendo utilizados en las consultas frecuentes.
DROP INDEX IF EXISTS idx_departamento;