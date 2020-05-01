--Para funciones fecha

SET @now = NOW();

SELECT SECOND (@now), MINUTE (@now), HOUR(@now), MONTH(@now), YEAR(@now);

--Número de las fechas por días:

SELECT DAYOFWEEK(@now), DAYOFMONTH(@now), DAYOFYEAR(@now);

--Fecha sin hora

SELECT DATE(@now) --Por ahora la variable @now es current_timestamp

--Ejemplo a la base datos

SELECT * FROM libros WHERE DATE(fecha_creacion) = CURDATE();

--Sumar o restar fecha

SELECT @now + INTERVAL 30 day;