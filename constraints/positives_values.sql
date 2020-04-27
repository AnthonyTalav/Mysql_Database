--Para solo poder agregar numeros positivos se agrega unsigned

create table if not exists autores(
    autor_id int unsigned not null, --No permitirá campos negativos
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    seudonimo varchar(50) unique,
    genero char(1) not null,
    fecha_nacimiento date not null,
    pais_origen varchar(40) not null,
    fecha_creacion datetime default current_timestamp
);