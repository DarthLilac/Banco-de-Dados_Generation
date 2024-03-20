-- Criar e utilizar banco de dados

CREATE DATABASE db_loja;
USE db_loja;

-- Criar tabela com pelo menos 5 atributos

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
	nomeproduto VARCHAR(255) NOT NULL,
    categoria INT,
    quantidade INT,
    preco DECIMAL (9,2) NOT NULL,
	notamedia DECIMAL (9,2),
    PRIMARY KEY (id)
);

-- Modificar de INT para VARCHAR

ALTER TABLE tb_produtos
MODIFY COLUMN categoria VARCHAR(255);

-- Visualizar todos os dados

SELECT *
FROM tb_produtos;

-- Inserir no mínimo 8 registros

INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Camiseta de Algodão com Estampa Floral', 'Moda Feminina', 100, 29.99, 4.7);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Calça Jeans Skinny', 'Moda Feminina', 80, 49.99, 4.5);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Tênis Esportivo Leve', 'Calçados', 120, 79.99, 4.8);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Mochila Resistente para Laptop', 'Acessórios', 60, 39.99, 4.6);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Relógio de Pulso Analógico', 'Acessórios', 150, 24.99, 4.3);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Celular Smartphone Android', 'Eletrônicos', 200, 299.99, 4.9);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Fones de Ouvido Bluetooth', 'Eletrônicos', 80, 59.99, 4.4);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Blusa de Moletom com Capuz', 'Moda Feminina', 70, 39.99, 4.6);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Perfume Floral Feminino', 'Perfumaria', 90, 69.99, 4.7);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Óculos de Sol Estiloso', 'Acessórios', 110, 29.99, 4.5);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Tênis de Corrida Amortecido', 'Calçados', 100, 89.99, 4.8);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Bolsa de Couro com Alça Longa', 'Acessórios', 50, 79.99, 4.6);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Relógio Inteligente com Monitor de Frequência Cardíaca', 'Eletrônicos', 120, 129.99, 4.7);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Batom Matte de Longa Duração', 'Maquiagem', 80, 14.99, 4.4);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Jaqueta Corta-vento Masculina', 'Moda Masculina', 60, 59.99, 4.5);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Tablet Android de 10 Polegadas', 'Eletrônicos', 70, 199.99, 4.6);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Sapatênis Casual Masculino', 'Calçados', 90, 49.99, 4.4);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Creme Hidratante Facial', 'Cuidados com a Pele', 100, 19.99, 4.7);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Camisa Polo Masculina', 'Moda Masculina', 80, 34.99, 4.5);
INSERT INTO tb_produtos(nomeproduto, categoria, quantidade, preco, notamedia) VALUES ('Conjunto de Pincéis de Maquiagem', 'Maquiagem', 120, 24.99, 4.6);

-- Selecionar todos os produtos com valor maior do que R$500,00

SELECT * 
FROM tb_produtos
WHERE preco > 500;

-- Selecionar todos os produtos com valor menor do que R$500,00

SELECT * 
FROM tb_produtos
WHERE preco < 500;

-- Atualização do valor

UPDATE tb_produtos 
SET preco = 3499.00 
WHERE Id = 6;

UPDATE tb_produtos 
SET preco = 3499.00 
WHERE Id = 16;