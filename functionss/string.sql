--Para unir valores strings

SELECT CONCAT (nombre,apellido) AS "Nombre y apellidos" FROM autores;

--Mide la longitud de la variable string

SELECT * FROM autores WHERE LENGTH (nombre) > 7;

--Upper para cambiar a mayúscula
--Lower para cambiar a minúscula

SELECT UPPER(nombre), LOWER(nombre) FROM autores;

--Se elimina sufijos y prefijos, o espacios de un string

SELECT TRIM("     HOLA     "); --Este eliminará los especios dados al principo y al final de una palabra o cadena de texto

--Funcion left y right

SELECT LEFT ("Esto es una cadena de texto",5) AS "Substring izquierdo", 
       RIGHT ("Esto es una cadena de texto",10) AS "Substring derecho";

 SELECT * FROM libros WHERE LEFT(titulo,12) = "Harry Potter";
 SELECT * FROM libros WHERE RIGHT(titulo,6) = "Anillo";   