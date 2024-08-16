CREATE DATABASE IF NOT EXISTS protodisqueria;

USE protodisqueria;

CREATE TABLE IF NOT EXISTS artistas(
    id_artista INT NOT NULL AUTO_INCREMENT,
    artista_nombre VARCHAR(25),
    artista_nacionalidad VARCHAR(15),
    PRIMARY KEY (id_artista)
);

CREATE TABLE IF NOT EXISTS discos(
    id_disco INT NOT NULL AUTO_INCREMENT,
    codigo VARCHAR(10),
    titulo VARCHAR(25),
    duracion TIME,
    portada VARCHAR(10),
    precio FLOAT,
    id_artista INT,
    PRIMARY KEY(id_disco),
    FOREIGN KEY(id_artista) REFERENCES artistas(id_artista)
);

CREATE TABLE IF NOT EXISTS facturas (
    id_factura INT NOT NULL AUTO_INCREMENT,
    fecha DATE,
    cantidad INT,
    PRIMARY KEY (id_factura)
);

CREATE TABLE IF NOT EXISTS discos_facturas (
    id_disco INT,
    id_factura INT,
    PRIMARY KEY (id_disco, id_factura),
    FOREIGN KEY (id_disco) REFERENCES discos(id_disco),
    FOREIGN KEY (id_factura) REFERENCES facturas(id_factura)
);

CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    apyn VARCHAR(30),
    dni INT,
    email VARCHAR(25),
    PRIMARY KEY(id_cliente)
);

INSERT INTO artistas (artista_nombre, artista_nacionalidad) VALUES
("iron maiden", "inglaterra"),
("korn", "eeuu"),
("queen", "inglaterra"),
("sliplknot", "eeuu"),
("nirvana", "eeuu"),
("mala fama", "argentina");

INSERT INTO discos (codigo, duracion, id_artista, titulo, precio) VALUES
("abc123","1:00:00",  1, "powerslave", 25000),
("cba321","00:30:00", 2, "issues",15000),
("bca331","00:45:00", 1, "fear of the dark", 24000),
("aac234","00:35:00", 4, "iowa", 12000),
("caa111","00:40:00", 2, "follow the leader",18000),
("aab333","00:50:00", 5, "nevermind", 14500);

INSERT INTO clientes (apyn, dni, email) VALUES
("marcelo tinelli", 111, "m@gmail.com"),
("susana gimenez", 222, "s@gmail.com"),
("beto casela", 333, "b@gmail.com"),
("ricardo ford", 444, "r@yahoo.com"),
("ricardo arjona", 555, "r@gmail.com"),
("paola argento",666,"p@hotmail.com");

INSERT INTO facturas ()

















































