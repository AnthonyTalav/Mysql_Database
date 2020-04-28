--Modificar la tabla para agregar un campo

alter table libros add ventas int unsigned not null;
alter table libros add stock int unsigned default 10;
ALTER TABLE usuarios ADD email VARCHAR(50);

--Agregar a la tabla usuarios, la columna email, validando su valor único.
ALTER TABLE tabla ADD columna VARCHAR(50) UNIQUE;
