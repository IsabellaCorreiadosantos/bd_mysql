CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, descricao)
VALUES ("vegana","pizzas vegana variadas");

INSERT INTO tb_categorias (tipo, descricao)
VALUES ("doce", "pizzas doces");

INSERT INTO tb_categorias (tipo, descricao)
VALUES ("salgada", "pizzas salgadas");

INSERT INTO tb_categorias (tipo, descricao)
VALUES ("refrigerante", "refrigerantes variados");

INSERT INTO tb_categorias (tipo, descricao)
VALUES ("outros", "bebidas alcoólica");

SELECT * FROM tb_categorias;


CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
sabor varchar(255) NOT NULL,
preco DECIMAL (6,2),
quantidade int,
categorias_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_pizzas (nome, sabor, preco, quantidade, categorias_id)
VALUES
('Margarita Vegana', 'Queijo vegano tomate manjericão', 100.99, 50, 1),

('Pizza de Cogumelos e Espinafre', 'Cogumelos, espinafre, queijo vegano', 29.99, 40, 1),

('Pizza Supreme', 'Pepperoni, linguiça, cebola, pimentões, azeitonas', 30.99, 40, 3),

('Frango com Catupiry', 'Frango desfiado, Catupiry, milho', 28.99, 45, 3),

('Pepperoni Clássica', 'Pepperoni, queijo, molho de tomate', 22.99, 60, 3),

('Pizza de Chocolate e Morango', 'Chocolate derretido, morangos frescos', 60.99, 60, 2),

('Pizza de Banana e Canela', 'Banana, canela, açúcar mascavo', 50.99, 55, 2),

('Heineken', 'Pilsner', 6.99, 80, 5),

('Coca-Cola', 'Tradicional', 4.99, 100, 4);

SELECT * FROM tb_pizzas;


SELECT * FROM tb_pizzas WHERE preco > 40.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome Like "%M%";

SELECT nome, sabor, preco, quantidade, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id 
WHERE tb_categorias.tipo = "Doce";