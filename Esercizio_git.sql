CREATE DATABASE esercizio_iform;
USE esercizio_iform;

CREATE TABLE users (
    id_users INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    Username VARCHAR(255),
    id_citta VARCHAR(255),
    email VARCHAR(255),
    is_admin boolean,
    active_ timestamp DEFAULT CURRENT_TIMESTAMP,
    password_ VARCHAR(255)
    );
regioni (
id_regione integer NOT NULL AUTO_INCREMENT,
nome varchar (255),
primary key (id_regione)
);


CREATE TABLE città {
    id_citta integer NOT NULL AUTO_INCREMENT,
    nome varchar (255),
    id_regione integer,
    primary key (id_citta)
};

--------------------------------------------------------------------------------


insert into users(Username, email, password_, is_admin)
values ('Alberto Falchi', 'falchialberto@email.com', 'StarWars_', true),
('Chierico Irlandese', 'posseduto@email.com', 'Voce1Alterata', false),
('Bardo Magno', 'bardomagno@email.com', 'MagisterBarbero1#', false),
('David Bowie', 'thin_white_duke@music.com', 'Starman04/14/72', false),
('Drizzt Do-Urden', 'thehunter@rangerdrow.dnd', 'Pantera_Nera1', false),
('avventuriero1', 'provodruido1@owlbear.ao', 'mitrasformoinmoffetta22', false),
('avventuriero2', 'provobardo3@owlbear.ao', 'seducoildragosputafuoco76', false),
('avventuriero3', 'provoladro7@owlbear.ao', 'deruboilpaladino32', false),
('Dungeon Master', 'provoanonpiangere74635276@owlbear.ao', 'sivaperlennesimo_TPK63635782', true);
('nomeeeeee', 'nomeeeeee@email.com', 'eeeeeemon4321', false),
('cognomeeeee', 'cognomeeeee@email.com', '4321eeeeemongoc', false),
('Jarjar Binks', 'mainvillain@sith.sw', 'AltroChePalpatine66', false),
('Admin', 'discordmod@kitten.ds', 'mamma_gestire_un_server_discord_è_un_lavoro37', true),
('Vox', 'vox@VVV.tv', 'Alastor_puzza999', false),
('Un Nome', 'unnome@email.nome', 'sssAAAsss', false),
('Amogus', 'crewmate@task.sus', 'impostor_is_SUS', false),
('Un Nome', 'unnome@email.nome', 'sssAAAsss', false),
('Joseph Joestar', 'heremit@purple.stand', 'Nigerundayo Smokey!!1!', false),
('Badb', 'badb@kenku.ao', 'LaCopionaPiùOriginale', false),
('Lorem', 'boh1account@sloth.com', 'nonloso,password?', false);

insert into esercizio_iform.città (nome) 
values ('Sassari'), ('Hogsmade'), ('Waterdeep'), 
('Mos Eisley'), ('Roma'), ('Cagliari'), 
('Naverwinter'), ('Tula'), ('Oschiri'), 
('Frosinone'), ('Baldurs Gate'), ('Londra'), 
('Liverpool'), ('Dublino'), ('Limerick'), 
('Collina di Tara'), ('Palermo'), ('Catania'), 
('Agrigento'), ('Sorso'), ('Trapani'), 
('Darkhold'), ('Bestine'), ('Fort Tusken'), 
('Mos Gamos'), ('York'), ('Sligo'), 
('Fiumicino'), ('Viterbo'), ('Sardara');

insert into esercizio_iform.regioni(nome) 
values ('Saedegna'), ('Inghilterra'), 
('Costa_della_Spada'), ('Tatooine'), 
('Lazio'), ('Irlanda'), ('Sicilia');

--------------------------------------------------------------------------------

SELECT users.id_città
FROM users
INNER JOIN città ON users.id_città=città.nome;

SELECT users.id_città, città.nome
FROM users
LEFT JOIN città ON users.id_città = città.nome
ORDER BY users.id_città;

SELECT users.id_città, città.nome
FROM users
RIGHT JOIN città ON users.id_città = città.nome
ORDER BY users.id_città;

SELECT users.id_città, città.nome
FROM users
FULL OUTER JOIN città ON users.id_città = città.nome
ORDER BY users.id_città;