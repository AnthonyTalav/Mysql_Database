/*Qué tipo de identidades
Nombre: Autores*/

Nombre
Genero
Fecha de nacimiento
País de Origen

Columna y el tipo de dato

autor_id int
nombre varchar(25) tipo de string
apellido varchar(25)
genero char(1) --M o F
fecha de nacimiento date
pais de origen varchar(40)

create table autores(
    autor_id int,
    nombre varchar(25),
    apellido varchar(25),
    genero char(1),
    fecha_nacimiento date,
    pais_origen varchar(40)
    
);