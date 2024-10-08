-- 1. Consultar el nombre de los empleados con salarios entre 2000 y 3000 ordenados por nombre mayor

SELECT ename, sal 
FROM emp
WHERE sal >= 2000 AND sal <= 3000
ORDER BY 1 DESC;

-- 2. Obtener los distintos puestos laborales de los empleados.

SELECT DISTINCT job
FROM emp;

-- 3. Consultar el código de los empleados cuyo apellido comienza con 'S'.

SELECT empno
FROM emp
WHERE ename LIKE 'S%';

-- 4. Consultar el nombre de los empleados que pertenecen a los departamentos 10 y 30.

SELECT ename 
FROM emp
WHERE deptno = 10 or deptno = 30;

-- 5. Consultar el nombre de los empleados que no pertenecen a los departamentos 10 o 30.

SELECT ename
FROM emp 
WHERE deptno != 10 AND deptno != 30; 

-- 6. Consultar el nombre de los empleados con salarios fuera del rango 1500 a 2500.

SELECT ename
FROM emp
WHERE sal > 2500 OR sal < 1500;

-- 7. Consultar el nombre de los empleados cuyo apellido contien la letra 'A'.

SELECT ename
FROM emp
WHERE ename LIKE '%A%';

-- 8. Consultar el nombre de los empleados que son Clerk.

SELECT ename
FROM emp
WHERE job = 'CLERK';

-- 9. Consultar el nombre de los empleados que no tienen el trabajo de 'MANAGER'.

SELECT ename
FROM emp
WHERE job != 'MANAGER';

-- 10. Consultar los departamentos con empleados cuyo salario es menor a 2000 o mayor a 3000.

SELECT deptno
FROM emp
WHERE sal < 2000 OR sal > 3000;

-- 11. Consultar el nombre de los empleados y el salario, ambos con alias en castellano, con 
-- salarios entre 2000 y 3000 y que pertenezcan al departamento 10.

SELECT ename Nombre, sal Salario
FROM emp 
WHERE sal > 2000 AND sal < 3000 AND deptno = 10;

-- 12. Consultar el nombre, el puesto y el salario, todos con alias en castellano, de los empleados
-- que tienen como trabajo Manager o cuyo salario es mayor a 2500 y pertenezcan siempre al departamento 20.

SELECT ename Nombre, job Puesto, sal Salario
FROM emp
WHERE (job = 'MANAGER' OR sal > 2500) AND deptno = 20;

-- 13. Consultar los distintos puestos de los empleados que no pertenecen a los departamentos 10 o 30 y cuyo
-- salario es mayor a 3000 ordenador por salario mayor.

SELECT DISTINCT job 
FROM emp
WHERE deptno != 10 AND deptno != 30 AND sal > 3000
ORDER BY sal DESC;

-- 14. Consultar cuántos empleados con Salesman o cuyo salario está entre 1500 y 2500.

SELECT COUNT(*)
FROM emp
WHERE job = 'SALESMAN' OR (sal > 1500 AND sal < 2500);

-- 15. Consultar el código de los departamentos cuyo nombre termina en 'G' y su localidad tenga una 'A' en 
-- cualquier parte si tiene al menos 3 caracteres.

SELECT deptno
from DEPT
WHERE dname LIKE '%G' AND loc LIKE '%A%' AND LENGTH(loc) >= 3;

-- 16. Obtener el nombre de los empleados que tienen el mismo puesto laboral que Jones.

SELECT * 
FROM emp
WHERE job = (
	SELECT job
	FROM emp
	WHERE ename = 'JONES');