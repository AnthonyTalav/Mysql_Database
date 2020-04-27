--Para referenciar a una llave foránea se utiliza la palabra reference
--En este caso primero se crea la llave foránea en un campo y luego se utiliza foreign key para asignarla como tal
--y referenciamos con la palabra "reference"

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
    autor_id int unsigned not null, --Campo creado de la llave foránea
    titulo varchar(50) not null,
    descripcion varchar(50),
    paginas integer unsigned,
    fecha_publicacion date not null,
    fecha_creacion datetime default current_timestamp,
    foreign key(autor_id) references autores(autor_id) --Referencia hacia la tabla 
);