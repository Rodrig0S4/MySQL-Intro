create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id int primary key auto_increment,
classe varchar(50),
habilidade varchar(50)
);

create table tb_personagens(
id int primary key auto_increment,
nome varchar (50) not null,
nivel bigint (4),
ataque int(10),
defesa int(10),
classe_id int not null,
foreign key (classe_id) references tb_classe (id)
);

insert into tb_classe (classe, habilidade) values ("Guerreiro" , "Força");
insert into tb_classe (classe, habilidade) values ("Mago" , "Mágica");
insert into tb_classe (classe, habilidade) values ("Arqueiro" , "Mágica");
insert into tb_classe (classe, habilidade) values ("Espadachim" , "Força");
insert into tb_classe (classe, habilidade) values ("Guardião" , "Força");

insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values
		("Lobo Voraz" , 80, 1300, 2000, 5),
        ("Guardião da Tempestade" , 70, 1500, 2000, 3),
        ("Tempus", 80, 3000, 1800, 5),
        ("Carion", 56, 2500, 2000, 1),
        ("Berdek Faello", 75, 3000,2000, 3),
        ("Hell Rider", 80, 2000, 1500, 2),
        ("Dragão das Sombras", 80, 3000, 2000, 4),
        ("Eurostia da Luz", 80, 3000, 2000, 2);
        
select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa > 1000 and defesa < 2000;
select * from tb_personagens where nome like "%C%";

select * from tb_classe
inner join tb_personagens on tb_classe.id = tb_personagens.classe_id
where classe = "Arqueiro";
