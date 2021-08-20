create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
id int primary key auto_increment,
nomePizzaiolo varchar (30),
tamanho varchar (30),
adicional boolean
);

create table tb_pizza(
id int primary key auto_increment,
sabor varchar (30),
ingrediente varchar(30),
preco decimal (6,2),
borda varchar (30),
combo boolean,
categoria_id int not null,
foreign key(categoria_id) references tb_categoria (id)
);

insert into tb_categoria (nomePizzaiolo, tamanho, adicional) values
	("Carlos Roberto" , "Brotinho",true),
	("Renato Silveira" , "Média", false),
	("Marcelo Constantino", "Grande", true);

insert into tb_pizza (sabor, ingrediente, preco, borda, combo, categoria_id) values
	("Mussarela", "Farinha Refinada", 3.00, "Borda Recheada", true, 1),
    ("Calabresa", "Farinha Padrão", 55.50, "Borda Recheada", false, 2),
    ("Baiana", "Farinha Fina", 55.50, "Borda Recheada", true, 3),
    ("Moda da Casa", "Farinha Refinada", 35.50, "Sem Borda Recheada",false, 2),
    ("Brócolis com Bacon", "Farinha Padrão", 60.00, "Sem Borda Recheada",true, 3),
    ("Especial Tudão", "Farinha Padrão", 60.50, "Borda Recheada",false, 1),
    ("Peperoni", "Farinha Fina", 65.50, "Sem Borda Recheada", true, 2), 
    ("Chocolate", "Farinha Padrão", 38.50, "Borda Recheada", false, 1);
    
    select * from tb_pizza where preco > 45.00;
    select * from tb_pizza where preco > 29.00 and preco < 60.00; 
    select * from tb_pizza where sabor like "%C%";
    
    select * from tb_pizza
    inner join tb_categoria where tb_pizza.categoria_id = tb_categoria.id;
    
    select * from tb_pizza
    inner join tb_categoria where tb_pizza.categoria_id = tb_categoria.id and tb_pizza.borda = "Borda Recheada";
    
    

    