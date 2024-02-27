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

CREATE TABLE esercizio_iForm.regioni (
    id_regione integer NOT NULL AUTO_INCREMENT,
    regione varchar(100),
  	PRIMARY KEY(id_regione) 
);
