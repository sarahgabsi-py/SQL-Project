# Some query sample
- Retrieve user name and student ID for students enrolled after 2023
SELECT UTENTE.Nome, STUDENTE.Matricola FROM UTENTE JOIN STUDENTE ON UTENTE.ID_Utente = STUDENTE.ID_Studente JOIN LIBRETTO_CARRIERA ON STUDENTE.ID_Studente = LIBRETTO_CARRIERA.Studente_ID WHERE LIBRETTO_CARRIERA.Data_Creazione > '2023-01-01';

- Retrieve authors who give interventions in seminars held in the Benedettini hall 
SELECT AUTORE.Nome, AUTORE.Cognome FROM AUTORE JOIN INTERVENTO ON AUTORE.ID_Autore = INTERVENTO.Autore_ID JOIN EVENTO ON INTERVENTO.Evento_ID = EVENTO.ID_Evento JOIN SALA ON EVENTO.Sala_ID = SALA.ID_Sala WHERE SALA.Ubicazione = 'Monastero dei Benedettini' AND EVENTO.Nome_Evento LIKE '%Seminario%';

- Degree programs whose departments have more than two programs SELECT CORSO_DI_LAUREA.Dipartimento, COUNT(*) AS Num_Corsi FROM CORSO_DI_LAUREA GROUP BY CORSO_DI_LAUREA.Dipartimento HAVING COUNT(*) > 2;

- Students close to graduating (≤ 30 credits remaining)
SELECT S.Matricola, U.Nome, U.Cognome, L.Totale_CFU, C.Crediti, C.Crediti - L.Totale_CFU AS CFU_mancanti FROM UTENTE U JOIN STUDENTE S ON U.ID_Utente = S.ID_Studente JOIN LIBRETTO_CARRIERA L ON S.ID_Studente = L.Studente_ID JOIN CORSO_DI_LAUREA C ON S.Corso_di_Laurea_ID = C.ID_Corso WHERE C.Crediti - L.Totale_CFU <= 30 ORDER BY C.Crediti;
