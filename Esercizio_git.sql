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

INSERT INTO esercizio_iform.regioni (nome)
VALUES ("Abruzzo"),
("Basilicata"),
("Calabria"),
("Campania"),
("Emilia Romagna"),
("Friuli VG"),
("Lazio"),
("Liguria"),
("Lombardia"),
("Marche"),
("Molise"),
("Piemonte"),
("Puglia"),
("Sardegna"),
("Sicilia"),
("Toscana"),
("Trentino AD"),
("Umbria"),
("Val d'Aosta"),
("Veneto");

INSERT INTO esercizio_iform.citta (nome, id_regione)
VALUES ("Pescara", 1),
("Potenza", 2),
("Crotone", 3),
("Napoli", 4),
("Caserta", 4),
("Bologna", 5),
("Parma", 5),
("Udine", 6),
("Roma", 7),
("Viterbo", 7),
("La Spezia", 8),
("Genova", 8),
("Milano", 9),
("Bergamo", 9),
("Jesi", 10),
("Campobasso", 11),
("Torino", 12),
("Novara", 12),
("Taranto", 13),
("Bari", 13),
("Olbia", 14),
("Sassari", 14),
("Catania", 15),
("Empoli", 16),
("Siena", 16),
("Trento", 17),
("Gubbio", 18),
("Aosta", 19),
("Verona", 20),
("Venezia", 20);

INSERT INTO esercizio_iform.utenti (username, password_, email, is_admin, id_citta)
VALUES ("Alberto", "Al12345", "alberto@gmail.com", true, 2),
("Eliana", "Eli@X3", "eliana@gmail.com", false, 7),
("Luca", "Luke!12", "luca@gmail.com", false, NULL),
("Mirko", "M1rk076", "mirko@gmail.com", true, 18),
("Marco", "4D1o5", "marco@gmail.com", false, NULL),
("Simona", "S1m00N", "simona@gmail.com", true, 16),
("Alessandro", "AL3x1", "alessandro@gmail.com", false, 12),
("Laura", "2aUr4", "laura@gmail.com", false, 7),
("Davide", "dN97K3y", "davide@gmail.com", true, NULL),
("Claudio", "c14fdl5", "claudio@gmail.com", true, 14),
("Enrico", "ghsk839", "enrico@gmail.com", false, 17),
("Filippa", "hqp87f5", "filippa@gmail.com", false, 27),
("Deianira", "d31af6", "deianira@gmail.com", true, 9),
("Fabiola", "dk07rt5", "fabiola@gmail.com", false, NULL),
("Stefano", "qkjfkl6", "stefano@gmail.com", true, 16),
("Ernesto", "nmqfrk49", "ernesto@gmail.com", false, 22),
("John", "fdsk1s", "john@gmail.com", false, 20),
("Roberto", "dfj1y", "roberto@gmail.com", true, 11),
("Enea", "jwskso872", "enea@gmail.com", false, 28),
("Paride", "shfiq394", "paride@gmail.com", true, 4);

