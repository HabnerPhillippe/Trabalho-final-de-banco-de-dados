-- Inserir cadastro de categoria
INSERT INTO  categoria (id,nome) VALUES
	 (1,'limpeza'),
	 (2,'padaria'),
	 (3,'laticionios'),
	 (4,'bebidas'),
	 (5,'eletrodomestico');

-- Inserir cadastro de cliente.
INSERT INTO  cliente (id,nome,login,email,senha,cpf,data_nascimento, num_telefone) VALUES
	 (3,'Marcia Almeida','MarciaA','marcia@email.com','marcia123','12345678903','1992-05-24','993048936'),
	 (6,'Jonathan Marques','JonathanM','jonathan@email.com','jonathan123','12345678906','1990-09-12','997028223'),
	 (2,'Tayna Mayer','TaynaM','tayna@email.com','tayna12','12345678902','1995-10-30','998932575'),
	 (4,'Priscila Martins','PriscilaM','priscilaemail.com','priscila123','12345678904','1991-11-04','997385510'),
	 (5,'Yuri Ramos','YuriR','yuri@email.com','yuri123','12345678905','1994-07-15','981842757'),
	 (1,'Habner Phillippe','HabnerPh','habnerPhilipe@email.com','habner123456','12345678901','1999-12-04','996123272')
	 (7,'Luiz Henrique','Bulinha','bulinhaemail.com','bula1','12342978903','1970-01-05','999595665')

-- Inserir cadastro de endereços
INSERT INTO  endereco (id_cliente,uf,cidade,cep) VALUES
	 (3,'RJ','Friburgo','25112345'),
	 (4,'RJ','Teresopolis','25212345'),
	 (1,'RJ','Duque de Caxias','25312345'),
	 (2,'RJ','Friburgo','25412345'),
	 (6,'RJ','Teresopolis','25012345'),
	 (5,'RJ','Teresopolis','25612345');

-- Inserir o cadastro de funcionario
INSERT INTO  funcionario (id,nome,cpf,salario) VALUES
	 (4,'Fábio Pereira','12345678911',1250.00),
	 (5,'Josefina Araujo','12345678912',1250.00),
	 (6,'Joaquim da Silva','12345678913',1250.00),
	 (7,'MarlomSantos','12345678914',1250.00),
	 (3,'José Antonio','12345678910',1250.00);

-- Inserir os pedidos
INSERT INTO  pedido (id,id_cliente,numero_pedido,valor_pedido) VALUES
	 (1,2,2001,120.00),
	 (2,4,2002,15.00),
	 (3,1,2003,14.40),
	 (4,5,2004,8.00),
	 (5,6,2005,12.00),
	 (6,3,2006,400.00),
	 (7,2,2007,3.00),
	 (8,6,2008,120.00),
	 (9,4,2009,120.00),
	 (10,1,2010,5.00),
	 (11,4,2011,25.00),
	 (12,1,2012,90.00);

--Inserir o cadastro de produto.
INSERT INTO  produto (id,id_funcionario,id_categoria,nome_produto,qtd_estoque,valor_unitario,data_cadastro,data_fabricacao) VALUES
	 (1,4,2,'Pão',30,0.80,'2022-08-26','2022-08-26'),
	 (2,7,2,'Bolo de pote',30,5.00,'2022-08-26','2022-08-26'),
	 (3,5,1,'Desinfetante',80,3.00,'2022-06-15','2022-05-12'),
	 (4,4,4,'Água',100,2.00,'2022-07-28','2022-04-07'),
	 (5,6,3,'Leite',80,9.00,'2022-07-12','2022-05-18'),
	 (6,7,5,'Cafeteira',80,400.00,'2022-03-13','2022-01-14'),
	 (7,6,3,'Iogurte',80,3.00,'2022-07-12','2022-05-03'),
	 (8,3,1,'Cloro',80,3.00,'2022-06-15','2022-04-08'),
	 (9,5,4,'Refrigerante',100,4.00,'2022-07-28','2022-04-19'),
	 (10,3,5,'Sanduicheira',50,120.00,'2022-03-13','2022-02-15');

--Inserir a quantidade de itens vendidos.	 
INSERT INTO  itens_pedido (id_pedido,id_produto,quantidade) VALUES
	 (2,2,3),
	 (5,7,4),
	 (3,1,18),
	 (1,10,1),
	 (6,6,1),
	 (7,8,1),
	 (8,10,1),
	 (9,10,1),
	 (10,2,1),
	 (11,2,5),
	 (12,5,10),
	 (4,4,4);
	 
	 
