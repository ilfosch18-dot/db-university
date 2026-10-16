-- Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(enrolment_date) AS anno_iscrizione, COUNT(*) AS studenti_iscritti
FROM students
GROUP BY YEAR(enrolment_date);


-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT office_address AS indirizzo, COUNT(*) AS tot_insegnanti
FROM teachers
GROUP BY office_address;





-- Contare quanti corsi di laurea ci sono per ogni dipartimento