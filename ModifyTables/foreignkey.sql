--Agregar una llave foranea a la tabla usuarios, con referencia a la tabla grupos.

ALTER TABLE usuarios ADD FOREIGN KEY(grupo_id) REFERENCES grupos(grupo_id);