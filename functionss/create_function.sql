--Delimina // como fin de una sentenciam, luego se restaura al ;

DELIMITER //

CREATE FUNCTION agregar_dias(fecha DATE,dias INT)
RETURNS DATE
BEGIN
    RETURN fecha + INTERVAL dias DAY;
END//

DELIMITER ;

--Llamar a la funcion con select

