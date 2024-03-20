
-- Criar e utilizar banco de dados
CREATE DATABASE db_rh;
USE db_rh;

-- Criar tabela com pelo menos 5 atributos

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    idade INT,
    aniversario DATE,
	cargo VARCHAR(255),
    salario DECIMAL (9,2) NOT NULL,
    PRIMARY KEY (id)
);

-- Visualizar todos os dados

SELECT *
FROM tb_colaboradores;

-- Inserir pelo menos 5 registros

INSERT INTO tb_colaboradores(nome, idade, aniversario, cargo, salario)
VALUES ('João Silva', 32, '1992-05-15', 'Analista de Marketing', 5000.00);
INSERT INTO tb_colaboradores(nome, idade, aniversario, cargo, salario) 
VALUES ('Maria Santos', 28, '1996-11-20', 'Desenvolvedora de Software', 6000.00);
INSERT INTO tb_colaboradores(nome, idade, aniversario, cargo, salario) 
VALUES ('Pedro Oliveira', 35, '1989-08-10', 'Gerente de Vendas', 8000.00);
INSERT INTO tb_colaboradores(nome, idade, aniversario, cargo, salario) 
VALUES ('Ana Costa', 42, '1982-03-25', 'Coordenadora de Recursos Humanos', 7000.00);
INSERT INTO tb_colaboradores(nome, idade, aniversario, cargo, salario) 
VALUES ('Carlos Rocha', 30, '1994-07-12', 'Analista Financeiro', 5500.00);
INSERT INTO tb_colaboradores(nome, idade, aniversario, cargo, salario) 
VALUES ('Juliana Ferreira', 27, '1997-01-30', 'Designer Gráfico', 4800.00);
INSERT INTO tb_colaboradores(nome, idade, aniversario, cargo, salario) 
VALUES ('Fernando Costa', 45, '1979-09-05', 'Diretor de Operações', 10000.00);
INSERT INTO tb_colaboradores(nome, idade, aniversario, cargo, salario) 
VALUES ('Camila Oliveira', 31, '1993-12-18', 'Engenheira de Software', 7000.00);
INSERT INTO tb_colaboradores(nome, idade, aniversario, cargo, salario) 
VALUES ('Rafael Almeida', 29, '1995-04-08', 'Analista de Qualidade', 5800.00);
INSERT INTO tb_colaboradores(nome, idade, aniversario, cargo, salario) 
VALUES ('Patrícia Ramos', 38, '1986-06-22', 'Gerente de Projetos', 8500.00);
INSERT INTO tb_colaboradores(nome, idade, aniversario, cargo, salario) 
VALUES ('Mariana Lima', 25, '1999-10-08', 'Estagiária de Marketing', 1500.00);
INSERT INTO tb_colaboradores(nome, idade, aniversario, cargo, salario) 
VALUES ('Lucas Mendes', 23, '2001-02-15', 'Estagiário de Desenvolvimento', 1800.00);
INSERT INTO tb_colaboradores(nome, idade, aniversario, cargo, salario) 
VALUES ('Carolina Oliveira', 26, '1998-07-20', 'Assistente Administrativa', 1900.00);

-- Selecionar todos os colaboradores com salário maior do que R$2000,00

SELECT * 
FROM tb_colaboradores
WHERE salario > 2000;

-- Selecionar todos os colaboradores com salário menor do que R$2000,00

SELECT * 
FROM tb_colaboradores
WHERE salario < 2000;

-- Atualização de um salário na tabela

UPDATE tb_colaboradores 
SET salario = 5000.00 
WHERE Id = 6;