
drop database if exists libreria_cf;

create database if not exists libreria_cf;

use libreria_cf;

create table if not exists autores(
    autor_id int,
    nombre varchar(25),
    apellido varchar(25),
    genero char(1),
    fecha_nacimiento date,
    pais_origen varchar(40)
);

insert into autores (autor_id,nombre,genero,fecha_nacimiento,pais_origen)
values  (1,'Codi','M','2018-01-01','Mexico'),
        (1,'Codi','M','2018-01-01','Mexico'),
        (1,'Codi','M','2018-01-01','Mexico'),
        (1,'Codi','M','2018-01-01','Mexico'),
        (1,'Codi','M','2018-01-01','Mexico');

select*from autores;