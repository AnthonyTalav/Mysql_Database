--Sirve para unir 2 o más tablas, también podemos ponerle un alias para determinar de que tabla es o especifiacar el campo 
--con su respectiva tabla
--Cuando utilizamos ON podemos condicionar 
SELECT
    libros.titulo,
    CONCAT(autores.nombre, " ", autores.apellido) AS "Nombre completo",
    libros.fecha_creacion
FROM
    libros
    INNER JOIN autores ON libros.autor_id = autores.autor_id
    AND autores.seudonimo IS NOT NULL;

--Cuando utilizamos USING no se puede condicionar más valores pero se ahorra un poco de codigo:
SELECT
    libros.titulo,
    CONCAT(autores.nombre, " ", autores.apellido) AS "Nombre completo",
    libros.fecha_creacion
FROM
    libros
    INNER JOIN autores USING(autor_id);