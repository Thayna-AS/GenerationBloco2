-- Criação de Banco de dados para RH

create database db_RH;

use db_RH;

create table tb_colaboradores(
	id bigint auto_increment,
    nome varchar (255) not null,
	idade varchar (5) not null,
    salario bigint not null,
    contato varchar (255) not null,
    PRIMARY key (id) );

insert into tb_colaboradores (nome, idade, salario, contato) values ("Margarida", "42", 2500.00, "11987534242");
insert into tb_colaboradores (nome, idade, salario, contato) values ("João", "30", 1300.00, "11987537777");
insert into tb_colaboradores (nome, idade, salario, contato) values ("Jennifer", "22", 1500.00, "11987538888");
insert into tb_colaboradores (nome, idade, salario, contato) values ("Matilda", "33", 3800.00, "11987539999");
insert into tb_colaboradores (nome, idade, salario, contato) values ("Amélia", "23", 2600.00, "11987531010");
insert into tb_colaboradores (nome, idade, salario, contato) values ("John", "28", 5000.00, "11987531111");
insert into tb_colaboradores (nome, idade, salario, contato) values ("Tyron", "27", 1800.00, "11987531212");

select * from tb_colaboradores;

alter table tb_colaboradores change endereco salario bigint;

select * from tb_colaboradores where salario >2000;

select * from tb_colaboradores where salario <2000;

update tb_colaboradores set salario = 1500.00 where id =3;

