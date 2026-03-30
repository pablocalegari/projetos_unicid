CREATE DATABASE techforge;
USE techforge;
-- criação do BD

-- criação da tabela
CREATE TABLE projetos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    linguagem VARCHAR(50),
    orcamento DECIMAL(10, 2),
    data_inicio DATE
);


-- incluindo projetos
INSERT INTO projetos (nome, linguagem, orcamento, data_inicio) VALUES 
('Motor de Física', 'C++', 15000.00, '2026-01-15'),
('Dashboard de Análises Análiticas', 'Python', 25000.00, '2026-02-01'),
('Otimização de Consultas', 'SQL', 12000.00, '2026-02-10'),
('Simulador de Simulados', 'C++', 30000.00, '2026-03-01'),
('Automação de Automáticos', 'Python', 8000.00, '2026-03-15');


-- Vendo o nome e orçamento só de projetos em C++
SELECT nome, orcamento 
FROM projetos 
WHERE linguagem = 'C++';


-- Atualização do projeto Motor de Física
UPDATE projetos 
SET orcamento = 18000.00 
WHERE id = 1;

-- Deletando o projeto cancelado pela diretoria
DELETE FROM projetos 
WHERE id = 3;


-- consulta da quantidade de projetos ativos e a média
SELECT COUNT(*) AS total_projetos, AVG(orcamento) AS media_orcamentos 
FROM projetos;

-- Agrupamento de dados
SELECT linguagem, COUNT(*) AS quantidade_projetos 
FROM projetos 
GROUP BY linguagem;


-- Filtrando grupos
SELECT linguagem, SUM(orcamento) AS soma_total 
FROM projetos 
GROUP BY linguagem 
HAVING SUM(orcamento) > 20000.00;


-- mostra o orçamento decrescente
SELECT nome, orcamento 
FROM projetos 
ORDER BY orcamento DESC;
