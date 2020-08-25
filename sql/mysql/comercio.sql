create database comercio;
use comercio;
create table cliente (
    idcliente int primary key auto_increment,
    nome varchar(30) not null,
    sexo enum('M', 'F') not null,
    email varchar(50) unique,
    cpf varchar(15) unique
);
create table endereco (
    idendereco int primary key auto_increment,
    rua varchar(30) not null,
    bairro varchar(30) not null,
    cidade varchar(30) not null,
    estado char(2) not null,
    fkcliente int unique,
    FOREIGN key (fkcliente) references cliente(idcliente)
);
create table telefone (
    idtelefone int primary key auto_increment,
    tipo enum('red', 'com', 'cel') not null,
    numero varchar(10) not null,
    fkcliente int,
    FOREIGN key (fkcliente) references cliente(idcliente)
);
insert into cliente
values (
        null,
        'rosa',
        'f',
        'rosa355@gmailcom',
        '22222222222'
    );
insert into cliente
values (
        null,
        'clara',
        'F',
        'clara355@gmailcom',
        '33333333333'
    );
insert into cliente
values (
        null,
        'joana',
        'F',
        'joana355@gmailcom',
        '44444444444'
    );
insert into cliente
values (
        null,
        'isarael',
        'M',
        'isarael355@gmailcom',
        '55555555555'
    );
INSERT INTO endereco
values (
        null,
        'rua alice cairo lisboa',
        'bela vista',
        'ubaitaba',
        'BA',
        2
    ),
    (
        null,
        'rua camamu',
        'travessão',
        'camamu',
        'BA',
        3
    ),
    (
        null,
        'rua jhoni oliveira',
        'Estácio',
        'Ilheus',
        'SP',
        5
    ),
    (
        null,
        'rua dr. reinaldo de souza',
        'armandão',
        'aparecida',
        'SC',
        4
    );
INSERT INTO telefone
values (
        null,
        'cel',
        '7399955330',
        3
    ),
    (
        null,
        'com',
        '7399999999',
        5
    ),
    (
        null,
        'com',
        '7391111111',
        5
    ),
    (
        null,
        'cel',
        '7399555555',
        2
    );
select nome,
    sexo,
    email,
    tipo,
    numero
from cliente
    INNER JOIN telefone on idcliente = fkcliente;
select cliente.nome,
    endereco.bairro,
    endereco.cidade,
    telefone.tipo,
    telefone.numero,
    cliente.sexo
from cliente
    INNER JOIN endereco on cliente.idcliente = endereco.fkcliente
    INNER JOIN telefone on cliente.idcliente = telefone.fkcliente;
-- EXERXIXIO DML
--RELATÓRIO GERAL DE TODOS OS CLIENTES
SELECT CLIENTE.IDCLIENTE,
    CLIENTE.NOME,
    CLIENTE.EMAIL,
    CLIENTE.SEXO,
    CLIENTE.CPF,
    TELEFONE.NUMERO,
    ENDERECO.CIDADE,
    ENDERECO.BAIRRO,
    ENDERECO.ESTADO
FROM CLIENTE
    INNER JOIN TELEFONE ON TELEFONE.ID_CLIENTE = CLIENTE.IDCLIENTE
    INNER JOIN ENDERECO ON ENDERECO.ID_CLIENTE = CLIENTE.IDCLIENTE;
-- RELATÓRIO DE HOMENS
SELECT CLIENTE.IDCLIENTE,
    CLIENTE.NOME,
    CLIENTE.EMAIL,
    CLIENTE.SEXO,
    CLIENTE.CPF,
    TELEFONE.NUMERO,
    ENDERECO.CIDADE,
    ENDERECO.BAIRRO,
    ENDERECO.ESTADO
FROM CLIENTE
    INNER JOIN TELEFONE ON TELEFONE.ID_CLIENTE = CLIENTE.IDCLIENTE
    INNER JOIN ENDERECO ON ENDERECO.ID_CLIENTE = CLIENTE.IDCLIENTE
WHERE CLIENTE.SEXO = 'M';
-- RELATÓRIO DE MULHERES
SELECT CLIENTE.IDCLIENTE,
    CLIENTE.NOME,
    CLIENTE.EMAIL,
    CLIENTE.SEXO,
    CLIENTE.CPF,
    TELEFONE.NUMERO,
    ENDERECO.CIDADE,
    ENDERECO.BAIRRO,
    ENDERECO.ESTADO
FROM CLIENTE
    INNER JOIN TELEFONE ON TELEFONE.ID_CLIENTE = CLIENTE.IDCLIENTE
    INNER JOIN ENDERECO ON ENDERECO.ID_CLIENTE = CLIENTE.IDCLIENTE
WHERE CLIENTE.SEXO = 'F';
-- QUANTIDADE DE HOMENS E DE MULHERES
SELECT COUNT(*),
    SEXO
FROM CLIENTE
GROUP BY SEXO;
-- ID E EMAIL DAS MULHERES QUE MORAM NO CENTRO DO RIO DE JANEIRO E NAÕ TEM CELULAR
SELECT CLIENTE.IDCLIENTE,
    CLIENTE.EMAIL
FROM CLIENTE
    INNER JOIN TELEFONE ON TELEFONE.TIPO != 'CEL'
    INNER JOIN ENDERECO ON ENDERECO.ID_CLIENTE = CLIENTE.IDCLIENTE
WHERE CLIENTE.SEXO = 'F'
    AND ENDERECO.CIDADE = 'RIO DE JANEIRO'
    AND ENDERECO.BAIRRO = 'CENTRO';
-- PARA UMA CAMPANHA DE MARKENTING, O SETOR SOLICITOU UM RELATÓRIO COM O NOME, EMAIL, E TELEFONE CELULAR DOS CLIENTES QUE MORAM NO ESTADO DO RIO DE JANEIRO.
-- VOCE TERÁ QUE PASSAR A QUERY PARA GERAR O RELATÓRIO PARA O DEV.
SELECT CLIENTE.NOME,
    CLIENTE.EMAIL,
    TELEFONE.TIPO
FROM CLIENTE
    INNER JOIN TELEFONE ON TELEFONE.TIPO = 'CEL'
    INNER JOIN ENDERECO ON ENDERECO.ESTADO = 'RJ';