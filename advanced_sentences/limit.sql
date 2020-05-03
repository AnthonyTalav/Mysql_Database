--Para limitar las cantidades de registros se escribe la palabra reservada LIMIT

SELECT titulo FROM libros LIMIT 10; --Limita hasta los primeros 10 registros

SELECT titulo FROM libros WHERE autor_id = 2 LIMIT 5; --Limita los 5 primeros registros

--Si se coloca un número mayor de registros, se consideran todos

--Paginar
SELECT libro_id,titulo FROM libros LIMIT 0, 5; --Primer número a partir de donde empieza y segundo la cantidad