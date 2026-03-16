CREATE DATABASE meu_bd;
USE meu_bd;

 CREATE TABLE usuarios (
 id INT  PRIMARY KEY AUTO_INCREMENT,
 nome VARCHAR (50),
 email VARCHAR (100),
 data_nascimento DATE,
 numero INT
 );

 
 INSERT INTO usuarios (nome, email, data_nascimento, numero) VALUES ('Naruto Uzumaki' , 'hokage22@gmail.com' , '2000-12-23' , '40028922');
 INSERT INTO usuarios (nome, email, data_nascimento, numero) VALUES ('Sasuke Uchiha' , 'chidori@gmail.com' , '2000-12-23' , '6878654');
 INSERT INTO usuarios (nome, email, data_nascimento, numero) VALUES ('Sakura Haruno' , 'sasketeamo@gmail.com' , '2000-12-23' , '6456546');
 INSERT INTO usuarios (nome, email, data_nascimento, numero) VALUES ('Kakashi Hatake' , 'kakashi@gmail.com' , '1999-10-19' , '876678');
 INSERT INTO usuarios (nome, email, data_nascimento, numero) VALUES ('Madara Uchiha' , 'uchihinhagostoso@gmail.com' , '1889-12-12' , '87589887');
 INSERT INTO usuarios (nome, email, data_nascimento, numero) VALUES ('Orochimaru' , 'cobrinhasapeca@gmail.com' , '1778-12-23' , '1234123');
 
 
 SELECT nome, email
 FROM usuarios
 WHERE data_nascimento > '1990-01-01';
 
 UPDATE usuarios
 SET data_nascimento = '2000-11-27'
 WHERE id =1;
 
 SELECT * FROM usuarios;
 
 DELETE FROM usuarios
 WHERE id = 8;
