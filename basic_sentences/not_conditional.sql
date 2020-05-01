--Para valores null no se les puede tomar como variable, significa: 

SELECT * FROM autores WHERE seudonimo != / <> NULL; -- Es erróneo porque Null no es un valor

--La correcta sentencia es:

SELECT * FROM autores WHERE seudonimo IS NOT NULL --It's correct!! Tambien se puede utilizar <=>