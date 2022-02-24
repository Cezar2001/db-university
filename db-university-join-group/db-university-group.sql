--1. Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`enrolment_date`), COUNT(*) 
FROM `students`
GROUP BY YEAR(`enrolment_date`);

--2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT `office_address`, COUNT(*)
FROM `teachers`
GROUP BY `office_address`
    HAVING COUNT('id') > 1;

--3. Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id`, ROUND(AVG(`vote`), 2)
FROM `exam_student`
GROUP BY `exam_id`;

--4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id`, COUNT(*) 
FROM `degrees`
GROUP BY `department_id`;