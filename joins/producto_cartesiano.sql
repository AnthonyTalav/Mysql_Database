--Sirve para unir varias tablas sin especificar
SELECT
    usuarios.username,
    usuarios.nombre,
    libros.titulo
FROM
    usuarios
    CROSS JOIN libros ORDER BY libros.titulo ASC;

--The same below 

SELECT
    usuarios.username,
    usuarios.nombre,
    libros.titulo
FROM
    usuarios
    JOIN libros ORDER BY libros.titulo ASC;