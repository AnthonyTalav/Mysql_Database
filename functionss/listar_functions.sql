--Solo para listar functions

SELECT name FROM mysql.proc WHERE db = DATABASE() AND type ='FUNCTION';

--Eliminar functions

DROP FUNCTION nombre_de_la_funcion