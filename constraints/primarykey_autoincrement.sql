--La creación de llaves primarias sirve para que no haya identides iguales y se puedan diferencias para esto
--utizamos "primary key" que por defecto contiene que no puede ser nulo y tiene que ser único 
--utilizamos "auto_increment" para que los valores aumenten 

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

--Como utiizamos el auto_increment ya no sería necesario poner el campo en el insert

insert into autores (nombre,apellido, seudonimo,fecha_nacimiento,genero,pais_origen)
values('Stephen Edwin','King','Richard Bachman','1947-09-27','m','USA'),
      ('Joane','Rowling','J.K Rowling','1947-09-27','F','Reino Unido');

--Otra forma de crear el primary key

create table if not exists autores(
    autor_id int unsigned auto_increment,
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    seudonimo varchar(50) unique,
    genero enum('M','F'),
    fecha_nacimiento date not null,
    pais_origen varchar(40) not null,
    fecha_creacion datetime default current_timestamp,
    primary key (autor_id)
);
+


