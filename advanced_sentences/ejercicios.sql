/*Obtener todos los libros escritos por autores que cuenten con un seudónimo.*/
SELECT
    titulo
FROM
    libros
WHERE
    autor_id IN(
        SELECT
            autor_id
        FROM
            autores
        WHERE
            seudonimo IS NOT NULL
    );

/*Obtener el título de todos los libros publicados en el año actual cuyos autores poseen un pseudónimo.*/
SELECT
    titulo
FROM
    libros
WHERE
    fecha_publicacion = YEAR(NOW())
    AND autor_id IN(
        SELECT
            autor_id
        FROM
            autores
        WHERE
            seudonimo IS NOT NULL
    );

/*Obtener todos los libros escritos por autores que cuenten con un seudónimo y que hayan nacido ante de 1965.*/
SELECT
    *
FROM
    libros
WHERE
    autor_id IN (
        SELECT
            autor_id
        FROM
            autores
        WHERE
            seudonimo IS NOT NULL
            AND fecha_nacimiento < '1965-01-01'
    );

/*Colocar el mensaje no disponible a la columna descripción, en todos los libros publicados antes del año 2000.*/
UPDATE
    libros
SET
    descripcion = 'No disponible'
WHERE
    fecha_publicacion < '2000-01-01';

/*Obtener la llave primaria de todos los libros cuya descripción sea diferente de no disponible.*/
SELECT
    libro_id
FROM
    libros
WHERE
    descripcion = 'No disponible';

/*Obtener el título de los últimos 3 libros escritos por el autor con id 2.*/
SELECT
    titulo
FROM
    libros
WHERE
    autor_id = 2
ORDER BY
    fecha_publicacion DESC
LIMIT
    0, 3;

/*Obtener en un mismo resultado la cantidad de libros escritos por autores con seudónimo y sin seudónimo.*/
SELECT
    COUNT(autor_id)
FROM
    autores
WHERE
    seudonimo IS NOT NULL;

SELECT
    (
        SELECT
            COUNT(libro_id)
        FROM
            libros
        WHERE
            autor_id IN (
                SELECT
                    autor_id
                FROM
                    autores
                WHERE
                    seudonimo IS NOT NULL
            )
    ) AS "CON SEUDONIMO",
    (
        SELECT
            COUNT(libro_id)
        FROM
            libros
        WHERE
            autor_id IN (
                SELECT
                    autor_id
                FROM
                    autores
                WHERE
                    seudonimo IS NULL
            )
    ) AS "SIN SEUDONIMO";

/*Obtener la cantidad de libros publicados entre enero del año 2000 y enero del año 2005.*/
SELECT
    COUNT(*)
FROM
    libros
WHERE
    fecha_publicacion BETWEEN '2000-01-01'
    AND '2005-01-31';

/*Obtener el título y el número de ventas de los cinco libros más vendidos.*/
SELECT
    titulo,
    ventas
FROM
    libros
ORDER BY
    ventas DESC
LIMIT
    5;

/*Obtener el título y el número de ventas de los cinco libros más vendidos de la última década.*/
SELECT
    titulo,
    ventas,
    fecha_publicacion
FROM
    libros
WHERE
    fecha_publicacion > CURDATE() - INTERVAL 10 YEAR;

/*Obtener la cantidad de libros vendidos por los autores con id 1, 2 y 3.*/
SELECT
    autor_id,
    SUM(ventas)
FROM
    libros
WHERE
    autor_id BETWEEN 1
    AND 3
GROUP BY
    autor_id;

/*Obtener el título del libro con más páginas.*/
SELECT
    titulo
FROM
    libros
ORDER BY
    paginas DESC
LIMIT
    1;

/*Obtener todos los libros cuyo título comience con la palabra “La”.*/
SELECT
    *
FROM
    libros
WHERE
    titulo LIKE "La%";

/*Obtener todos los libros cuyo título comience con la palabra “La” y termine con la letra “a”.*/
SELECT
    *
FROM
    libros
WHERE
    titulo LIKE "%La%a";

/*Establecer el stock en cero a todos los libros publicados antes del año de 1995*/
UPDATE
    libros
SET
    stock = 0
WHERE
    fecha_publicacion < '1995-01-01';

/*Mostrar el mensaje Disponible si el libro con id 1 posee más de 5 ejemplares en stock, en caso contrario mostrar el 
 mensaje No disponible.*/
SELECT
    IF(
        EXISTS(
            SELECT
                *
            FROM
                libros
            WHERE
                libro_id = 1
                AND stock > 5
        ),
        'Disponible',
        'No disponible'
    ) AS Mensaje;

/*Obtener el título los libros ordenador por fecha de publicación del más reciente al más viejo.*/
SELECT
    titulo,
    fecha_publicacion --Para comprobar
FROM
    libros
ORDER BY
    fecha_publicacion DESC;

/*Obtener el nombre de los autores cuya fecha de nacimiento sea posterior a 1950*/
SELECT
    nombre
FROM
    autores
WHERE
    fecha_nacimiento > '1950-12-31';

/*Obtener la el nombre completo y la edad de todos los autores.*/
SELECT
    CONCAT(nombre, " ", apellido) AS "Nombre completo",
    (YEAR(CURDATE()) - YEAR(fecha_nacimiento)) as Edad
FROM
    autores;

/*Obtener el nombre completo de todos los autores cuyo último libro publicado sea posterior al 2005*/
SELECT
    CONCAT(nombre, " ", apellido) AS "nombre_completo"
FROM
    autores
WHERE
    autor_id IN(
        SELECT
            autor_id
        FROM
            libros
        WHERE
            fecha_publicacion > '2005-12-31'
    );

/*Obtener el id de todos los escritores cuyas ventas en sus libros superen el promedio.*/
SELECT
    autor_id,
    nombre
FROM
    autores
WHERE
    autor_id IN(
        SELECT
            autor_id
        FROM
            libros
        WHERE
            ventas > (
                SELECT
                    AVG(ventas)
                FROM
                    libros
            )
    );

/*Obtener el id de todos los escritores cuyas ventas en sus libros sean mayores a cien mil ejemplares.*/
SELECT
    autor_id
FROM
    autores
WHERE
    autor_id IN(
        SELECT
            autor_id
        FROM
            libros
        GROUP BY
            autor_id
        HAVING
            SUM(ventas) > 1000
    );

/*Crear una función la cual nos permita saber si un libro es candidato a préstamo o no. Retornar “Disponible” 
si el libro posee por lo menos un ejemplar en stock, en caso contrario retornar “No disponible.”*/

DELIMITER //

CREATE FUNCTION disponibilidad(libro INT)
RETURNS VARCHAR(20)
BEGIN
    SET @mensaje= (SELECT IF(EXISTS(SELECT stock FROM libros WHERE libro_id=libro AND stock>=1),'Disponible','No disponible') AS Mensaje);
    RETURN @mensaje;
END//

DELIMITER ;