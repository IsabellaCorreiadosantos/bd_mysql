CREATE DATABASE db_empresa;

use db_empresa;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,tb_produtos
	idade INT,
   tb_produtos datanascimento DATE,
	salario DECIMAL NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, idade,datanascimento, salario,cargo) 
VALUES ("flavin",20, "2003-12-15", 1000.00,"funcionario");
INSERT INTO tb_colaboradores(nome, idade,datanascimento, salario,cargo) 
VALUES ("kevin",23, "2000-06-26", 6000.00,"KA");
INSERT INTO tb_colaboradores(nome, idade,datanascimento, salario,cargo) 
VALUES ("isabella",18, "2005-01-13", 10000.00,"back-end");
INSERT INTO tb_colaboradores(nome, idade,datanascimento, salario,cargo) 
VALUES ("bianca",25, "1998-03-18", 8000.00,"front-end");
INSERT INTO tb_colaboradores(nome, idade,datanascimento, salario,cargo) 
VALUES ("pedro",20, "2003-11-05", 20000.00,"gerente");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;
