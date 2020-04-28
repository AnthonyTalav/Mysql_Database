--Para eliminar campos de la tabla
alter table libros drop column stock;

--Eliminar la llave foranea grupo_id de la tabla usuarios.

ALTER TABLE usuarios DROP FOREIGN KEY grupo_id;