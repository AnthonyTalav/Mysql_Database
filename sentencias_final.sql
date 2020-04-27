
drop database if exists libreria_cf;

create database if not exists libreria_cf;

use libreria_cf;

create table if not exists autores(
    autor_id int unsigned primary key auto_increment,
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    seudonimo varchar(50) unique,
    genero enum('M','F'),
    fecha_nacimiento date not null,
    pais_origen varchar(40) not null,
    fecha_creacion datetime default current_timestamp
);

create table if not exists libros(
    libro_id integer unsigned primary key auto_increment,
    autor_id int unsigned not null,
    titulo varchar(50) not null,
    descripcion varchar(50),
    paginas integer unsigned,
    fecha_publicacion date not null,
    fecha_creacion datetime default current_timestamp,
    foreign key(autor_id) references autores(autor_id)
);

insert into autores (nombre,apellido, seudonimo,fecha_nacimiento,genero,pais_origen)
values('Stephen Edwin','King','Richard Bachman','1947-09-27','m','USA'),
      ('Joane','Rowling','J.K Rowling','1947-09-27','F','Reino Unido');

insert into libros(autor_id,titulo,fecha_publicacion)
values(1,'Carrie','1974-01-01'),
      (1, 'El mistero de Salmes Lot','1975-01-01'),
      (1, 'El resplando','1977-01-01'),

      (2,'Harry Potter y la Piedra Filosfal','1997-06-30'),
      (2,'Harry Potter y la Camara Secreta','1978-07-2'),
      (2,'Harry Potter y el Prisionero de Azkaban','1999-07-8'),
      (2,'Harry Potter y el Caliz de Fuego','2000-03-20'),
      (2,'Harry Potter y la Orden del Fenix','2003-06-21'),
      (2,'Harry Potter y el Ministerio del Principe','2005-06-16'),
      (2,'Harry Potter y las Reliquias de la muerte','2007-07-21');

select*from autores;
select*from libros;