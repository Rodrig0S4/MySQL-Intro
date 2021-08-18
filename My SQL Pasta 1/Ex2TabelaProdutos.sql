use Estoque1;

/*/"Ex 2 Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500." /*/

create table Produtos (
idEstoque int primary key auto_increment, 
nome varchar(40),
marca varchar(40),
preço decimal(10,2),
categoria varchar(40),
validade varchar(40),
quantidade int(5)
);

insert into Produtos Values
(null, ' Cerveja ', ' Heineken ' ,  3.80 ,' bebibas' , '20.10.2022' , ' 2 '),
(null, ' Refrigerante ', ' Coca ' ,  10.00 ,' bebidas ' , '20.11.2022', ' 3 '),
(null, ' Refrigerante ', ' Guarana ' ,  10.00 ,' bebidas ' , '20.11.2022', ' 3 '),
(null, ' Cachaça ', ' Pirassununga ' ,  5.00 , 'bebidas' , '30.07.2022', ' 1 '),
(null, 'Televisor ', ' Sansung ' , 2000 , 'eletroeletronicos' , '30.07.2024',' 1 '),
(null, 'Radio', ' Sansung ' , 1500 , 'eletroeletronicos' , '30.07.2024',' 1 '), 
(null, 'Televisor ', ' Panassonic ' , 2000 , 'eletroeletronicos' , '30.07.2024',' 1 ' ),
(null, 'Video-Game', ' Xbox X ' , 4000 , 'eletroeletronicos' , '30.07.2024',' 1 ' ); 

select * from Produtos;
select * from Produtos where preço > 500;
select * from Produtos where preço < 500;

update Produtos set preço = 3000.00 where idEstoque = 5;

