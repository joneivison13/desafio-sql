create database auto_relacionamento;

use auto_relacionamento;

create table cursos(
    idcurso int primary key auto_increment,
    nome varchar(50) not null,
    valor float(10, 2) not null,
    horas int not null,
    id_prereq int
);

alter table
    auto_relacionamento
add
    constraint FK_id_prereq foreign key (id_prereq) references auto_relacionamento(idcurso);

insert into
    cursos
values
    (null, 'logica de programação', 50.00, 20, null);

insert into
    cursos
values
    (null, 'java', 20.00, 1000, 1);

insert into
    cursos
values
    (null, 'javascript', 75.60, 50, 1);

insert into
    cursos
values
    (null, 'nodejs', 30.00, 30, 4);

insert into
    cursos
values
    (null, 'banco de dados', 10.25, 54, null);