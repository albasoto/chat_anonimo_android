/*Crea Base de Datos con el nombre db_chat*/
CREATE DATABASE db_chat
CHARACTER SET utf8
COLLATE utf8_general_ci;

USE db_chat;


/*TABLA USUARIO*/
CREATE TABLE usuario( 
id INT NOT NULL AUTO_INCREMENT, 
username varchar(10) NOT NULL UNIQUE, 
password varchar(20) NOT NULL,
PRIMARY KEY (id)); 

/*TABLA SALA*/
CREATE TABLE tipoTema( 
id INT NOT NULL AUTO_INCREMENT, 
nombre varchar(30) NOT NULL UNIQUE, 
PRIMARY KEY (id)); 

/*TABLA TEMA*/
CREATE TABLE tema( 
id INT NOT NULL AUTO_INCREMENT,
descripcion varchar(140) NOT NULL,
imagen LONGBLOB,
tipoTema INT NOT NULL,
Usuario INT NOT NULL,
PRIMARY KEY (id)); 

/*TABLA COMENTARIO*/
CREATE TABLE mensaje( 
id INT NOT NULL AUTO_INCREMENT,
descripcion LONGTEXT NOT NULL,
imagen LONGBLOB,
Usuario INT NOT NULL,
Tema INT NOT NULL,
PRIMARY KEY (id));

/*CLAVE FORANEA USUARIO EN TEMA*/
ALTER TABLE tema
ADD CONSTRAINT FK_idUsuario
FOREIGN KEY (Usuario)
REFERENCES usuario(id);

/*CLAVE FORANEA SALA EN TEMA*/
ALTER TABLE tema
ADD CONSTRAINT FK_tipoTema
FOREIGN KEY (tipoTema)
REFERENCES tipoTema(id);

/*CLAVE FORANEA TEMA EN COMENTARIO*/
ALTER TABLE mensaje
ADD CONSTRAINT FK_idTema
FOREIGN KEY (Tema)
REFERENCES tema(id);

/*CLAVE FORANEA USUARIO EN COMENTARIO*/
ALTER TABLE mensaje
ADD CONSTRAINT FK_UsuarioMensaje
FOREIGN KEY (Usuario)
REFERENCES usuario(id);


