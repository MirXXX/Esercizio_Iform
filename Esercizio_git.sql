CREATE DATABASE esercizio_iform;
USE esercizio_iform;

CREATE TABLE esercizio_iform.Utenti (
    id_users INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL,
    cognome VARCHAR(100) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    is_admin boolean,
    active_ timestamp DEFAULT CURRENT_TIMESTAMP,
    password_ VARCHAR(255) NOT NULL
    );

    CREATE TABLE esercizio_iform.regioni (
id_regione integer NOT NULL,
nome varchar (255),
primary key (id_regione)
);


CREATE TABLE esercizio_iform.Città (
    id_città integer NOT NULL,
    nome varchar (255),
    id_regione integer,
    primary key (id_città)
);

INSERT INTO Utenti (Nome, Cognome, Password_, Email, is_admin)
VALUES  
        ('Alberto', 'Falchi', 'Saxofono1234','Alberto.falchi@libero.it', 1),
        ( 'Eliana', 'Ghiso', 'Skagen 21','Eliana.ghiso@libero.it', false),
        ( 'Luca', 'Usai', 'Skagen 22','Luca.usai@libero.it', false),
        ( 'Mirko', 'Gavino', 'Skagen 23','Mirko.gavino@libero.it', false),
        ( 'Giampietro', 'Angius', 'Skagen 24','Giampietro.angius@libero.it', false),
        ( 'Lorenzo', 'Angius', 'Skagen 25','Lorenzo.angius@libero.it', true),
        ( 'Fabio', 'Arca', 'Skagen 26','Fabio.arca@libero.it', 0),
        ( 'Gianfranco', 'Baracca', 'Skagen 27','Gianfranco.baracca@libero.it', 1),
        ( 'Salvatore', 'Camerada', 'Skagen 28','Salvatore.camerada@libero.it', 0),
        ( 'Abba', 'Maccu', 'Skagen 29','Abba.Maccu@libero.it', 1),
        ( 'Lao', 'Bra', 'Skagen 30','lao.bra@libero.it', 1),
        ( 'Mao', 'Toru', 'Skagen 31','mao.toru@libero.it', 1),
        ( 'Tao', 'Totti', 'Skagen 32','tao.totti@libero.it', 1),
        ( 'Rao', 'Lotti', 'Skagen 33','rao.lotti@libero.it', 1),
        ( 'Lio', 'Sio', 'Skagen 34','lio.sio@libero.it', 1),
        ( 'Rito', 'Mito', 'Skagen 35','rito.mito@libero.it', 1),
        ( 'Pito', 'Yoda', 'Skagen 36','pito.yoda@libero.it', 1),
        ( 'Gino', 'Moda', 'Skagen 37','gino.moda@libero.it', 1),
        ( 'Mino', 'Figer', 'Skagen 38','mino.figer@libero.it', 1),
        ( 'Vino', 'Muttu', 'Skagen 39','vino.muttu@libero.it', 1);

        INSERT INTO Esercizio_iform.regioni (id_regione, nome)
        VALUES  
                (1, 'Sardegna'),
                (2, 'Lombardia'),
                (3, 'Lazio'),
                (4, 'Campania'),
                (1, 'Sardegna'),
                (1, 'Sardegna'),
                (5, 'Sicilia'),
                (6, 'Molise' ),
                (7, 'Aquisgrana'),
                (8, 'Kabanskij_rajon' ),
                (9,  'Maranhão'),
                (10, 'Rabat-Salé-Kenitra'),
                (11, 'Liguria'),
                (12, 'Hidalgo'),
                (13, 'Tabuk'),
                (14,  'New_South_Wales'),
                (15, 'Pixley_ka_Seme'),
                (16, 'Montenegro'),
                (17, 'Gran_Chaco'),
                (18, 'Tibet'),
                (19, 'Zagabria'),
                (20, 'Trentino-Alto-Adige'),
                (21, 'Puglia'),
                (5, 'Sicilia'),
                (22, 'Piemonte'),
                (5, 'Sicilia'),
                (23, 'Abruzzo'),
                (2, 'Lombardia'),
                (1, 'Sardegna'),
                (24, 'Østlandet'),
                (1, 'Sardegna');


INSERT INTO Esercizio_iform.Città (id_città, id_regione, nome)
    VALUES 	
            (1, 1, 'Sassari'),
			(2, 2, 'Milano'),
			(3, 3, 'Roma'),
			(4, 4, 'Napoli'),
			(5, 1, 'Cagliari'),
			(6, 1, 'Oristano'),
			(7, 5, 'Leonforte'),
			(8, 6, 'Scapoli'),
			(9, 7, 'Aachen'),
			(10, 8, 'Babuskin'),
            (11, 9, 'Bacabal'),
            (12, 10, 'Rabat'),
            (13, 11, 'Genova'),
            (14, 12, 'Pachuca'),
            (15, 13, 'Tabuk'),
            (16, 14, 'Tabulam'),
            (17, 15, 'Ubundu'),
            (18, 16, 'Zabljak'),
            (19, 17, 'Yacuiba'),
            (20, 18, 'Xainza'),
            (21, 19, 'Zagabria'),
            (22, 20, 'Vadena'),
            (23, 21, 'Racale'),
            (24, 5, 'Racalmuto'),
            (25, 22, 'Racconigi'),
            (26, 5, 'Pachino'),
            (27, 23, 'Pacentro'),
            (27, 2, 'Olginate'),
            (28, 1, 'Osilo'),
            (29, 24, 'Oslo'),
            (30, 1, 'Ossi');

SELECT Esercizio_iform.Città.id_città, Esercizio_iform.regioni.id_regione
FROM Esercizio_iform.regioni
INNER JOIN Esercizio_iform.Città ON Esercizio_iform.regioni.nome = Esercizio_iform.Città.nome;

SELECT Esercizio_iform.Città.id_città, Esercizio_iform.regioni.id_regione
FROM Esercizio_iform.regioni
LEFT JOIN  Esercizio_iform.Città ON  Esercizio_iform.regioni.nome = Esercizio_iform.Città.nome
ORDER BY Esercizio_iform.regioni.nome;

SELECT Esercizio_iform.Città.id_città, Esercizio_iform.regioni.id_regione
FROM  Esercizio_iform.regioni
RIGHT JOIN  Esercizio_iform.Città ON  Esercizio_iform.regioni.nome = Esercizio_iform.Città.nome
ORDER BY Esercizio_iform.Città.id_città;
