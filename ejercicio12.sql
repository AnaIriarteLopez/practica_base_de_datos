--  Eliminar la restricción de comprobación que limita la edad en la tabla "empleados".
ALTER TABLE empleados ADD CONSTRAINT chk_edad CHECK (edad > 18);

ALTER TABLE empleados DROP CONSTRAINT chk_edad;