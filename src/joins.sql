SELECT id_utente, username, email, citta.nome
from utenti 
INNER JOIN citta ON utenti.id_citta=citta.id_citta;

SELECT id_utente, username, email, citta.nome
FROM utenti 
LEFT JOIN citta ON utenti.id_citta=citta.id_citta;

SELECT id_utente, username, email, citta.nome
FROM utenti
RIGHT JOIN citta ON utenti.id_citta=citta.id_citta;

SELECT id_utente, username, email, citta.nome
FROM utenti 
LEFT JOIN citta ON utenti.id_citta=citta.id_citta
UNION
SELECT id_utente, username, email, citta.nome
FROM utenti
RIGHT JOIN citta ON utenti.id_citta=citta.id_citta;
