CREATE DATABASE esercizio_iform;
USE esercizio_iform;

CREATE TABLE users (
    id_users INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    Username VARCHAR(255),
    nome VARCHAR(100),
    cognome VARCHAR(100),
    indirizzo VARCHAR(255),
    email VARCHAR(255),
    is_admin boolean,
    active_ timestamp DEFAULT CURRENT_TIMESTAMP,
    password_ VARCHAR(255)
    );

    CREATE TABLE esercizio_iform.regioni (
id_regione integer NOT NULL AUTO_INCREMENT,
nome varchar (255),
primary key (id_regione)
);


CREATE TABLE citta {
    id_citta integer NOT NULL AUTO_INCREMENT,
    nome varchar (255),
    id_regione integer,
    primary key (id_citta)
};

INSERT INTO Utenti (username, password, email, is_admin)
VALUES ("Alberto", "Al12345", "alberto@gmail.com", "0"),
("Eliana", "Ele@93", "eleonora@gmail.com", "1"),
("Luca", "Mark!12", "luca@gmail.com", "0"),
("Mirko", "Mirko86", "mirko86@gmail.com", "1");

INSERT INTO Utenti (username, password, email, is_admin)
VALUES ("Mirko", "Al12345", "alberto@gmail.com", "0"),
("Carmela", "Ele@93", "eleonora@gmail.com", "1"),
("Rosa", "Mark!12", "luca@gmail.com", "0"),
("Calogero", "Mirko86", "mirko86@gmail.com", "1");

INSERT INTO Utenti (username, password, email, is_admin)
VALUES ("Mimmio", "Al12345", "alberto@gmail.com", "0");

INSERT INTO Utenti (username, password, email, is_admin)
VALUES ("Daniele", "Al12345", "alberto@gmail.com", "0");