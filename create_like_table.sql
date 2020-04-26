create table autores(
    autor_id int,
    nombre varchar(25),
    apellido varchar(25),
    genero char(1),
    fecha_nacimiento date,
    pais_origen varchar(40)   
);

--Para crear una tabla de otra y ésta solo copiará los campos más no registros
create usuarios like autores;
