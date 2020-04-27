--Para obtener la fecha exacta podemos utilizar
--current_timestamp or now()

create table if not exists autores(
    autor_id int not null,
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    seudonimo varchar(50) unique,
    genero char(1) not null,
    fecha_nacimiento date not null,
    pais_origen varchar(40) not null,
    fecha_creacion datetime default current_timestamp
);