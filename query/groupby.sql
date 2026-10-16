-- Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(enrolment_date) AS anno_iscrizione, COUNT(*) AS studenti_iscritti
FROM students
GROUP BY YEAR(enrolment_date);


-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
-- Calcolare la media dei voti di ogni appello d'esame
-- Contare quanti corsi di laurea ci sono per ogni dipartimento