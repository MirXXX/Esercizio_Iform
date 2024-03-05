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

SELECT id_utente AS Id, username AS Username, email AS "e-mail", citta.nome AS Citta, regioni.nome AS Regione
FROM utenti
LEFT JOIN citta ON utenti.id_citta=citta.id_citta
LEFT JOIN regioni ON citta.id_regione=regioni.id_regione
WHERE utenti.id_citta<20
OR utenti.id_citta IS NULL
ORDER BY Regione;