CREATE DATABASE IF NOT EXISTS disqueria;

USE disqueria;

CREATE TABLE IF NOT EXISTS discos(
    id_disco INT NOT NULL AUTO_INCREMENT,
    codigo VARCHAR(10),
    artista VARCHAR(25),
    titulo VARCHAR(25),
    duracion INT,
    portada VARCHAR(10),
    precio FLOAT,
    PRIMARY KEY(id_disco)
);

INSERT INTO discos (codigo, artista, titulo, duracion, portada) VALUES
("abc123", "iron maiden", "powerslave", 110, "img1.jpg"),
("cba321", "korn", "issues", 90, "img2.jpg");

INSERT INTO discos (codigo, duracion, artista, titulo) VALUES
("bca331",70, "iron maiden", "fear of the dark"),
("aac234",80, "slipknot", "iowa"),
("caa111",75, "korn", "follow the leader"),
("aab333",90, "nirvana", "nevermind");

CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    apyn VARCHAR(30),
    dni INT,
    email VARCHAR(25),
    PRIMARY KEY(id_cliente)
);

INSERT INTO clientes (apyn, dni, email) VALUES
("marcelo tinelli", 111, "m@gmail.com"),
("susana gimenez", 222, "s@gmail.com"),
("beto casela", 333, "b@gmail.com");



















