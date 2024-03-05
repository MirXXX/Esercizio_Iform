SELECT id_utente, username, email, citta.nome
from utenti 
INNER JOIN citta ON utenti.id_citta=citta.id_citta;
