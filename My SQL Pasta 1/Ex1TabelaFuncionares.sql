create database RH;
use RH; 
create table Funcionaries (
idFuncionario int primary key auto_increment, 
nome varchar(40),
idade varchar(40),
cargo varchar(40),
sexo varchar(40),
salario varchar(40)
);

insert into Funcionaries Values
(null, ' Caio ', ' 23 ' , ' Auxiliar Administrativo ', 'M' , '1400'),
(null, ' Angelica ', ' 25 ' , ' Auxiliar Administrativo ', 'F' , '1400'),
(null, ' Manoela ', ' 32 ' , ' Auxiliar de RH ', 'F' , '2300'),
(null, ' Larissa ', ' 26 ' , ' Auxiliar Administrativo ', 'M' , '1400'),
(null, ' Marcelo ', ' 27 ' , ' Auxiliar Administrativo ', 'M' , '1400'); 

select * from Funcionaries; 
select nome, salario from Funcionaries where salario > 2000;
select nome, salario from Funcionaries where salario < 2000;
update Funcionaries set cargo = 'Analista de RH' where idFuncionario = 3;
select * from Funcionaries;
insert into Funcionaries Values
(2, ' Angelica ', ' 25 ' , ' Auxiliar Administrativo ', 'F' , '1400');
select * from Funcionaries;
 

