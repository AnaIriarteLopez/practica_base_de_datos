-- Active: 1761572932390@@127.0.0.1@5432@practico_5_tienda_libros
-- Diseñar y crear una base de datos para gestionar una tienda de libros, asegurando el cumplimiento de las
--reglas de integridad referencial, de entidad y de dominio
-- Se requiere almacenar información sobre los autores, los libros disponibles en la tienda y los ejemplares físicos de cada libro.
CREATE DATABASE practico_5_tienda_libros;

CREATE TABLE autores (
    autor_ID SERIAL PRIMARY KEY NOT NULL UNIQUE,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    nacionalidad VARCHAR(50)
);

CREATE TABLE libros (
    libro_id SERIAL PRIMARY KEY NOT NULL UNIQUE,
    titulo VARCHAR(100) NOT NULL UNIQUE,
    autor_id INT REFERENCES autores (autor_id),
    genero VARCHAR(50),
    precio DECIMAL(10, 2),
    fecha_publicacion DATE
);

CREATE TABLE ejemplares (
    ejemplar_id SERIAL PRIMARY KEY NOT NULL UNIQUE,
    libro_id INT REFERENCES libros (libro_id),
    estado VARCHAR(20) CHECK (
        estado IN (
            'disponible',
            'prestado',
            'reservado'
        )
    )
);

-- Restricción de borrado
--No  se  puede  eliminar  un  autor  si  tiene  libros  asociados.  (ON DELETE RESTRICT)
--Al eliminar un libro, se deben eliminar automáticamente todos
--sus ejemplares. (ON DELETE CASCADE)

ALTER TABLE libros
ADD CONSTRAINT fk_autor FOREIGN KEY (autor_id) REFERENCES autores (autor_id) ON DELETE RESTRICT;

ALTER TABLE ejemplares
ADD CONSTRAINT fk_libro FOREIGN KEY (libro_id) REFERENCES libros (libro_id) ON DELETE CASCADE;

--Integridad de dominio:
--El precio del libro debe ser mayor que 0.
ALTER TABLE libros ADD CONSTRAINT chk_precio CHECK (precio > 0);