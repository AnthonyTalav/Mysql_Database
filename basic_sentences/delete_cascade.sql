--Para eliminar registros que tienen llaves foráneas, para poder obtener una eliminación limpia, se le pone ON DELETE CASCADE

create table if not exists libros(
    libro_id integer unsigned primary key auto_increment,
    autor_id int unsigned not null,
    titulo varchar(50) not null,
    descripcion varchar(50),
    paginas integer unsigned,
    fecha_publicacion date not null,
    fecha_creacion datetime default current_timestamp,
    foreign key(autor_id) references autores(autor_id) ON DELETE CASCADE --Se podrá eliminar 
);

--Other way

ALTER TABLE libros ADD FOREIGN KEY (autor_id) REFERENCES autores(autor_id) ON DELETE CASCADE;
