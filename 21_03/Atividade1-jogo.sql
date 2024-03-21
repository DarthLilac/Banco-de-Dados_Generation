CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

DROP TABLE tb_classes; 
DROP TABLE tb_personagens; 

CREATE TABLE tb_classes(
	id bigint AUTO_INCREMENT,
	nomeclasse VARCHAR(100) NOT NULL,
	descricao TEXT,
    PRIMARY KEY (id)
);

SELECT *
FROM tb_classes;

INSERT INTO tb_classes (nomeclasse, descricao) VALUES
('Guerreiro', 'Classe especializada em combate corpo a corpo.'),
('Mago', 'Classe especializada em magias e feitiços.'),
('Arqueiro', 'Classe especializada em ataques à distância.'),
('Assassino', 'Classe especializada em ataques furtivos.'),
('Paladino', 'Classe especializada em proteção divina.');

CREATE TABLE tb_personagens(
	id bigint AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT,
    poder_defesa INT,
    id_classe INT,
	PRIMARY KEY (id)
    );

SELECT *
FROM tb_personagens;

ALTER TABLE tb_personagens
MODIFY COLUMN id_classe BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personages_classes 
FOREIGN KEY (id_classe) REFERENCES tb_classes (id);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES
('Gerwald', 10, 2500, 1800, 1),   -- Guerreiro
('Pandora', 12, 1800, 2200, 2),     -- Mago
('Lumia', 8, 2100, 1200, 3),     -- Arqueiro
('Shadow', 15, 1900, 1500, 4),     -- Assassino
('Enna', 9, 1500, 2500, 5),        -- Clérigo
('Arthur', 11, 2300, 1900, 1),     -- Guerreiro
('Sorsha', 7, 2200, 2000, 3),      -- Arqueiro
('Drizzt', 14, 2000, 2100, 4),     -- Assassino
('Malie', 13, 1900, 1800, 2),      -- Mago
('Qiven', 6, 1800, 1400, 3),       -- Arqueiro
('Serell', 18, 2100, 1600, 4),      -- Assassino
('Miriel', 20, 2700, 2200, 1),      -- Guerreiro
('Sable', 17, 2000, 1900, 2),      -- Mago
('Krisvaris', 5, 2300, 1700, 3),     -- Arqueiro
('Mikaela', 19, 2500, 2000, 2),  -- Mago
('Snake', 16, 2200, 1800, 4),      -- Assassino
('Amaya', 4, 1600, 1200, 5),      -- Clérigo
('Beliz', 3, 2400, 2000, 1),     -- Guerreiro
('Cibele', 2, 2000, 2200, 1),       -- Guerreiro
('Darel', 1, 1500, 1000, 3);       -- Arqueiro

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT nome, nivel, poder_ataque, poder_defesa, id_classe, tb_classes.nomeclasse
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id;

SELECT nome, nivel, poder_ataque, poder_defesa, id_classe, tb_classes.nomeclasse
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id
WHERE nomeclasse = 'Mago';




