--Lista el nombre de los productos, el precio en pesos y el precio en dólares.
SELECT
    nombre,
    precio,
    precio / 200 AS "precio_dolares"
FROM producto;

--Lista el nombre de los productos, el precio en pesos y el precio en dólares. Utiliza los siguientes alias
--para las columnas: nombre de producto, precio_pesos, precio_dolares.
SELECT
    nombre AS "nombre de producto",
    precio AS "precio_pesos",
    precio / 200 AS "precio_dolares"
FROM producto;
--Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.
SELECT
    UPPER(nombre) AS "nombre de producto",
    precio AS "precio_pesos",
    precio / 200 AS "precio_dolares"
FROM producto;