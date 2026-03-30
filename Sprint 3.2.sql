/*Contexto: Vocês foram contratados como Analistas de Dados da TechMinds, uma startup em rápido
crescimento. O primeiro desafio de vocês é estruturar o banco de dados do RH para gerenciar os
colaboradores, seus departamentos e salários, além de extrair relatórios estratégicos para a diretoria*/


CREATE DATABASE TechMinds;
USE TechMinds;



CREATE TABLE colaboradores(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    departamento VARCHAR(50),
    salario INT,
    data_contrato DATE);


INSERT INTO colaboradores (nome, email, departamento, salario, data_contrato) VALUES
('José Bezerra', 'ana.silva@gmail.com', 'marketing', 4500, '2023-01-15'),
('Liliam Liosa', 'bruno.c@gmail.com', 'desenvolvimento', 7200, '2023-03-20'),
('Carla Caramelo', 'carla.s@gmail.com', 'vendas', 3800, '2023-05-10'),
('Diego Diastase', 'diego.m@gmail.com', 'desenvolvimento', 8100, '2023-06-01'),
('Rubens Ruinas', 'roberto.r@gmail.com', 'marketing', 4900, '2023-08-12'),
('Mariana Ester', 'Mari.l@gmail.com', 'vendas', 4100, '2023-11-25');


SELECT nome,email
FROM colaboradores
WHERE salario > 6000;


UPDATE colaboradores
SET salario=6000
WHERE id=5;

DELETE FROM colaboradores
WHERE id = 6;


COUNT(*) AS total_colaboradores,
    AVG(salario) AS media_salario
 FROM colaboradores;


 SELECT 
    departamento, 
    COUNT(*) AS quantidade_colaboradores
FROM colaboradores
GROUP BY departamento;


SELECT 
    departamento, 
    MAX(salario) AS maior_salario, 
    MIN(salario) AS menor_salario
FROM colaboradores
GROUP BY departamento;


SELECT 
    departamento, 
    SUM(salario) AS custo_total_folha
FROM colaboradores
WHERE data_contrato <= '2023-12-31'
GROUP BY departamento
HAVING SUM(salario) > 10000;
