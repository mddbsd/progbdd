CREATE DATABASE IF NOT EXISTS comerciocfl;

USE comerciocfl;

CREATE TABLE IF NOT EXISTS direcciones (
    id_direccion INT NOT NULL,
    calle VARCHAR(30),
    PRIMARY KEY (id_direccion)
);

CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT NOT NULL,
    nombre_cliente VARCHAR(20),
    id_direccion INT,
    PRIMARY KEY (id_cliente),
    FOREIGN KEY (id_direccion) REFERENCES direcciones(id_direccion)
);

INSERT INTO clientes (id_cliente, nombre_cliente)VALUES
(101,"marcelo tinelli"),(102,"susana gimenez");

INSERT INTO direcciones VALUES
(201, "callefalsa 123"),(202,"posadas 601");

UPDATE clientes SET id_direccion = 201 WHERE id_cliente = 101;
UPDATE clientes SET id_direccion = 202 WHERE id_cliente = 102;

CREATE TABLE IF NOT EXISTS ordenes (
    id_orden INT,
    id_cliente INT,
    fecha VARCHAR(20),
    costo FLOAT,
    PRIMARY KEY (id_orden),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO ordenes VALUES
(555, 101, "10/12", 500),
(556, 102, "7/8", 800),
(557, 101, "6/9", 750);

CREATE TABLE IF NOT EXISTS productos (
    id_producto INT,
    nombre_producto VARCHAR(20),
    descripcion_producto VARCHAR(255),
    PRIMARY KEY (id_producto)
);

CREATE TABLE IF NOT EXISTS producto_orden (
    id_orden INT,
    id_producto INT,
    PRIMARY KEY (id_orden, id_producto),
    FOREIGN KEY (id_orden) REFERENCES ordenes(id_orden),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

INSERT INTO productos VALUES 
(301, "monitor samsung", "monitor de 144hz"),
(302, "mouse logitech", "mouse gamer con leds"),
(303, "teclado genius", "teclado mecanico");

INSERT INTO producto_orden VALUES
(555, 301),
(555, 302),
(556, 303),
(556, 301),
(557, 302);

INSERT INTO direcciones VALUES  
(203, "san martin 222"),
(204, "almafuerte 321"),
(205, "perito moreno 412");

INSERT INTO clientes VALUES
(103, "ricardo ford", 203),
(104, "pepe argento", 204),
(105, "mirtha legrand", 205);

INSERT INTO productos VALUES
(304, "monitor MSI", "4k"),
(306, "parlantes genius", "alta fidelidad"),
(307, "auriculares logitech", "inalambricos"),
(308, "interfaz genius", "7.1"),
(309, "teclado noganet", "economico"),
(310, "mouse genius", "no te lo recomiendo");

INSERT INTO ordenes VALUES
(558, 103 , "29/10", 1000),
(559, 103 , "12/12", 2193),
(560, 105 , "13/05", 1234),
(561, 104 , "15/01", 3113);

INSERT INTO producto_orden VALUES
(558, 304),
(558, 307),
(558, 301),
(561, 308),
(561, 301),
(559, 308),
(560, 301),
(559, 309),
(560, 306);

nombre: paola argento
direccion: velez sarfield 1234
id: 106

--INSERT INTO clientes (id_cliente, nombre_cliente) VALUES
--(106, "paola argento");

--INSERT INTO direcciones VALUES
--(205, "Velez Sarfield", 1234);

--UPDATE clientes SET id_direccion = 205 WHERE id_cliente = 106;

INSERT INTO direcciones VALUES
(206, "Velez Sarfield 1234");

INSERT INTO clientes VALUES
(107, "paola argento", 205);

INSERT INTO ordenes VALUES
(562, 106, "16/05", 35000);

INSERT INTO producto_orden VALUES
(562,308),
(562,304),
(562,307);

--------------------------------------------------------------------------------------------
--CONSULTAS SELECT--
--------------------------------------------------------------------------------------------
--Selecciona TODO de la tabla clientes
SELECT * FROM clientes;
--Selecciona TODO de la tabla clientes uniendo la tabla direcciones (producto cartesiano)
SELECT * FROM clientes JOIN direcciones;
--Selecciona TODO de la tabla clientes uniendo la tabla direcciones
--con la clausa ON (llave primaria = llave foranea)
SELECT * FROM clientes 
    JOIN direcciones
        ON clientes.id_direccion = direcciones.id_direccion
--Selecciona TODO de la tabla clientes uniendo las tablas direcciones y ordenes
--Cada JOIN debe tener su clausula ON 
SELECT * FROM clientes 
    JOIN direcciones
        ON clientes.id_direccion = direcciones.id_direccion
    JOIN ordenes
        ON ordenes.id_cliente = clientes.id_cliente;
--Selecciona nombre, calle, id orden, fecha y costo de TODOS los clientes
--uniendo las tablas direcciones y ordenes
SELECT nombre_cliente, calle, id_orden, fecha, costo FROM clientes 
    JOIN direcciones
        ON clientes.id_direccion = direcciones.id_direccion
    JOIN ordenes
        ON ordenes.id_cliente = clientes.id_cliente;
--Selecciona nombre, calle, id orden, fecha y costo de TODOS los clientes
--uniendo las tablas direcciones y ordenes
--condicionando la salida par mostrar solo los datos de 1 cliente
SELECT nombre_cliente, calle, id_orden, fecha, costo FROM clientes 
    JOIN direcciones
        ON clientes.id_direccion = direcciones.id_direccion
    JOIN ordenes
        ON ordenes.id_cliente = clientes.id_cliente
    WHERE clientes.id_cliente = 101;














