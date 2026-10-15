-- Seleziona tutti gli studenti nati nel 1990
SELECT *
FROM students
WHERE date_of_birth LIKE '1990%';

-- Sono 160
SELECT COUNT(*)
FROM students
WHERE date_of_birth LIKE '1990%';


-- Selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT * 
FROM courses 
WHERE cfu > 10;

-- Sono 479
SELECT COUNT(*) 
FROM courses 
WHERE cfu > 10;

-- Selezionare tutti gli studenti che hanno più di 30 anni
SELECT *
FROM students
WHERE date_of_birth < '1995-10-16';