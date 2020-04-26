--To create a table
create table autores(
    autor_id int,
    nombre varchar(25),
    apellido varchar(25),
    genero char(1),
    fecha_nacimiento date,
    pais_origen varchar(40)   
);

--Mostrar las tablas
show tables;

--Para ver la base de datos que estamos trabajando
show database()

--Para ver información de la tablas
--There 3 ways to do that
show columns from autores;
describe autores;
desc autores;
