SELECT
    AVG(ventas)
FROM
    libros;

--303.2727
SET
    @promedio = (
        SELECT
            AVG(ventas)
        FROM
            libros
    );

SELECT
    autor_id
FROM
    libros
GROUP BY
    autor_id
HAVING
    SUM(ventas) > @promedio;

--La mejor manera para hacer subconsulta
SELECT
    autor_id
FROM
    libros
GROUP BY
    autor_id
HAVING
    SUM(ventas) > (
        SELECT
            AVG(ventas)
        FROM
            libros
    );

--Other way

--Nombre y apellidos de autores que tengan una venta mayor al promedio


SELECT
    CONCAT(nombre, " ", apellido)
FROM
    autores
WHERE
    autor_id IN (
        SELECT
            autor_id
        FROM
            libros
        GROUP BY
            autor_id
        HAVING
            SUM(ventas) >(
                SELECT
                    AVG(ventas)
                FROM
                    libros
            )
    );