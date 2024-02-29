CREATE DATABASE esercizio_iform;
USE esercizio_iform;

CREATE TABLE IF NOT EXISTS esercizio_iform.regioni (
    id_regione integer NOT NULL AUTO_INCREMENT,
    nome varchar (255),
    primary key (id_regione)
);

CREATE TABLE IF NOT EXISTS esercizio_iform.citta (
    id_citta integer NOT NULL AUTO_INCREMENT,
    nome varchar (255),
    id_regione integer NOT NULL,
    primary key (id_citta)
);

CREATE TABLE IF NOT EXISTS esercizio_iform.utenti (
    id_utente integer NOT NULL AUTO_INCREMENT,
    username varchar (255) NOT NULL,
    password_ varchar (255) NOT NULL,
    email varchar (255) NOT NULL,
    active_ timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    is_admin boolean default 0,
    id_citta integer,
    primary key (id_utente)
);