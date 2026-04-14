CREATE DATABASE IF NOT EXISTS hospital_db;
USE hospital_db;
-- DDL: Criando as tabelas (A Estrutura)
CREATE TABLE Medicos (
id_medico INT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
especialidade VARCHAR(50)
);
CREATE TABLE Pacientes (
id_paciente INT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
data_nascimento DATE
);
-- Entidade Associativa para resolver o relacionamento n:n
CREATE TABLE Consultas (
id_consulta INT PRIMARY KEY AUTO_INCREMENT,
id_medico INT,
id_paciente INT,
data_hora DATETIME,
valor_consulta DECIMAL(10,2),
CONSTRAINT fk_medico FOREIGN KEY (id_medico) REFERENCES Medicos(id_medico),
CONSTRAINT fk_paciente FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente)
);
-- DML: Populando dados para os exercícios
INSERT INTO Medicos VALUES (1, 'Dr. Arnaldo', 'Cardiologia'), (2, 'Dra. Beatriz', 'Pediatria'), (3, 'Dr. Carlos',
'Cardiologia');
INSERT INTO Pacientes VALUES (101, 'Ana Silva', '1990-05-15'), (102, 'Bruno Costa', '2012-10-20'), (103,
'Carla Souza', '1985-12-01');
INSERT INTO Consultas (id_medico, id_paciente, data_hora, valor_consulta) VALUES
(1, 101, '2026-04-10 10:00:00', 300.00),
(1, 103, '2026-04-11 14:00:00', 250.00),
(2, 102, '2026-04-12 09:00:00', 200.00),
(3, 101, '2026-04-13 11:00:00', 350.00)

-- 1 adição de coluna--
ALTER TABLE Medicos ADD COLUMN crm VARCHAR(20);

SELECT * FROM Medicos;

-- 2 Mudança do nome -- 
UPDATE Pacientes 
SET  nome = 'Bruno Ferreira'
WHERE id_paciente  = 102;

-- 3 seleção dos nãos pediatras --
SELECT nome, especialidade 
FROM Medicos 
WHERE especialidade <> 'Pediatria';

-- 4 Listar pacientes por ordem alfabetica ascendente --
 SELECT * FROM Pacientes 
ORDER BY nome;

-- 5 Exibição das consultas -- 
SELECT M.nome AS Medico, P.nome AS Paciente, C.data_hora
FROM Consultas C
INNER JOIN Medicos M ON C.id_medico = M.id_medico
INNER JOIN Pacientes P ON C.id_paciente = P.id_paciente;

-- 6 Listagem dos médicos -- 
SELECT M.nome, C.data_hora
FROM Medicos M
LEFT JOIN Consultas C ON M.id_medico = C.id_medico;

-- 7 faturamento total --
SELECT SUM(valor_consulta) AS total_faturado, 
       COUNT(*) AS total_consultas
FROM Consultas;

-- 8  listagem de faturamento +400.000 --
SELECT M.especialidade, SUM(C.valor_consulta) AS faturamento
FROM Consultas C
INNER JOIN Medicos M ON C.id_medico = M.id_medico
GROUP BY M.especialidade
HAVING faturamento > 400.00;

-- 9 Consultar maior que a média das consultas --
SELECT * FROM Consultas 
WHERE valor_consulta > (SELECT AVG(valor_consulta) FROM Consultas);


-- 10 criação da View -- 
CREATE VIEW v_resumo_atendimento AS
SELECT M.nome AS medico, COUNT(DISTINCT C.id_paciente) AS total_pacientes
FROM Medicos M
LEFT JOIN Consultas C ON M.id_medico = C.id_medico
GROUP BY M.nome;

SELECT * FROM v_resumo_atendimento;
