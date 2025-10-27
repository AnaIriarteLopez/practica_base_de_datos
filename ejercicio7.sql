-- Agregar una clave foránea en la tabla "pedidos" que haga referencia al "id" de la tabla "productos" y que se llame "id_producto"

ALTER TABLE pedidos
ADD COLUMN id_producto INT REFERENCES productos (id);