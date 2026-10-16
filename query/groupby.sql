-- Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(enrolment_date) AS anno_iscrizione, COUNT(*) AS studenti_iscritti
FROM students
GROUP BY YEAR(enrolment_date);


-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT office_address AS indirizzo, COUNT(*) AS tot_insegnanti
FROM teachers
GROUP BY office_address;


-- Calcolare la media dei voti di ogni appello d'esame
SELECT exam_id AS appello, ROUND(AVG(vote), 2) AS media_voti
FROM exam_student
GROUP BY exam_id;


-- Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT department_id AS dipartimenti, COUNT(name) AS corso_laurea
FROM degrees
GROUP BY department_id;