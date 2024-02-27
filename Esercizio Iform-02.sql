CREATE TABLE esercizio_iform.utenti (
id_utente integer NOT NULL AUTO_INCREMENT,
username varchar (255),
password varchar (255),
email varchar (255),
id_citta int,
active timestamp DEFAULT current_timestamp,
is_admin boolean,
primary key (id_utente)
);

CREATE TABLE esercizio_iform.citta (
id_citta integer NOT NULL AUTO_INCREMENT,
nome VARCHAR (255),
id_regione int,
primary key (id_citta)
);

CREATE TABLE esercizio_iform.regioni (
id_regione integer NOT NULL AUTO_INCREMENT,
nome varchar (255),
primary key (id_regione)
);



