create database db_quitanda;

-- selecionando o BD
use db_quitanda;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

-- INSERT INTO  nome_tabela(campos da tabela) VALUES(valores que serao adicionados)

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("pêra",500, "2023-12-15", 2.99);

-- SELECT nome dos campos FROM nome da tabela

-- SELECT quantidade , datavalidade From tb_produtos;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

--  SELECT * FROM tb_produtos WHERE id = "uva";

--ALTER TABLE nome da tabela MODIFY campo que vai ser modificado;

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2); -- 0000.00

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("abacaxi",10, "2023-06-25", 6.69);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("pitaya",10, "2023-06-25", 9.99);

DELETE FROM tb_produtos WHERE Id = 7;
DELETE FROM tb_produtos WHERE Id = 8;
DELETE FROM tb_produtos WHERE Id = 11;


-- UPDATE nome da tabela SET campo que vai atualizar WHERE condição Where
UPDATE tb_produtos SET preco = 2.99, nome = "amora" WHERE id = 6;


SET SQL_SAFE_UPDATES = 1;