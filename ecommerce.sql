CREATE DATABASE db_ecommerce;


use db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datafabricacao DATE,
    preco DECIMAL NOT NULL,
	tipo VARCHAR(255) NOT NULL,
     PRIMARY KEY (id)
);

	INSERT INTO tb_produtos(nome, quantidade, datafabricacao, preco, tipo) 
VALUES
("Camiseta Branca", 100, "2023-01-15", 19.99, "Vestuário"),
("Notebook Dell XPS", 50, "2022-12-01", 1299.99, "Eletrônicos"),
("Livro A Arte da Guerra", 30, "2022-11-20", 29.99, "Livros"),
("Cadeira de Escritório", 20, "2023-02-10", 149.99, "Móveis"),
("Fones de Ouvido Bluetooth", 75, "2023-03-05", 49.99, "Eletrônicos"),
("Tênis Esportivo Nike", 40,"2022-12-05", 79.99, "Vestuário"),
("Mesa de Jantar de Madeira", 15, "2023-02-28", 299.99, "Móveis"),
("Câmera Digital Canon", 10, "2022-11-15", 499.99, "Eletrônicos");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

