CREATE DATABASE empresa;
USE empresa;


CREATE TABLE Clientes (
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
cidade VARCHAR(50)
);

CREATE TABLE Produtos (
id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
preco DECIMAL(10,2),
estoque INT
);

CREATE TABLE Pedidos (
id_pedido INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
data_pedido DATE,
FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Itens_Pedido (
id_pedido INT,
id_produto INT,
quantidade INT,
FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

-- Inserção de Dados
INSERT INTO Clientes (nome, cidade) VALUES
('Carlos Silva', 'São Paulo'), ('Ana Paula', 'Rio de Janeiro'),
('Marcos Santos', 'São Paulo'), ('Fernanda Lima', 'Curitiba');
INSERT INTO Produtos (nome, preco, estoque) VALUES
('Notebook', 3500.00, 10), ('Mouse sem fio', 85.00, 50),
('Teclado Mecânico', 300.00, 5), ('Monitor 24"', 800.00, 8);
INSERT INTO Pedidos (id_cliente, data_pedido) VALUES
(1, '2026-04-10'), (2, '2026-04-12'), (1, '2026-04-15');
INSERT INTO Itens_Pedido (id_pedido, id_produto, quantidade) VALUES
(1, 1, 1), (1, 2, 2), (2, 4, 1), (3, 3, 1), (3, 2, 1);


CREATE VIEW vw_pedidos_clientes AS
SELECT c.nome, p.id_pedido, p.data_pedido
FROM Clientes c
JOIN Pedidos p ON c.id_cliente = p.id_cliente;

CREATE VIEW vw_produtos_em_alerta AS
SELECT nome, preco, estoque
FROM Produtos
WHERE estoque <= 10;

CREATE VIEW vw_clientes_inativos AS
SELECT c.nome, c.cidade
FROM Clientes c
LEFT JOIN Pedidos p ON c.id_cliente = p.id_cliente
WHERE p.id_pedido IS NULL;

CREATE VIEW vw_resumo_vendas AS
SELECT ip.id_pedido, pr.nome, ip.quantidade
FROM Itens_Pedido ip
JOIN Produtos pr ON ip.id_produto = pr.id_produto;

CREATE VIEW vw_faturamento_por_pedido AS
SELECT ip.id_pedido, SUM(ip.quantidade * pr.preco) AS valor_total
FROM Itens_Pedido ip
JOIN Produtos pr ON ip.id_produto = pr.id_produto
GROUP BY ip.id_pedido;



DELIMITER //
CREATE PROCEDURE sp_inserir_cliente(IN p_nome VARCHAR(100), IN p_cidade VARCHAR(50))
BEGIN
    INSERT INTO Clientes (nome, cidade) VALUES (p_nome, p_cidade);
END //
DELIMITER ;



DELIMITER //
CREATE PROCEDURE sp_atualizar_estoque(IN p_id_produto INT, IN p_nova_quantidade INT)
BEGIN
    UPDATE Produtos SET estoque = p_nova_quantidade WHERE id_produto = p_id_produto;
END //
DELIMITER ;



DELIMITER //
CREATE PROCEDURE sp_consultar_pedidos_cliente(IN p_id_cliente INT)
BEGIN
    SELECT id_pedido, data_pedido FROM Pedidos WHERE id_cliente = p_id_cliente;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE sp_aplicar_desconto(IN p_id_produto INT, IN p_porcentagem DECIMAL(5,2))
BEGIN
    UPDATE Produtos 
    SET preco = preco * (1 - (p_porcentagem / 100)) 
    WHERE id_produto = p_id_produto;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE sp_produtos_por_faixa_preco(IN p_preco_min DECIMAL(10,2), IN p_preco_max DECIMAL(10,2))
BEGIN
    SELECT * FROM Produtos 
    WHERE preco BETWEEN p_preco_min AND p_preco_max;
END //
DELIMITER ;
