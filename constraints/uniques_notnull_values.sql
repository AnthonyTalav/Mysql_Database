--Para evitar valores nullos
--Se pone al final de cada campo "not null" para especificar que no puede ser nulo

--Para evitar valores repetidos
--Se pone al final de cada campo "unique" para especificar que es un valor único

--Se puede juntar not null and unique si asi lo requiere el proyecto


create table if not exists autores(
    autor_id int not null,
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    seudonimo varchar(50) unique,
    genero char(1) not null,
    fecha_nacimiento date not null,
    pais_origen varchar(40) not null
);