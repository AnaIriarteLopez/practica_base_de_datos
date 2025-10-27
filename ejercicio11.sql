--  Agregar una restricción de comprobación en la tabla "empleados" para asegurarte de que el salario no sea superior a 10000.
ALTER TABLE empleados
ADD CONSTRAINT chk_salario CHECK (salario <= 10000);