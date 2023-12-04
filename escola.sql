CREATE DATABASE db_escola;

use db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	idade INT,
    datanascimento DATE,
    nota DECIMAL (6,2),
	cpf BIGINT,
     PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, idade, datanascimento, nota, cpf) 
VALUES
('João', 20, '2003-01-15', 6.5, 12345678901),
('Maria', 22, '2001-05-20', 9.0, 98765432100),
('Carlos', 19, '2004-03-10', 7.5, 55511177799),
('Pedro', 21, '2002-07-05', 8.0, 44455566677),
('Bianca', 23, '2000-11-30', 9.5, 55566677788),
('Beatriz', 18, '2005-02-25', 7.0, 66677788899),
('Julia', 24, '1999-09-12', 8.8, 77788899900),
('Felipe', 20, '2003-04-18', 8.2, 88899900011),
('Isabella', 21, '2002-08-22', 9.3, 99900011122);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

DELETE FROM tb_estudantes WHERE Id = 11;
DELETE FROM tb_estudantes WHERE Id = 12;
DELETE FROM tb_estudantes WHERE Id = 13;
DELETE FROM tb_estudantes WHERE Id = 14;
DELETE FROM tb_estudantes WHERE Id = 15;
DELETE FROM tb_estudantes WHERE Id = 16;
DELETE FROM tb_estudantes WHERE Id = 17;
DELETE FROM tb_estudantes WHERE Id = 18;
DELETE FROM tb_estudantes WHERE Id = 19;
DELETE FROM tb_estudantes WHERE Id = 20;
DELETE FROM tb_estudantes WHERE Id = 21;
DELETE FROM tb_estudantes WHERE Id = 22;
DELETE FROM tb_estudantes WHERE Id = 23;
DELETE FROM tb_estudantes WHERE Id = 24;
DELETE FROM tb_estudantes WHERE Id = 25;
DELETE FROM tb_estudantes WHERE Id = 26;
DELETE FROM tb_estudantes WHERE Id = 27;
