use db_generation_game_online;

create table tb_personagens(
	id bigint auto_increment,
    nome varchar (255),
    nivel int,
    defesa int,
    ataque int,
    id_classe bigint,
    primary key (id)
);

select * from tb_classes;

select * from tb_personagens;
 
alter table tb_personagens add constraint fk_classe foreign key (id_classe) references tb_classes(id) ;
 
insert into tb_classes (classe, especialidade) values ("guerreiro", "alta resistencia, luta corpo a corpo utilizando armas pesadas");
insert into tb_classes (classe, especialidade) values ("arqueiro", "apesar de sua baixa resistencia causa grandes danos ao inimigo");
insert into tb_classes (classe, especialidade) values ("bruxo", "apesar de sua baixa resistencia causa danos criticos aos inimigos, combate a distancia");
insert into tb_classes (classe, especialidade) values ("ladino", "apesar de sua baixa resistência causa grandes danos, sorrateiro");
insert into tb_classes (classe, especialidade) values ("druida", "média resistencia e dano, habilidades especiais com pets");
 
insert into tb_personagens (nome,nivel,defesa,ataque,id_classe) values ("vhagar","70","90000","80000",1);
insert into tb_personagens (nome,nivel,defesa,ataque,id_classe) values ("Syrax","90","10000","80000",2);
insert into tb_personagens (nome,nivel,defesa,ataque,id_classe) values ("sunfire","30","7000","6000",3); 
insert into tb_personagens (nome,nivel,defesa,ataque,id_classe) values ("caraxes","20","500","600",5);
insert into tb_personagens (nome,nivel,defesa,ataque,id_classe) values ("Balerion","90","90000","36000",1);
insert into tb_personagens (nome,nivel,defesa,ataque,id_classe) values ("moondancer","30","900","6000",2);
insert into tb_personagens (nome,nivel,defesa,ataque,id_classe) values ("tessarion","50","100","80",5);
insert into tb_personagens (nome,nivel,defesa,ataque,id_classe) values ("morghul","10","8000","80000",3);

select * from tb_personangens where ataque >2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "c%";

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.id_classe;

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.id_classe where tb_classes.classe= "guerreiro";
