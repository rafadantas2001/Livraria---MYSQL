CREATE DATABASE Livraria;

USE Livraria;

CREATE TABLE Livros
(id int(2),
 Nome_do_livro Varchar(100),
 Nome_do_autor Varchar(100),
 Sexo Char(1),
 Num_pagina Int(5),
 Nome_da_editora Varchar(50),
 Valor_Livro Float(10,2),
 UF Varchar(2),
 Ano INT(4));

INSERT INTO Livros VALUES(1, 'Cavaleiro Real', 'Ana Claudia', 'F', 465, 'Atlas', 49.9, 'RJ', '2009')
INSERT INTO Livros VALUES(2, 'SQL para leigos', 'João Nunes', 'M', 450, 'Addison', 98, 'SP', '2018')
INSERT INTO Livros VALUES(3, 'Receitas Caseiras', 'Celia Tavares', 'F', 465, 'Atlas', 45, 'RJ', '2009')
INSERT INTO Livros VALUES(4, 'Pessoas Efetivas', 'Eduardo Santos', 'M', 390, 'Beta', 78.99, 'RJ', '2018')
INSERT INTO Livros VALUES(5, 'Habitos Saudáveis', 'Eduardo Santos', 'M', 630, 'Beta', 150.98, 'RJ', '2019')
INSERT INTO Livros VALUES(6, 'A Casa Marrom', 'Hermes Macedo', 'M', 250, 'Bubba', 60, 'MG', '2016')
INSERT INTO Livros VALUES(7, 'Estacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia', 100, 'ES', '2015')
INSERT INTO Livros VALUES(8, 'Pra sempre amigas', 'Leda Silva', 'F', 510, 'Insignia', 78.98, 'ES', '2011')
INSERT INTO Livros VALUES(9, 'Copas Inesqueciveis', 'Marco Alcantara', 'M', 200, 'Larson', 130.98, 'RS', '2018')
INSERT INTO Livros VALUES(10, 'O poder da mente', 'Clara Mafra', 'F', 120, 'Continental', 56.58, 'SP', '2017');

/* Trazer todos os livros */
 SELECT * FROM Livros;
 
/* Trazer o nome do livro e da editora */
 SELECT Nome_do_livro, Nome_da_editora FROM Livros;
 
 /* Trazer o nome do livro e a UF dos livros publicados pelo sexo masculino */
 SELECT Nome_do_livro, UF FROM Livros
 WHERE Sexo = 'M';
 
 /* Trazer o nome do livro e o número de paginas publicados pelo sexo feminino */
 SELECT Nome_do_livro, Num_pagina FROM Livros
 WHERE Sexo = 'F';
 
 /* Trazer os valores dos livros das editoras de São Paulo */
 SELECT  Valor_Livro FROM Livros
 WHERE UF = 'SP';
 
 /* Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro */
 SELECT Nome_do_autor, Sexo FROM Livros
 WHERE Sexo = 'M' AND UF = 'SP' OR UF= 'RJ'; 

