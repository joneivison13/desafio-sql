INSERT INTO cliente VALUES ('joneivison', 'M', 12345678901, '73999999999', 'rua jones oliveira - centro', 'joneivison355@gmail.com');
INSERT INTO cliente VALUES ('joneivison2', 'M', 12345678901, '73888888888', 'rua jones oliveira2 - centro', 'joneivison3525@gmail.com');
INSERT INTO cliente VALUES ('joneivison3', 'M', 12345678901, '7377777777', 'rua jones oliveira3 - centro', 'joneivison3553@gmail.com');

create table cliente (
    nome varchar(30),
    sexo char(1),
    email varchar(30),
    cpf int(11),
    telefone varchar(30),
    endereco varchar(100)
);