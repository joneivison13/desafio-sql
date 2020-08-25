#criação do banco de dados
CREATE DATABASE livraria;

#uso do banco de dados
USE livraria;

#criação das tabelas
CREATE TABLE livros (
	nome_livro varchar(30),
    nome_autor varchar(30),
    sexo_autor char(1),
    paginas_livro int,
    nome_editora varchar(30),
    valor_livro float(3,2),
    uf_editora char(2),
    ano_plublicacao int(4)
);

#inserindo dados
INSERT INTO livros (
	nome_livro, 
    nome_autor,
    sexo_autor, 
    paginas_livro, 
    nome_editora, 
    valor_livro, 
    uf_editora, 
    ano_plublicacao
) VALUES
(
	'As trnças do careca', 
	'xeila Oliver', 
    'f',
	20,
    'xeira 13',
    '70.75',
    'RJ',
    2021
);

#1- trazer todos os dados
select * from livros;

#2- trazer todos os nome dos livros e editoras
select nome_livro as 'LIVROS', nome_editora as EDITORAS from livros;

#3- trazer todos os nome dos livros e uf dos autores com o sexo masculino
select nome_livro as 'LIVROS', uf_editora as UF from livros where sexo_autor='M';

#4- trazer todos os nome dos livros e numeros de páginas dele de autoras do sexo feminino
select nome_livro as 'LIVROS', paginas_livro as PAGINAS from livros where sexo_autor='F';

#5- trazer todos valores dos livros de editoras de são paulo
select valor_livro as VALOR from livros where uf_editora='SP';

#6- trazer dados dos autores do sexo masculino que tiveram livros publicados por são paulo ou rio de janeiro
select nome_autor as NOME, sexo_autor as 'SEXO DO AUTOR' from livros where uf_editora='SP' or uf_editora='RJ';