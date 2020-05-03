--A diferenceia de Where es que Having opera sobre un grupo de registros mientras que Where sobre registros individuales
--Generalmente utilizamos having con funciones como AVG, SUM,COUNT,MAX,MIN

SELECT autor_id, SUM(ventas) FROM libros GROUP BY autor_id HAVING SUM(ventas)>500;