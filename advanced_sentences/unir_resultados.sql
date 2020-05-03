--Para unir resultados se utiliza UNION

SELECT CONCAT(nombre," ", apellido) AS "Nombre completo", " " AS Email FROM autores
UNION
SELECT CONCAT(nombre," ", apellidos) AS "Nombre", email AS email FROM usuarios;