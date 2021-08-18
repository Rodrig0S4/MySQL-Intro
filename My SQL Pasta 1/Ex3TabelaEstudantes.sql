/*/ Ex3 Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade. /*/

use Escola;

create table Estudantes (
id_Estudantes int primary key auto_increment,
notas float(3,2),
nome varchar(40),
classe varchar(40),
cpf varchar(40),
telefone varchar(40)
);

insert into Estudantes Value
(null, 7 , ' Carlos Almeida ' , ' 1A ' , ' 555.444.121.40 ' , '5088-8784'),
(null, 3 , ' Amanda Carvalho ', ' 1A ' , '555.442.123.10 ' ,' 5088-8741' ),
(null, 6 , ' Maria Madalena ', ' 1A ' , '554.442.122.30 ' ,' 5088-8642' ),
(null, 7 , ' Gustavo Carvalho ', ' 1A ' , '556.445.127.X ' ,' 5188-8721' ),
(null, 7 , ' Caio Mariano ', ' 1A ' , '505.422.173.40 ' ,' 5288-8744' );

select * from Estudantes;
select * from Estudantes where notas > 7;
select * from Estudantes where notas < 7;

update Estudantes set notas = 8 where id_Estudantes = 4;

