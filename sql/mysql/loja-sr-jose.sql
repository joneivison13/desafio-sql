-- 1 - Crie um banco de dados chamado projeto e conecte - se ao banco.
-- 2 - Faça a seguinte modelagem:
-- Sr.José quer modernizar a sua oficina, e por enquanto,
-- cadastrar os carros que entram para realizar serviços e os seus respectivos donos. --> feito
-- Sr.José mencionou que cada cliente possui apenas um carro. -->feito
-- Um carro possui uma marca.-->feito
-- Sr José também quer saber as cores dos carros para ter ideia de qual tinta comprar,  -->feito
-- e informa que um carro pode ter mais de uma cor.  -->feito
-- Sr José necessita armazenar os telefones dos clientes,  -->feito
-- mas não quer que eles sejam obrigatórios.  -->feito
-- 
CREATE DATABASE PROJETO;

USE PROJETO;

CREATE TABLE CLIENTES (
    IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(45)
);

CREATE TABLE TELEFONE (
    IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
    TIPO CHAR(3),
    TELEFONE VARCHAR(15),
    ID_CLIENTE INT,
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES(IDCLIENTE)
);

CREATE TABLE CARRO (
    IDCARRO INT PRIMARY KEY AUTO_INCREMENT,
    MARCA VARCHAR(30),
    ID_CLIENTE INT UNIQUE NOT NULL,
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES(IDCLIENTE)
);

CREATE TABLE COR (
    IDCOR INT PRIMARY KEY AUTO_INCREMENT,
    COR VARCHAR(20),
    ID_CARRO INT NOT NULL,
    FOREIGN KEY (ID_CARRO) REFERENCES CARRO(IDCARRO)
);

-- INSERÇÃO DE REGISTROS --> CLIENTES
INSERT INTO
    CLIENTES
VALUES
    (NULL, 'JHONI');

INSERT INTO
    CLIENTES
VALUES
    (NULL, 'JONEIVISON');

INSERT INTO
    CLIENTES
VALUES
    (NULL, 'JONE');

INSERT INTO
    CLIENTES
VALUES
    (NULL, 'JONI');

-- INSERÇÃO DE REGITROS --> CARROS
INSERT INTO
    CARRO
VALUES
    (NULL, 'CAMARO', 1);

INSERT INTO
    CARRO
VALUES
    (NULL, 'LAMBORGUINE', 3);

INSERT INTO
    CARRO
VALUES
    (NULL, 'PORCHE', 4);

--  INSERÇÃO DE REGISTROS --> TELEFONE
INSERT INTO
    TELEFONE (TIPO, TELEFONE, ID_CLIENTE)
VALUES
    ('COM', '66565334434', 1);

INSERT INTO
    TELEFONE (TIPO, TELEFONE, ID_CLIENTE)
VALUES
    ('CEL', '73999999999', 1);

INSERT INTO
    TELEFONE (TIPO, TELEFONE, ID_CLIENTE)
VALUES
    ('RES', '32301313', 1);

INSERT INTO
    TELEFONE (TIPO, TELEFONE, ID_CLIENTE)
VALUES
    ('COM', '3453535', 4);