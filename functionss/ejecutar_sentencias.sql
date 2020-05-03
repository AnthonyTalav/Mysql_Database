DELIMITER //

CREATE FUNCTION obtener_paginas()
RETURNS INT
BEGIN
    SET @paginas = (SELECT (ROUND(RAND()*100)*4));
    RETURN @paginas;
END//

CREATE FUNCTION obtener_ventas()
RETURNS INT
BEGIN   
    SET @ventas = (SELECT (ROUND(RAND()*100)*6));
    RETURN @ventas;
END//

DELIMITER ;

UPDATE libros SET paginas = obtener_paginas();
UPDATE libros SET ventas = obtener_ventas();
