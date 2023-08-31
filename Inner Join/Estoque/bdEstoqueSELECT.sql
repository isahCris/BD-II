------EXERCÍCIO DE BD
USE bdEstoque

----Listar as descrições dos produtos ao lado do nome dos fabricantes;
SELECT descricaoProduto, nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.idFabricante = tbFabricante.idFabricante
			 ORDER BY nomeFabricante

---Listar as descrições dos produtos ao lado do nome dos fornecedores;
SELECT descricaoProduto, nomeFornecedor FROM tbProduto
	INNER JOIN tbFornecedor
		ON tbProduto.idFornecedor = tbFornecedor.idFornecedor
			ORDER BY nomeFornecedor

--	Listar a soma das quantidades dos produtos agrupadas pelo nome do fabricante;
SELECT SUM(quantProduto) 'Soma das quantidades dos produtos', nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.idFabricante = tbFabricante.idFabricante
			GROUP BY nomeFabricante
				ORDER BY [Soma das quantidades dos produtos] DESC
		
--	Listar o total das vendas ao lado do nome do cliente;
SELECT COUNT(idVenda) 'Total de  vendas', nomeCliente FROM tbCliente
	INNER JOIN tbVenda
		ON tbVenda.idCliente = tbCliente.idCliente
			GROUP BY nomeCliente
				ORDER BY [Total de  vendas] DESC

--	Listar a média dos preços dos produtos agrupados pelo nome do fornecedor;
SELECT AVG(valorProduto) 'Media de preços dos produtos', nomeFornecedor FROM tbProduto
	INNER JOIN tbFornecedor
		ON tbProduto.idFornecedor = tbFornecedor.idFornecedor
			GROUP BY nomeFornecedor
				ORDER BY [Media de preços dos produtos]

--	Listar todas a soma das vendas agrupadas pelo nome do cliente em ordem alfabética;
SELECT SUM(idVenda) 'Total de  vendas', nomeCliente FROM tbCliente
	INNER JOIN tbVenda
		ON tbVenda.idCliente = tbCliente.idCliente
			GROUP BY nomeCliente
 


--	Listar a soma dos preços dos produtos agrupados pelo nome do fabricante;
--	Listar a média dos preços dos produtos agrupados pelo nome do fornecedor
--	Listar a soma das vendas agrupadas pelo nome do produto
--	Listar a soma das vendas pelo nome do cliente somente das vendas realizadas em fevereiro de 2014

