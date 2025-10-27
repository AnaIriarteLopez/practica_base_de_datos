-- Eliminar la clave foránea "id_cliente" de la tabla "pedidos".
ALTER TABLE pedidos DROP CONSTRAINT pedidos_id_cliente_fkey;
-- Esta línea elimina la clave foránea existente, constraint se utiliza para referirse a la restricción de clave foránea.