--Para evitar valores nullos
--Se pone al final de cada campo "not null" para especificar que no puede ser nulo

--Para evitar valores repetidos
--Se pone al final de cada campo "unique" para especificar que es un valor único

--Se puede juntar not null and unique si asi lo requiere el proyecto


create table if not exists autores(
    autor_id int not null, --Valores no nulos
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    seudonimo varchar(50) unique, --Valor único
    genero char(1) not null,
    fecha_nacimiento date not null,
    pais_origen varchar(40) not null
);

--Otra forma de crear un campo único es: 
--La palabra constraint es opcional pero se pone por temas de legibilidad

create table if not exists autores(
    autor_id int not null,
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    seudonimo varchar(50), --Creamos el campo
    genero char(1) not null,
    fecha_nacimiento date not null,
    pais_origen varchar(40) not null,
    constraint unique (seudonimo) --Hacemos único al campo
);

--Otra forma de crear campo único para varios valores:

create table if not exists autores(
    autor_id int not null, --Valores no nulos
    nombre varchar(25) not null unique,
    apellido varchar(25) not null unique,
    seudonimo varchar(50) unique, --Valor único
    genero char(1) not null,
    fecha_nacimiento date not null,
    pais_origen varchar(40) not null
);

--Se reescribiría de la siguiente forma

create table if not exists autores(
    autor_id int not null, --Valores no nulos
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    seudonimo varchar(50),
    genero char(1) not null,
    fecha_nacimiento date not null,
    pais_origen varchar(40) not null
    constraint unique_combinacion unique (nombre,apellido,seudonimo)
);