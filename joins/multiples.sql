--Obtenenr el nombre completo de los usuarios que hayan pedido prestado libro y el libro que haya sido escrito por un autor con seudonimo y que 
--haya sido prestado hoy
SELECT
    DISTINCT CONCAT(usuarios.nombre, " ", usuarios.apellidos),
    libros.titulo,
    autores.nombre,
    autores.seudonimo
FROM
    usuarios
    INNER JOIN libro_usuarios ON usuarios.usuario_id = libro_usuarios.usuario_id
    AND DATE(libro_usuarios.fecha_creacion) = CURDATE()
    INNER JOIN libros ON libro_usuarios.libro_id = libros.libro_id
    INNER JOIN autores ON libros.autor_id = autores.autor_id
WHERE
    autores.seudonimo IS NULL;