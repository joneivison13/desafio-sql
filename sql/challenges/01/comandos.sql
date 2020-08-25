-- crialçao de tabelas
create database projeto01;

-- usando database
use projeto01;

-- criando tabelas
create table cursos(
    idcurso int primary key auto_increment,
    nome varchar(50) not null,
    preco float(10, 2) not null,
    tipo varchar(45) not null,
    idinstrutor int not null
);

create table instrutores(
    idinstrutor int primary key auto_increment,
    nome varchar(45) not null,
    telefone varchar(45)
);

create table alunos(
    idalunos int primary key auto_increment,
    nome varchar(45) not null,
    email varchar(45)
);

create table enderecos (
    idendereco int primary key auto_increment,
    rua varchar(45) not null,
    bairro varchar(45) not null,
    cidade varchar(45) not null,
    estado char(2) not null,
    numero_casa varchar(3),
    id_user int not null
);

create table cursos_has_alunos(
    idcursoaluno int primary key auto_increment,
    cursos_idcursos int not null,
    alunos_idalunos int not null,
    data_compra TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP
);

-- alterando tabelas e adicionando relacionamentos
alter table
    enderecos
add
    constraint fk_id_endereco FOREIGN key(id_user) references alunos(idalunos);

alter table
    cursos
add
    constraint fk_id_instrutor FOREIGN key(idinstrutor) references instrutores(idinstrutor);

alter table
    cursos_has_alunos
add
    constraint fk_id_curso FOREIGN key(cursos_idcursos) references cursos(idcurso);

alter table
    cursos_has_alunos
add
    constraint fk_id_aluno FOREIGN key(alunos_idalunos) references alunos(idalunos);

-- inserindo cadastros --> instrutores
insert into
    instrutores
values
    (null, 'joneivison', '123411412');

insert into
    instrutores
values
    (null, 'joni', '12341241234');

insert into
    instrutores
values
    (null, 'jones', '56566565');

insert into
    instrutores
values
    (null, 'jhoni', '3434445676');

insert into
    instrutores
values
    (null, 'joão', '45455545454');

insert into
    instrutores
values
    (null, 'john john', '73999553301');

insert into
    instrutores
values
    (null, 'clara', '787877877');

insert into
    instrutores
values
    (null, 'isa', '89845453344545');

insert into
    instrutores
values
    (null, 'minie', '898988');

insert into
    instrutores
values
    (null, 'cláudia', '56565678789');

insert into
    instrutores
values
    (null, 'maria', '232323567677899');

-- inserindo cadastros --> cursos
insert into
    cursos
values
    (
        null,
        'javascript',
        500.12,
        'desenvolvimento web',
        1
    );

insert into
    cursos
values
    (
        null,
        'php',
        510.22,
        'desenvolvimento web backend',
        5
    );

insert into
    cursos
values
    (null, 'java', 200.33, 'android', 5);

insert into
    cursos
values
    (null, 'react', 30.77, 'front-end', 5);

insert into
    cursos
values
    (null, 'nodejs', 44.70, 'backend', 2);

insert into
    cursos
values
    (
        null,
        'react native',
        590.66,
        'android multiplataforma',
        8
    );

insert into
    cursos
values
    (null, 'ruby', 1000.21, 'fullstack'.8);

insert into
    cursos
values
    (null, 'cobol', 7500.01, 'backend', 2);

insert into
    cursos
values
    (null, 'python', 1200.20, 'data science', 1);

insert into
    cursos
values
    (
        null,
        'flutter',
        60000.21,
        'android multiplataforma',
        1
    );

-- inserindo cadastros --> alunos
insert into
    alunos
values
    (
        null,
        'jhoni oliver',
        'joneivison355@gmail.com'
    );

insert into
    alunos
values
    (
        null,
        'joneivison oliveria',
        'joneivison355@gmail.com'
    );

insert into
    alunos
values
    (
        null,
        'tarsila mara',
        'joneivison355@gmail.com'
    );

insert into
    alunos
values
    (null, 'cabral', 'joneivison355@gmail.com');

insert into
    alunos
values
    (null, 'chris', 'joneivison355@gmail.com');

insert into
    alunos
values
    (null, 'ana', 'joneivison355@gmail.com');

insert into
    alunos
values
    (null, 'gabi', 'joneivison355@gmail.com');

insert into
    alunos
values
    (null, 'vitória', 'joneivison355@gmail.com');

insert into
    alunos
values
    (null, 'joãp', 'joneivison355@gmail.com');

-- inserindo cadastros --> enderecos
insert into
    enderecos
values
    (
        null,
        'rua alice cairo lisboa',
        'centro',
        'uberlandia',
        'BA',
        null,
        1
    );

insert into
    enderecos
values
    (
        null,
        'rua DR. amaral',
        'bela vista',
        'ubatuba',
        'SP',
        200,
        2
    );

insert into
    enderecos
values
    (
        null,
        'rua marcos teves',
        'nova olimpia',
        'crosta',
        'SP',
        null,
        3
    );

insert into
    enderecos
values
    (
        null,
        'rua dr reinaldo de souza',
        'armandão',
        'ubaitaba',
        'BA',
        null,
        4
    );

insert into
    enderecos
values
    (
        null,
        'rua do corre nu',
        'conceição',
        'tororo',
        'BA',
        5,
        5
    );

insert into
    enderecos
values
    (
        null,
        'rua joneivison oliveira',
        'centro',
        'são paulo',
        'BA',
        null,
        6
    );

insert into
    enderecos
values
    (
        null,
        'rua fernando lona',
        'centro',
        'paraibense',
        'PE',
        null,
        7
    );

insert into
    enderecos
values
    (
        null,
        'rua jhonis andrade',
        'supermercado atacado',
        'são miguel',
        'RJ',
        null,
        8
    );

insert into
    enderecos
values
    (
        null,
        'rua',
        'bairro',
        'cidade',
        'UF',
        null,
        9
    );

-- inserindo cadastros --> cursos_has_alunos
insert into
    cursos_has_alunos
values
    (null, 1, 5, now());

insert into
    cursos_has_alunos
values
    (null, 2, 5, now());

insert into
    cursos_has_alunos
values
    (null, 5, 1, now());

insert into
    cursos_has_alunos
values
    (null, 2, 2, now());

insert into
    cursos_has_alunos
values
    (null, 5, 9, now());