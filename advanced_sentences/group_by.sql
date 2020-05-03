--Agrupar
--Cuando se tiene varios valores de una misma llave, esta se agrupa con GROUP BY aquellos valores que se repiten

SELECT autor_id,SUM(ventas) FROM libros GROUP BY autor_id;

--Si queremos agrupar para encontrar el máximo de un valor por su suma y al final necesario poner un alias 

SELECT autor_id, MAX(suma) as "Mayor Venta" FROM (SELECT autor_id,SUM(ventas) AS suma FROM libros GROUP BY autor_id) AS result
