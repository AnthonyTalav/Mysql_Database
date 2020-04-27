--Sirve para condicionar sentencias en el cual podamos tener un error, en el mejor de los casos
--traemos un archivo sql mediante source archivo.sql y para que no nos bote un error
--creamos una condicional

--Eliminamos la base de datos si o solo sí exista y no nos de un error
drop database if exists libreria_cf;

create database if not exists libreria_cf;

create table if not exists autores (
    argumentos
);