CREATE database biblioteca_municipal;
USE biblioteca_municipal;

CREATE TABLE livros(
id INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR (100),
autor VARCHAR (100),
data_aquisicao DATE
);

ALTER TABLE livros
MODIFY titulo VARCHAR(150);

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

SELECT * from livros;

SELECT titulo, autor
FROM livros
WHERE data_aquisicao > '2023-01-01' ;

UPDATE livros
SET autor = 'Machado de Assis (Edição Revisada)'
WHERE id =1;

DELETE FROM livros
WHERE id = 5;
