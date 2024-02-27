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

