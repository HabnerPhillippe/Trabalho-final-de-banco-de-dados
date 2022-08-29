--Funcionário Columns:
CREATE TABLE  funcionario (
	id serial NOT NULL,
	nome varchar(50) NOT NULL,
	cpf varchar(11) NOT NULL,
	salario decimal(10,2) NOT NULL,
	CONSTRAINT funcionario_pk PRIMARY KEY (id)
);


--Categoria Columns :

CREATE TABLE  categoria (
	id serial NOT NULL,
	nome varchar(20) NOT NULL,
	CONSTRAINT categoria_pk PRIMARY KEY (id)
);


--Produto Columns:
CREATE TABLE  produto (
	id serial NOT NULL,
	id_funcionario integer NOT NULL,
	id_categoria integer NOT NULL,
	nome_produto varchar(50) NOT NULL,
	qtd_estoque integer NOT NULL,
	valor_unitario decimal(10,2) NOT NULL,
	data_cadastro date NULL,
	data_fabricacao date NULL,
	CONSTRAINT produto_pk PRIMARY KEY (id),
	CONSTRAINT produto_fk FOREIGN KEY (id_funcionario) REFERENCES  funcionario(id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT produto_fk_1 FOREIGN KEY (id_categoria) REFERENCES  categoria(id) ON DELETE CASCADE ON UPDATE CASCADE
);



--Cliente Columns:
CREATE TABLE  cliente (
	id serial NOT NULL,
	nome varchar(50) NOT NULL,
	login varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	senha varchar(50) NOT NULL,
	cpf varchar(11) NOT NULL,
	data_nascimento date NOT NULL,
	num_telefone varchar(11) NOT NULL,
	CONSTRAINT cliente_pk PRIMARY KEY (id)
);


--Endereço Columns:
CREATE TABLE  endereco (
	id_cliente integer NOT NULL,
	uf char(2) NOT NULL,
	cidade varchar(50) NOT NULL,
	cep varchar(8) NOT NULL,
	CONSTRAINT endererco_fk FOREIGN KEY (id_cliente) REFERENCES  cliente(id) ON DELETE CASCADE ON UPDATE CASCADE
);

--Pedido Columns:
CREATE TABLE  pedido (
	id serial NOT NULL,
	id_cliente integer NOT NULL,
	numero_pedido integer NOT NULL,
	valor_pedido double PRECISION,
	data_pedido date NOT NULL DEFAULT current_date,
	hora_pedido TIME NOT NULL DEFAULT CURRENT_TIME,
	CONSTRAINT pedido_pk PRIMARY KEY (id),
	CONSTRAINT pedido_fk FOREIGN KEY (id_cliente) REFERENCES  cliente(id)
);


--Intens_Pedido Columns:
CREATE TABLE  itens_pedido (
	id_pedido integer NOT NULL,
	id_produto integer NOT NULL,
	quantidade integer NOT NULL,
	primary key (id_pedido),
	CONSTRAINT itens_pedido_fk FOREIGN KEY (id_pedido) REFERENCES  pedido(id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT itens_produto_fk FOREIGN KEY (id_produto) REFERENCES  produto(id) ON DELETE CASCADE ON UPDATE CASCADE)