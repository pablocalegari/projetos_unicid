CREATE DATABASE conecta_plus;
USE conecta_plus;

CREATE TABLE users(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (50),
email VARCHAR (100),
date_of_birth DATE,
phone VARCHAR (30),
country VARCHAR (50)
);

ALTER TABLE users
MODIFY phone VARCHAR(20);

INSERT INTO users (nome, email, date_of_birth, phone, country) VALUES
('João Silva', 'joao.silva@email.com', '1995-04-12', 11987654321, 'Brasil'),
('Maria Oliveira', 'maria.oliveira@email.com', '1998-09-23', 11976543211, 'Brasil'),
('Carlos Souza', 'carlos.souza@email.com', '1992-01-30', 11899887766, 'Brasil'),
('Ana Costa', 'ana.costa@email.com', '2000-07-15', 11933445566, 'Brasil'),
('Pedro Santos', 'pedro.santos@email.com', '1997-11-08', 11922334455, 'Brasil'),
('Juliana Lima', 'juliana.lima@email.com', '1996-05-19', 11988776655, 'Brasil'),
('Lucas Pereira', 'lucas.pereira@email.com', '1999-12-02', 11977665544, 'Brasil'),
('Fernanda Alves', 'fernanda.alves@email.com', '1993-03-27', 11966554433, 'Brasil'),
('Rafael Gomes', 'rafael.gomes@email.com', '1994-08-10', 11955443322, 'Brasil'),
('Camila Ribeiro', 'camila.ribeiro@email.com', '2001-02-14', 11944332211, 'Brasil'),
('Bruno Martins', 'bruno.martins@email.com', '1990-06-21', 11933221100, 'Brasil'),
('Patricia Rocha', 'patricia.rocha@email.com', '1998-10-05', 11922110099, 'Brasil'),
('Daniel Carvalho', 'daniel.carvalho@email.com', '1995-09-18', 11911009988, 'Brasil'),
('Larissa Fernandes', 'larissa.fernandes@email.com', '2002-04-25', 11900998877, 'Brasil'),
('Gustavo Teixeira', 'gustavo.teixeira@email.com', '1991-12-11', 11888776655, 'Brasil');


SELECT * FROM users;

 SELECT nome
 FROM users
 WHERE date_of_birth > '1990-01-01';

DELETE FROM users
WHERE id = 8;
