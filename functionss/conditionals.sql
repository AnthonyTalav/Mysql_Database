--Funcionas con condicional IF, admite 3 parámeotrs, el primero la sentencia a cumplir, el segundo si es verdadero y el
--tercero si es falso

SELECT IF (10>9;"El primer número es mayor","El segundo es mayor");

--Funcion IFNULL si este es nulo y al final el resultado (2do parámetro)

SELECT IFNULL (seudonimo,"El autor no cuenta con seudonimo") FROM autores;
