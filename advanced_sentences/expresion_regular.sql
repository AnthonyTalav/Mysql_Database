--Podemos unir para tener una lista de sentencias con string: 

SELECT titulo FROM libros WHERE titulo LIKE 'H%'OR titulo LIKE 'L%';

SELECT titulo FROM libros WHERE LEFT(titulo,1) = 'H' OR LEFT(titulo,1) = 'L';

--Para poder tener una lista más amplia, se reescribiría de la siguiente manera:

SELECT titulo FROM libros WHERE titulo REGEXP '^[HLAVTZ]'; --Se listaras todas los libres que empuecen con las letras dentro