--SELECT--bdEstoque--16/05/2023--

USE bdEstoque 

--1--Criar uma consulta que retorne o código do produto,o nome do produto e o nome do fabricante somente daqueles produtos que custam igual a o valor mais alto;
SELECT idProduto, nomeProduto, nomeFabricante  FROM tbProduto
	INNER JOIN tbFabricante
		ON (tbProduto.idfabricante = tbFabricante.idFabricante)
			 WHERE  valorProduto in(SELECT MAX(valorProduto )AS 'Preco máximo' FROM tbProduto)

--2--Criar uma consulta que retorne o nome do produto e o nome do fabricante e o valor somente dos produtos que custem acima do valor m�dio dos produtos em estoque 
SELECT nomeProduto, nomeFabricante  FROM tbProduto
	INNER JOIN tbFabricante
		ON (tbProduto.idfabricante = tbFabricante.idFabricante)
			 WHERE  valorProduto >(SELECT AVG(valorProduto )AS 'Preço médio' FROM tbProduto)

--3--Criar uma consulta que retorne o nome dos clientes que tiveram vendas com valor acima do valor médio das vendas 
SELECT nomeCliente FROM tbCliente
	INNER JOIN tbVenda
		ON (tbCliente.idCliente = tbVenda.idCliente)
			WHERE valorTotalVenda >(SELECT AVG(valorTotalVenda )AS 'Valor médio' FROM tbVenda)

--4--Criar uma consulta que retorne o nome e o preço dos produtos mais caros
SELECT nomeProduto, valorProduto  FROM tbProduto
	WHERE  valorProduto in(SELECT MAX(valorProduto )AS 'Preço máximo' FROM tbProduto)

--5--Criar uma consulta que retorne o nome e o preço do produto mais barato
SELECT nomeProduto, valorProduto  FROM tbProduto
	WHERE  valorProduto in(SELECT MIN(valorProduto )AS 'Preço mínimo' FROM tbProduto)
