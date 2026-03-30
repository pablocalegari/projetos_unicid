CREATE database biblioteca_municipal;
USE biblioteca_municipal;
-- criação da biblioteca

-- criação da tabela livros
CREATE TABLE livros(
id INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR (100),
autor VARCHAR (100),
data_aquisicao DATE
);


-- alteração na tabela por conta da quantidade de caracteres
ALTER TABLE livros
MODIFY titulo VARCHAR(150);


-- inserindo os livros da biblioteca
INSERT INTO livros (titulo, autor, data_aquisicao) VALUES
('Dom Casmurro', 'Machado de Assis', '2023-05-10'),
('O Cortiço', 'Aluísio Azevedo', '2023-06-15'),
('Memórias Póstumas de Brás Cubas', 'Machado de Assis', '2023-07-20'),
('Capitães da Areia', 'Jorge Amado', '2023-08-05'),
('Vidas Secas', 'Graciliano Ramos', '2023-09-12'),
('Iracema', 'José de Alencar', '2023-10-01'),
('Senhora', 'José de Alencar', '2023-10-15'),
('A Hora da Estrela', 'Clarice Lispector', '2023-11-03'),
('Grande Sertão: Veredas', 'João Guimarães Rosa', '2023-11-20'),
('O Alienista', 'Machado de Assis', '2023-12-01');


-- visualizar a tabela
SELECT * from livros;


-- inserindo o livro non do PP
INSERT INTO Livros (titulo, autor, data_aquisicao)
VALUES ('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', '1943-09-22');


-- Inserindo o ivro novo do 1984
INSERT INTO Livros (titulo, autor, data_aquisicao)
VALUES ('1984', 'George Orwel', '2026-03-30');


-- alterando a data de aquisição pois coloquei errado
UPDATE livros
SET data_aquisicao = '2026-03-29'
WHERE id = 11; 


-- arrumando o nome do autor
UPDATE livros
SET autor = 'George Orwell'
WHERE id =12;

-- eliminando o PP da tabela
DELETE FROM livros
WHERE id = 11;
