
drop database if exists libreria_cf;

create database if not exists libreria_cf;

use libreria_cf;

create table if not exists autores(
    autor_id int not null,
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    seudonimo varchar(50) unique,
    genero char(1) not null,
    fecha_nacimiento date not null,
    pais_origen varchar(40) not null
);

insert into autores (autor_id,nombre,apellido,genero,fecha_nacimiento,pais_origen)
values  (1,'Codi','Codi','M','2018-01-01','Mexico'),
        (2,'Codi','Codi','M','2018-01-01','Mexico'),
        (3,'Codi','Codi','M','2018-01-01','Mexico'),
        (4,'Codi','Codi','M','2018-01-01','Mexico'),
        (5,'Codi','Codi','M','2018-01-01','Mexico');

insert into autores (autor_id,nombre,apellido, seudonimo,fecha_nacimiento,genero,pais_origen)
values(10,'Stephen Edwin','King','Richard Bachman','1947-09-27','M','USA');

select*from autores;