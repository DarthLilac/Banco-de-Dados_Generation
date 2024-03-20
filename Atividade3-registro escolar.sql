-- Criar e utilizar banco de dados

CREATE DATABASE db_escola;
USE db_escola;

-- Criar tabela com pelo menos 5 atributos

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    idade INT,
    aniversario DATE,
	turma VARCHAR(255),
    notamedia DECIMAL (9,2) NOT NULL,
    PRIMARY KEY (id)
);

-- Visualizar todos os dados

SELECT *
FROM tb_estudantes;

INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Ana Silva', 16, '2008-03-12', '9A', 8.5);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Pedro Oliveira', 17, '2007-07-21', '11B', 7.9);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Mariana Santos', 15, '2009-05-05', '10C', 9.2);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Lucas Ferreira', 16, '2008-01-30', '9A', 7.3);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Juliana Costa', 17, '2007-11-17', '11B', 8.8);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Gabriel Almeida', 15, '2009-09-02', '10C', 6.5);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Camila Oliveira', 16, '2008-04-18', '9A', 8.1);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Rafael Souza', 17, '2007-08-14', '11B', 8.0);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Fernanda Lima', 15, '2009-06-20', '10C', 9.5);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Gustavo Santos', 16, '2008-02-04', '9A', 7.8);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Amanda Sousa', 17, '2007-10-11', '11B', 8.7);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Thiago Carvalho', 15, '2009-08-08', '10C', 8.3);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Isabela Martins', 16, '2008-05-14', '9A', 9.0);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Matheus Rodrigues', 17, '2007-09-27', '11B', 7.0);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Larissa Gomes', 15, '2009-07-03', '10C', 8.6);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Daniel Pereira', 16, '2008-03-25', '9A', 8.4);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Beatriz Oliveira', 17, '2007-12-10', '11B', 8.9);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Vinicius Silva', 15, '2009-10-17', '10C', 7.2);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Carolina Santos', 16, '2008-06-22', '9A', 9.3);
INSERT INTO tb_estudantes(nome, idade, aniversario, turma, notamedia) VALUES ('Felipe Alves', 17, '2007-11-05', '11B', 7.5);

-- Selecionar todos os estudantes com nota maior do que 7.0

SELECT * 
FROM tb_estudantes
WHERE notamedia > 7;

-- Selecionar todos os estudantes com nota menor do que 7.0

SELECT * 
FROM tb_estudantes
WHERE notamedia < 7;

-- Atualização de nota

SET SQL_SAFE_UPDATES = 0;

UPDATE tb_estudantes 
SET notamedia = 10 
WHERE nome = "Fernanda Lima";

SET SQL_SAFE_UPDATES = 1;

