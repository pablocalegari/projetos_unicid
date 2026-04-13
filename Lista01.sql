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
