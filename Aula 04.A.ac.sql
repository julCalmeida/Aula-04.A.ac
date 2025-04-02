
--Exercicio 01:

SELECT * from student JOIN takes on student.ID = takes.ID ;


--Exercicio 02:

SELECT student.ID, student.name, COUNT(course.course_id) AS Quantidade_de_cursos
FROM student JOIN course ON student.dept_name = course.dept_name
WHERE student.dept_name = 'Civil Eng.'
GROUP BY student.ID, student.name
ORDER BY Quantidade_de_cursos DESC;

--Exercicio 03:

CREATE VIEW civil_eng_students AS

SELECT student.ID, student.name, COUNT(course.course_id) AS Quantidade_de_cursos
FROM student JOIN course ON student.dept_name = course.dept_name
WHERE student.dept_name = 'Civil Eng.'
GROUP BY student.ID, student.name
ORDER BY Quantidade_de_cursos DESC;
