CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
subclasse varchar(255) NOT NULL,
PRIMARY KEY (id)
);


INSERT INTO tb_classe (classe, subclasse)
VALUES ("mago","evocador");

INSERT INTO tb_classe (classe, subclasse)
VALUES ("guerreiro", "mestre de armas");

INSERT INTO tb_classe (classe, subclasse)
VALUES ("ladrao", "assasino");

INSERT INTO tb_classe (classe, subclasse)
VALUES ("paladino", "cavaleiro sagrado");


INSERT INTO tb_classe (classe, subclasse)
VALUES ("arqueiro", "atirador furtivo");

INSERT INTO tb_classe (classe, subclasse)
VALUES ("Necromante", "Mestre dos Mortos");

SELECT * FROM tb_classe;


CREATE TABLE tb_personagem(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
nivel int, 
ataque int,
defesa int,
classe_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

SELECT * FROM tb_personagem;

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, classe_id)
VALUES
("jose", 40, 1000, 1000, 2),
("Lucas", 11, 1500, 1434, 3),
("Isabella", 1400, 2314, 750, 1), 
("Ezra", 9, 1300, 1234, 1),    
("Aria", 10, 2100, 3214, 4),   
("Owen", 13, 3000, 3000, 5),   
("Felicity", 1999, 1000, 800, 6),
("karma", 53, 2000, 2000, 1);

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nome Like "%c%";

SELECT nome, nivel, ataque, defesa , tb_classe.classe
FROM tb_personagem INNER JOIN tb_classe 
ON tb_personagem.classe_id = tb_classe.id 
WHERE tb_classe.classe = "mago";