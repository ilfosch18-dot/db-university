-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT students.name, students.surname, degrees.name AS corso_di_laurea
FROM degrees
JOIN students
ON students.degree_id = degrees.id
WHERE degrees.name = 'Corso di Laurea in Economia';

-- 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT degrees.*
FROM degrees
JOIN departments
ON degrees.department_id = departments.id
WHERE departments.name = 'Dipartimento di Neuroscienze'
AND degrees.name LIKE '%Magistrale%'; 

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT courses.*
FROM courses
JOIN course_teacher
ON courses.id = course_teacher.course_id
JOIN teachers
ON course_teacher.teacher_id = teachers.id
WHERE teachers.id = 44;

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT students.*, degrees.name AS corso_di_laurea, departments.name AS dipartimento
FROM students
JOIN degrees
ON students.degree_id = degrees.id
JOIN departments
ON degrees.department_id = departments.id
ORDER BY students.surname, students.name;


-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT degrees.name, courses.name AS nome_corso, teachers.name AS nome_insegnanti, teachers.surname AS cognome_insegnanti
FROM degrees
JOIN courses
ON courses.degree_id = degrees.id
JOIN course_teacher
ON course_teacher.course_id = courses.id 
JOIN teachers
ON teachers.id = course_teacher.teacher_id;


-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)


-- 7. BONUS: Selezionare per ogni studente il numero di tentativi sostenuti per ogni esame, stampando anche il voto massimo. Successivamente, filtrare i tentativi con voto minimo 18.