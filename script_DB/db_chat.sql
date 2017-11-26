/*Crea Base de Datos con el nombre db_chat*/
CREATE DATABASE db_chat
CHARACTER SET utf8
COLLATE utf8_general_ci;

USE db_chat;

/*TABLA USUARIO*/
CREATE TABLE usuario( 
idUsuario INT NOT NULL AUTO_INCREMENT, 
username varchar(10) NOT NULL UNIQUE, 
password varchar(20) NOT NULL,
PRIMARY KEY (idUsuario)); 

/*TABLA SALA*/
CREATE TABLE sala( 
idSala INT NOT NULL AUTO_INCREMENT, 
nombreSala varchar(30) NOT NULL UNIQUE, 
PRIMARY KEY (idSala)); 

/*TABLA TEMA*/
CREATE TABLE tema( 
idTema INT NOT NULL AUTO_INCREMENT,
descripcionTema LONGTEXT NOT NULL,
imagenTema LONGBLOB,
idSala INT NOT NULL,
idUsuario INT NOT NULL,
PRIMARY KEY (idTema)); 

/*TABLA COMENTARIO*/
CREATE TABLE comentario( 
idComentario INT NOT NULL AUTO_INCREMENT,
descripcionComentario LONGTEXT NOT NULL,
imagenComentario LONGBLOB,
idUsuario INT NOT NULL,
idTema INT NOT NULL,
PRIMARY KEY (idComentario));

/*CLAVE FORANEA USUARIO EN TEMA*/
ALTER TABLE tema
ADD CONSTRAINT FK_idUsuario
FOREIGN KEY (idUsuario)
REFERENCES usuario(idUsuario);

/*CLAVE FORANEA SALA EN TEMA*/
ALTER TABLE tema
ADD CONSTRAINT FK_idSala
FOREIGN KEY (idSala)
REFERENCES sala(idSala);

/*CLAVE FORANEA TEMA EN COMENTARIO*/
ALTER TABLE comentario
ADD CONSTRAINT FK_idTema
FOREIGN KEY (idTema)
REFERENCES tema(idTema);

/*CLAVE FORANEA USUARIO EN COMENTARIO*/
ALTER TABLE comentario
ADD CONSTRAINT FK_idUsuarioComentario
FOREIGN KEY (idUsuario)
REFERENCES usuario(idUsuario);


