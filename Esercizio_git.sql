-- Fabio Arca

-- Creazione database
CREATE DATABASE esercizio_iform;

-- Selezione database 
USE esercizio_iform;

-- Creazione tabella regioni
CREATE TABLE regioni (
    id_regione INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR (25)
);

-- Creazione tabella citta
CREATE TABLE citta (
    id_citta INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(55),
    id_regione INTEGER
);

--  Creazione tabella users
CREATE TABLE users (
    id_users INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    username VARCHAR(55),
    nome VARCHAR(100),
    cognome VARCHAR(100),
    indirizzo VARCHAR(55),
    email VARCHAR(55),
    password_ VARCHAR(12),
    id_citta INTEGER,
    is_admin BOOLEAN,
    active_ TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--  Creazione chiave esterna id_regione su tabella citta
ALTER TABLE citta 
ADD CONSTRAINT FK_id_regione_citta
FOREIGN KEY (id_regione) REFERENCES regioni(id_regione);

--  Creazione chiave esterna id_citta su tabella users
ALTER TABLE users
ADD CONSTRAINT FK_id_citta_users
FOREIGN KEY (id_citta) REFERENCES citta(id_citta);

-- Inserimento dei dati dentro la tabella regioni
INSERT INTO regioni (nome) 
VALUES
    ('Abruzzo'),
    ('Basilicata'),
    ('Calabria'),
    ('Campania'),
    ('Emilia-Romagna'),
    ('Friuli Venezia Giulia'),
    ('Lazio'),
    ('Liguria'),
    ('Lombardia'),
    ('Marche'),
    ('Molise'),
    ('Piemonte'),
    ('Puglia'),
    ('Sardegna'),
    ('Sicilia'),
    ('Toscana'),
    ('Trentino-Alto Adige'),
    ('Umbria'),
    ("Valle d'Aosta"),
    ('Veneto');

-- Inserimento dei dati dentro la tabella citta
INSERT INTO citta (nome, id_regione) 
VALUES
    ("L'Aquila", 1), -- Abruzzo
    ('Potenza', 2), -- Basilicata
    ('Reggio Calabria', 3), -- Calabria
    ('Napoli', 4), -- Campania
    ('Bologna', 5), -- Emilia-Romagna
    ('Trieste', 6), -- Friuli Venezia Giulia
    ('Roma', 7), -- Lazio
    ('Genova', 8), -- Liguria
    ('Milano', 9), -- Lombardia
    ('Ancona', 10), -- Marche
    ('Campobasso', 11), -- Molise
    ('Torino', 12), -- Piemonte
    ('Bari', 13), -- Puglia
    ('Cagliari', 14), -- Sardegna
    ('Palermo', 15), -- Sicilia
    ('Firenze', 16), -- Toscana
    ('Trento', 17), -- Trentino-Alto Adige
    ('Perugia', 18), -- Umbria
    ('Aosta', 19), -- Valle d'Aosta
    ('Venezia', 20); -- Veneto

-- Inserimento dei dati
INSERT INTO users (username, nome, cognome, indirizzo, email, password_, id_citta, is_admin) 
VALUES
    ('leo', 'Leonardo', 'Rossi', 'Via Roma 1', 'leo.rossi@email.it', 'leo123', 1, 0), -- L'Aquila
    ('fran', 'Francesca', 'Bianchi', 'Via Garibaldi 2', 'fran.bianchi@email.it', 'fran456', 2, 0), -- Potenza
    ('ric', 'Riccardo', 'Verdi', 'Corso Vittorio Emanuele 3', 'ric.verdi@email.it', 'ric789', 3, 0), -- Reggio Calabria
    ('lucia', 'Lucia', 'Neri', 'Piazza Plebiscito 4', 'lucia.neri@email.it', 'lucia123', 4, 0), -- Napoli
    ('marco', 'Marco', 'Gialli', 'Via Indipendenza 5', 'marco.gialli@email.it', 'marco456', 5, 0), -- Bologna
    ('sara', 'Sara', 'Marroni', 'Piazza Unità dItalia 6', 'sara.marroni@email.it', 'sara789', 6, 0), -- Trieste
    ('giulio', 'Giulio', 'Viola', 'Via del Corso 7', 'giulio.viola@email.it', 'giulio123', 7, 0), -- Roma
    ('clara', 'Clara', 'Rosa', 'Via XX Settembre 8', 'clara.rosa@email.it', 'clara456', 8, 0), -- Genova
    ('matteo', 'Matteo', 'Arancioni', 'Piazza Duomo 9', 'matteo.arancioni@email.it', 'matteo789', 9, 0), -- Milano
    ('anna', 'Anna', 'Celesti', 'Corso Cavour 10', 'anna.celesti@email.it', 'anna123', 10, 0), -- Ancona
    ('luca', 'Luca', 'Grigi', 'Via Nazionale 11', 'luca.grigi@email.it', 'luca456', 11, 0), -- Campobasso
    ('laura', 'Laura', 'Neri', 'Piazza Castello 12', 'laura.neri@email.it', 'laura789', 12, 0), -- Torino
    ('davide', 'Davide', 'Rossi', 'Corso Vittorio Veneto 13', 'davide.rossi@email.it', 'davide123', 13, 0), -- Bari
    ('elena', 'Elena', 'Bianchi', 'Viale Regina Margherita 14', 'elena.bianchi@email.it', 'elena456', 14, 0), -- Cagliari
    ('simone', 'Simone', 'Verdi', 'Via Maqueda 15', 'simone.verdi@email.it', 'simone789', 15, 0), -- Palermo
    ('giulia', 'Giulia', 'Gialli', 'Via Cavour 16', 'giulia.gialli@email.it', 'giulia123', 16, 0), -- Firenze
    ('andrea', 'Andrea', 'Marroni', 'Via Mazzini 17', 'andrea.marroni@email.it', 'andrea456', 17, 0), -- Trento
    ('marta', 'Marta', 'Viola', 'Corso Vannucci 18', 'marta.viola@email.it', 'marta789', 18, 0), -- Perugia
    ('fabio', 'Fabio', 'Rosa', 'Via SantAnselmo 19', 'fabio.rosa@email.it', 'fabio123', 19, 0), -- Aosta
    ('chiara', 'Chiara', 'Arancioni', 'Ponte di Rialto 20', 'chiara.arancioni@email.it', 'chiara456', 20, 0), -- Venezia
    ('leo1', 'Leonardo', 'Ferrari', 'Via Roma 21', 'leo1.ferrari@email.it', 'leo1123', 1, 1), -- L'Aquila
    ('fran1', 'Francesca', 'Esposito', 'Via Garibaldi 22', 'fran1.esposito@email.it', 'fran1456', 2, 1), -- Potenza
    ('ric1', 'Riccardo', 'Rinaldi', 'Corso Vittorio Emanuele 23', 'ric1.rinaldi@email.it', 'ric1789', 3, 1), -- Reggio Calabria
    ('lucia1', 'Lucia', 'Romano', 'Piazza Plebiscito 24', 'lucia1.romano@email.it', 'lucia1123', 4, 1), -- Napoli
    ('marco1', 'Marco', 'Colombo', 'Via Indipendenza 25', 'marco1.colombo@email.it', 'marco1456', 5, 1), -- Bologna
    ('sara1', 'Sara', 'Ricci', 'Piazza Unità dItalia 26', 'sara1.ricci@email.it', 'sara1789', 6, 1), -- Trieste
    ('giulio1', 'Giulio', 'Marini', 'Via del Corso 27', 'giulio1.marini@email.it', 'giulio1123', 7, 1), -- Roma
    ('clara1', 'Clara', 'Gallo', 'Via XX Settembre 28', 'clara1.gallo@email.it', 'clara1456', 8, 1), -- Genova
    ('matteo1', 'Matteo', 'Costa', 'Piazza Duomo 29', 'matteo1.costa@email.it', 'matteo1789', 9, 1), -- Milano
    ('anna1', 'Anna', 'Fontana', 'Corso Cavour 30', 'anna1.fontana@email.it', 'anna1123', 10, 1); -- Ancona

-- Creazione di una SELECT con LEFT JOIN fra user, citta, regioni
-- filtrata per admin
-- ordinata per COGNOME
SELECT  u.cognome AS COGNOME, u.nome AS NOME, u.id_users AS ID, u.indirizzo AS INDIRIZZO, c.nome AS CITTA, r.nome AS REGIONE
FROM users AS u 
LEFT JOIN citta AS c
ON u.id_citta=c.id_citta
LEFT JOIN regioni AS r
ON c.id_regione=r.id_regione
WHERE is_admin = 1
ORDER BY u.cognome;
