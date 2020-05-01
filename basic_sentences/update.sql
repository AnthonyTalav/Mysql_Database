--Actualizar
--Aplica a todos porque no se utilizó un WHERE
UPDATE libros SET descripcion = "Nueva descripcion" , ventas = 100;

--Con WHERE

UPDATE libros SET descripcion = "Nuevo cambio", ventas=50 WHERE libro_id = 41;