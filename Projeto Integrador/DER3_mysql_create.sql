CREATE TABLE `usuario` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`cpf` varchar(11) NOT NULL,
	`nome_completo` varchar(50) NOT NULL,
	`email` varchar(50) NOT NULL,
	`senha` varchar(15) NOT NULL,
	`celular` varchar(11) NOT NULL,
	`telefone` varchar(10),
	`cep` varchar(8) NOT NULL,
	`endereco` varchar(50) NOT NULL,
	`cidade` varchar(30) NOT NULL,
	`estado` varchar(2) NOT NULL,
	`admin` varchar(20) NOT NULL DEFAULT false,
	PRIMARY KEY (`id`)
);

CREATE TABLE `produto` (
	`codigo` INT NOT NULL AUTO_INCREMENT,
	`nome` varchar(30) NOT NULL,
	`marca` varchar(30) NOT NULL,
	`preco` DECIMAL(10,2) NOT NULL,
	`categoria_mae` varchar(50) NOT NULL,
	`categoria_filha` varchar(50) NOT NULL,
	`user` INT NOT NULL,
	PRIMARY KEY (`codigo`)
);

CREATE TABLE `status_venda` (
	`id` INT NOT NULL,
	`id_usuario` varchar(11) NOT NULL,
	`codigo_produto` INT NOT NULL,
	`status` varchar(20) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `produto` ADD CONSTRAINT `produto_fk0` FOREIGN KEY (`user`) REFERENCES `usuario`(`id`);

ALTER TABLE `status_venda` ADD CONSTRAINT `status_venda_fk0` FOREIGN KEY (`id_usuario`) REFERENCES `usuario`(`id`);

ALTER TABLE `status_venda` ADD CONSTRAINT `status_venda_fk1` FOREIGN KEY (`codigo_produto`) REFERENCES `produto`(`codigo`);




