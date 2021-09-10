create database Veiculos;
use Veiculos;

create table veiculos (
    placa integer not null auto_increment primary key,
    modelo varchar(20) not null,
    marca varchar(20) not null,
    cor varchar(13) not null,
    valor_diaria integer not null,
    ano varchar(4) not null,
    tipo varchar(20) not null
);

create table Locacao(
    id integer not null auto_increment primary key,
    placa integer not null,
    add constraint fk_placa foreign key (placa) references veiculos (placa),
    cpf integer not null,
    add constraint fk_clientes_cpf foreign key (cpf) references clientes (cpf),
    data_retirada datetime not null, 
    data_devolucao datetime not null,
    obs varchar(50) not null,
    valor_efetivo decimal(5,2) not null
);

create table clientes (
    cpf integer not null auto_increment primary key,
    nome varchar(153) not null,
    endereco varchar(200) not null,
    email varchar(100) not null,
);

create table telefones(
    cpf integer not null,
    add constraint fk_cpf foreign key (cpf) references clientes (cpf),
    tel varchar(13) not null 
);