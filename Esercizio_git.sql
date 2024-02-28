CREATE DATABASE esercizio_iform;
USE esercizio_iform;

CREATE TABLE esercizio_iform.users (
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
    id_regione INTEGER NOT NULL AUTO_INCREMENT,
    nome VARCHAR (255),
    PRIMARY KEY (id_regione)
    );

CREATE TABLE esercizio_iform.citta (
    id_citta INTEGER NOT NULL AUTO_INCREMENT,
    nome VARCHAR (100),
    id_regione INTEGER,
    PRIMARY KEY (id_citta)
    );

INSERT INTO esercizio_iform.citta (nome)
    VALUES 
        ('Sassari'), 
        ('Taranto'), 
        ('Napoli'), 
        ('New York'), 
        ('Dallas'), 
        ('Roma'), 
        ('Milano'), 
        ('Londra'), 
        ('Mosca'), 
        ('Sennori'), 
        ('Cagliari'), 
        ('Firenze'), 
        ('Brescia'),
        ('Udine'),
        ('Otranto'), 
        ('Assisi'), 
        ('Scapoli'), 
        ('Palermo'), 
        ('Gotham'), 
        ('Parma'), 
        ('Livorno'), 
        ('Foggia'), 
        ('Rimini'), 
        ('Ferrara'), 
        ('Modena'), 
        ('Venezia'), 
        ('Bari'), 
        ('Trieste'), 
        ('Metropolis'), 
        ('Lucca');

INSERT INTO esercizio_iform.users (Username, email, id_citta)
    VALUES 
        ('Belle', 'belle@belle.it', '17'),
	    ('Brutt', 'brutt@spumante.it', '21'),
        ('Daisy', 'duck@paperopoli.com', '19'),
        ('Billo', 'brillo@vino.com', '14'),
        ('Bullo', 'biello@gugu.it', '22'),
        ('Nade', 'speranza@bubu.it', '26'),
        ('Davide', 'bissiri@notturno.com', '1'),
        ('Arlo', 'davide@arlo.it', '7'),
        ('Maria', 'defilippi@mediaset.it', '6'),
        ('Luca', 'limone@aspro.com', '24'),
        ('Paolo', 'noise@105.it', '10'),
        ('Carlo', 'balna@bubu.com', '9'),
        ('Kira', 'patatina@cagnolina.it', '30'),
        ('Giovanni', 'jojo@joy.it', '7'),
        ('Jonathan', 'joestar@jojo.it', '5'),
        ('Serjh', 'qwueiqwe@gmail.com'),
        ('Alby', 'fad@gmail.com'),
        ('Mickey', 'mouse@gmail.com'),
        ('Ramones', 'carmen@gmail.com'),
        ('Donald', 'duck@gmail.com'),
        ('Scrooge', 'soldi@gmail.com'),
        ('Donald', 'anonimo@gmail.com');