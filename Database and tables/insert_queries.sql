insert into (campos)
values(registros separados por , y si es string entre '')

--Para ver los registros
select*from nombre_tabla;

--Se puede insertar o no a los campos que pueden ser nulos, esto se puede especificar
--creando el campo "is not null", los campos no nullos tienen que ser llenados!

--Para insertar múltiples para un table
insert into (campos)
values(registros),
values(registros),
values(n registros);
