Ejercicio 1

SELECT emp_no AS 'ID EMPLEADO', first_name AS 'NOMBRE', last_name AS 'APELLIDO', gender AS 'GENERO', hire_date AS 'FECHA CONTRATACION'
FROM employees
WHERE gender = 'F'
AND hire_date >= '2000-01-01';

Ejercicio 2

SELECT e.emp_no AS 'ID EMPLEADO', e.first_name AS 'NOMBRE', e.last_name AS 'APELLIDO', s.salary  AS 'MAYOR SALARIO'
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no;

Ejercicio 3

SELECT e.emp_no AS 'ID EMPLEADO', e.first_name AS 'NOMBRE', e.last_name AS 'APELLIDO', avg(s.salary) as 'PROMEDIO SALARIO'
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no
WHERE e.emp_no = '10056'
;

Ejercicio 4

SELECT distinct e.emp_no AS 'ID EMPLEADO', e.first_name AS 'NOMBRE', e.last_name AS 'APELLIDO',  e.gender AS 'GENERO', e.birth_date AS 'FECHA CUMPLEAÑOS', d.dept_name AS 'DEPARTAMENTO',t.title AS 'CARGO ACTUAL' , e.hire_date AS 'FECHA CONTRATACION'
FROM employees e
INNER JOIN titles t ON e.emp_no = t.emp_no
INNER JOIN dept_manager m ON e.emp_no = m.emp_no
inner join departments d on m.dept_no = d.dept_no

Ejercicio 5

SELECT e.emp_no AS 'ID EMPLEADO', e.first_name AS 'NOMBRE', e.last_name AS 'APELLIDO', e.birth_date AS 'FECHA CUMPLEAÑOS', e.hire_date AS 'FECHA CONTRATACION', t.title AS 'CARGO ACTUAL', d.dept_name AS 'DEPARTAMENTO', s.salary
FROM employees e
INNER JOIN titles t ON e.emp_no = t.emp_no
INNER JOIN salaries s ON s.emp_no = e.emp_no
INNER JOIN dept_manager m ON e.emp_no = m.emp_no
inner join departments d on m.dept_no = d.dept_no


