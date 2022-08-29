Questões:
--4 SQLs de consulta:
--a. Uma consulta mostrando todos os produtos cadastrados, com o nome da categoria e o nome do funcionário que o cadastrou; (5pontos)

select c.nome as NomeCategoria, f.nome as NomeFuncionario, p.nome_produto, p.qtd_estoque, p.valor_unitario, p.data_cadastro, p.data_fabricacao 
	from produto as p
	left join categoria as c on p.id_categoria = c.id 
	left join funcionario as f on p.id_funcionario = f.id
	order by  p.data_cadastro desc

--b. Uma consulta mostrando todos os pedidos feitos (sem os itens do pedido), com o nome e telefone do cliente; (5 pontos)
select cl.nome, cl.num_telefone, p.numero_pedido, p.valor_pedido, p.data_pedido, hora_pedido from pedido as p
left join cliente as cl on cl.id = p.id_cliente
order by cl.nome, p.numero_pedido 

--c. Uma consulta mostrando todos os pedidos feitos, com seus itens, mostrando: número do pedido, nome do cliente, data do
--pedido, nome do produto comprado e a quantidade comprada de cada produto; (5 pontos)
select p.numero_pedido, cl.nome, p.data_pedido, pr.nome_produto, ip.quantidade, p.valor_pedido from pedido as p
join cliente as cl on p.id_cliente = cl.id
join itens_pedido ip on p.id = ip.id_pedido 
join produto pr on pr.id = ip.id_produto 
order by numero_pedido 


-- d. Uma consulta mostrando a quantidade de pedidos por cliente, com resultado ordenado por nome do cliente, de modo
--crescente. (5 pontos)
select  count(p.id) as QuantPedido, cl.nome from pedido as p
join cliente as cl on p.id_cliente = cl.id 
group by nome
order by QuantPedido 


--5. 2 SQLs de atualização:
--5.A.  Um SQL que mude o salário de todos os funcionários: 
--eles passarão a ganhar R$ 500,00 a mais; (5 pontos)

update funcionario set salario = salario + 500

--5.B. Um SQL que altere o email e o telefone de um cliente qualquer
--cadastrado. (5 pontos)

update cliente set email = 'habnerPhil@email.com', num_telefone = '996100099'
where login = 'HabnerPh'

--6. SQL de exclusão, dos clientes que foram cadastrados sem o caractere
--“@” no email ou que possuem uma senha com menos de 8 caracteres.
--(5 pontos)

-- select * from cliente where email not like ('%@%') and CHAR_LENGTH(cliente.senha) < 8

delete from cliente where email not like ('%@%')
and CHAR_LENGTH(cliente.senha) < 8



	
