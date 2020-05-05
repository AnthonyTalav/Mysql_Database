--RIGHT JOIN OR RIGHT OUTER JOIN
--Usuario=b,libro_usuarios=a

SELECT
    CONCAT(usuarios.nombre, " ", usuarios.apellidos),
    libro_usuarios.libro_id
FROM
    libro_usuarios
    RIGHT JOIN usuarios ON usuarios.usuario_id = libro_usuarios.usuario_id
WHERE
    libro_usuarios.libro_id IS NOT NULL;