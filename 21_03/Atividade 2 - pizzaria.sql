CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

DROP TABLE tb_classes; 
DROP TABLE tb_personagens; 

CREATE TABLE tb_tipos(
	id bigint AUTO_INCREMENT,
	tipo VARCHAR(100) NOT NULL,
	descricao TEXT,
    PRIMARY KEY (id)
);

SELECT *
FROM tb_tipos;

INSERT INTO tb_tipos (tipo, descricao) VALUES
	('Salgadas', 'Pizzas com recheios salgados'),
    ('Doces', 'Pizzas com recheios doces'),
    ('Vegetarianas', 'Pizzas sem carne'),
    ('Especiais', 'Pizzas especiais da casa'),
    ('Veganas', 'Pizzas sem ingredientes de origem animal');

CREATE TABLE tb_pizzas( -- tamanho, preço, 
	id bigint AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    preco DECIMAL(9,2) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    tipo_id INT
    );

SELECT *
FROM tb_pizzas;

ALTER TABLE tb_pizzas
MODIFY COLUMN tipo_id BIGINT;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_tipos
FOREIGN KEY (tipo_id) REFERENCES tb_tipos (id);

INSERT INTO tb_pizzas (nome, preco, ingredientes, tipo_id) VALUES
	('Mussarela', 35.90, 'Molho de tomate, mussarela e orégano', 1),
    ('Calabresa', 40.50, 'Molho de tomate, calabresa fatiada e cebola', 1),
    ('Marguerita', 45.00, 'Molho de tomate, mussarela, manjericão e tomate fresco', 1),
    ('Chocolate', 55.00, 'Chocolate derretido e granulado', 2),
    ('Banana com Canela', 48.90, 'Banana, canela e açúcar', 2),
    ('Vegetariana', 42.00, 'Molho de tomate, vegetais variados e queijo', 3),
    ('Frango com Catupiry', 60.00, 'Frango desfiado, catupiry e milho', 4),
    ('Quatro Queijos', 47.50, 'Molho de tomate, mussarela, parmesão, provolone e gorgonzola', 1);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT nome, preco, tipo_id, tb_tipos.tipo
FROM tb_pizzas
INNER JOIN tb_tipos
ON tb_pizzas.tipo_id = tb_tipos.id;

SELECT nome, preco, tipo_id, tb_tipos.tipo
FROM tb_pizzas
INNER JOIN tb_tipos
ON tb_pizzas.tipo_id = tb_tipos.id
WHERE tipo = 'Doces';




