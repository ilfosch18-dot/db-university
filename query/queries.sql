-- Seleziona tutti gli studenti nati nel 1990
SELECT *
FROM students
WHERE date_of_birth LIKE '1990%';

-- Sono 160
SELECT COUNT(*)
FROM students
WHERE date_of_birth LIKE '1990%';
