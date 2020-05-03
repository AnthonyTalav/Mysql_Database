--Sentencia si existe y dar un mensaje: 
SELECT
    IF(
        EXISTS(
            SELECT
                libro_id
            FROM
                libros
            WHERE
                titulo = 'El hobbit'
        ),
        'Disponible',
        'No disponible'
    ) AS Mensaje;