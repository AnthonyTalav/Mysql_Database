--Enum sirve para determinar los valores que puede tener cierto campo

create table if not exists autores(
    autor_id int unsigned not null,
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    seudonimo varchar(50) unique,
    genero enum('M','F'), --Unicos valores que puede tomar es M o Fs
    fecha_nacimiento date not null,
    pais_origen varchar(40) not null,
    fecha_creacion datetime default current_timestamp
);