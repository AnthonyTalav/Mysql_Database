--LEFT JOIN & LEFT OUTER JOIN is the same 
--Con esta funcion podemos obtener lo registros de la interseccion de tablas o solo de la tabla A (primera)
--Cuando la relación es de muchos a muchos, se genera una nueva tabla
--Usuario=a,libro_usuarios=b
SELECT
    CONCAT(usuarios.nombre, " ", usuarios.apellidos),
    libro_usuarios.libro_id
FROM
    usuarios
    LEFT JOIN libro_usuarios ON usuarios.usuario_id = libro_usuarios.usuario_id
WHERE
    libro_usuarios.libro_id IS NOT NULL;