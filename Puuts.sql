create database bus;
use bus;

create table motoristas(
    cpf integer not null auto_increment primary key,
    nome varchar(153) not null,
    telefone varchar(13) not null,
    endereco varchar(200) not null,
);

create table linhas(
    id integer not null auto_increment primary key,
    descricao varchar(50) not null,
);

create table horarios(
    add constraint fk_id_linha foreign key (id_linhas) references linhas (id),
    horario Time not null
);

create table dirige(
    add constraint fk_id_cpf foreign key (id_cpf) references motoristas (cpf),
    add constraint fk_id_linhas foreign key (id_linhas) references linhas (id),
    data not null,
);