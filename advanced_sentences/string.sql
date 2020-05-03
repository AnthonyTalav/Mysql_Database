--Para buscar substring

--Utilizar si la palabra está al comienzo

SELECT * FROM libros WHERE titulo LIKE "Harry Potter %";

--Si la palabra está al final

SELECT * FROM libros WHERE titulo LIKE "%anillo";

--Si la palabra no se sabe en donde está, tambien depende de los espacios

SELECT * FROM libros WHERE titulo LIKE "% la %";

--Cantidad de caracteres o buscar caracteres en números exactos

SELECT * FROM libros WHERE titulo LIKE "__b__"; --Limita caracteres

SELECT * FROM libros WHERE titulo LIKE "_a%";--No limita caracteres

SELECT * FROM libros WHERE titulo LIKE "_a_o%";
