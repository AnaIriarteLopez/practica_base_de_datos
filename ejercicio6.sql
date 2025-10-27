-- Crear una tabla llamada "pedidos" con las siguientes columnas:
--▪ "id" (entero autoincremental y clave primaria)
--▪ "id_cliente" (entero, clave foránea que referencia el "id" de la tabla "clientes")
--▪ "fecha_pedido" (fecha)
--▪ "total" (entero).

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES clientes (id),
    fecha_pedido DATE,
    total INT
)