CREATE TABLE fabricante (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE producto (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio REAL NOT NULL,
    id_fabricante INT NOT NULL,
    FOREIGN KEY (id_fabricante) REFERENCES fabricante (id)
);

INSERT INTO fabricante (nombre) VALUES ('Asus');

INSERT INTO fabricante (nombre) VALUES ('Lenovo');

INSERT INTO fabricante (nombre) VALUES ('Hewlett-Packard');

INSERT INTO fabricante (nombre) VALUES ('Samsung');

INSERT INTO fabricante (nombre) VALUES ('Seagate');

INSERT INTO fabricante (nombre) VALUES ('Crucial');

INSERT INTO fabricante (nombre) VALUES ('Gigabyte');

INSERT INTO fabricante (nombre) VALUES ('Huawei');

INSERT INTO fabricante (nombre) VALUES ('Xiaomi');

INSERT INTO
    producto (nombre, precio, id_fabricante)
VALUES (
        'Disco duro SATA3 1TB',
        86909,
        5
    );

INSERT INTO
    producto (nombre, precio, id_fabricante)
VALUES (
        'Memoria RAM DDR4 8GB',
        37999,
        6
    );

INSERT INTO
    producto (nombre, precio, id_fabricante)
VALUES ('Disco SSD 1 TB', 154996.2, 4);

INSERT INTO
    producto (nombre, precio, id_fabricante)
VALUES (
        'GeForce GTX 1050Ti',
        185470.54,
        7
    );

INSERT INTO
    producto (nombre, precio, id_fabricante)
VALUES (
        'GeForce GTX 1080 Xtreme',
        34200,
        6
    );

INSERT INTO
    producto (nombre, precio, id_fabricante)
VALUES (
        'Monitor 24 LED Full HD',
        202599,
        1
    );

INSERT INTO
    producto (nombre, precio, id_fabricante)
VALUES (
        'Monitor 27 LED Full HD',
        245299,
        1
    );

INSERT INTO
    producto (nombre, precio, id_fabricante)
VALUES (
        'Portátil Yoga 520',
        559200,
        2
    );

INSERT INTO
    producto (nombre, precio, id_fabricante)
VALUES (
        'Portátil Ideapd 320',
        444369,
        2
    );

INSERT INTO
    producto (nombre, precio, id_fabricante)
VALUES (
        'Impresora HP Deskjet 372023',
        211559.99,
        3
    );

INSERT INTO
    producto (nombre, precio, id_fabricante)
VALUES (
        'Impresora HP Laserjet Pro M26nw',
        180500,
        3
    );