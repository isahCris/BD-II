------EXERCÍCIO DE BD
USE bdEstoque

---A-Listar as descrições dos produtos ao lado do nome dos fabricantes;
SELECT descricaoProduto, nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.idFabricante = tbFabricante.idFabricante
			 ORDER BY nomeFabricante

---B-Listar as descrições dos produtos ao lado do nome dos fornecedores;
SELECT descricaoProduto, nomeFornecedor FROM tbProduto
	INNER JOIN tbFornecedor
		ON tbProduto.idFornecedor = tbFornecedor.idFornecedor
			ORDER BY nomeFornecedor

--C--Listar a soma das quantidades dos produtos agrupadas pelo nome do fabricante;
SELECT SUM(quantProduto) 'Soma das quantidades dos produtos', nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.idFabricante = tbFabricante.idFabricante
			GROUP BY nomeFabricante
				ORDER BY [Soma das quantidades dos produtos] DESC
		
--D--Listar o total das vendas ao lado do nome do cliente;
SELECT COUNT(idVenda) 'Total de  vendas', nomeCliente FROM tbCliente
	INNER JOIN tbVenda
		ON tbVenda.idCliente = tbCliente.idCliente
			GROUP BY nomeCliente
				ORDER BY [Total de  vendas] DESC

--E--Listar a média dos preços dos produtos agrupados pelo nome do fornecedor;
SELECT AVG(valorProduto) 'Media de preços dos produtos', nomeFornecedor FROM tbProduto
	INNER JOIN tbFornecedor
		ON tbProduto.idFornecedor = tbFornecedor.idFornecedor
			GROUP BY nomeFornecedor
				ORDER BY [Media de preços dos produtos]

--F--Listar todas a soma das vendas agrupadas pelo nome do cliente em ordem alfabética;
SELECT SUM(idVenda) 'Total de  vendas', nomeCliente FROM tbVenda
	INNER JOIN tbCliente
		ON tbCliente.idCliente = tbVenda.idCliente
			GROUP BY nomeCliente
 
--G--Listar a soma dos preços dos produtos agrupados pelo nome do fabricante;
SELECT SUM(valorProduto) 'Soma dos produtos', nomeFabricante FROM tbFabricante 
	INNER JOIN tbProduto
		ON tbProduto.idFabricante = tbFabricante.idFabricante
			GROUP BY nomeFabricante
				ORDER BY [Soma dos produtos]

---SELECT SUM(valorProduto) 'Soma dos preços dos produtos', nomeFabricante FROM tbProduto 
	----INNER JOIN tbFabricante
		----ON tbFabricante.idFabricante = tbProduto.idFabricante
			---GROUP BY nomeFabricante
				---ORDER BY [Soma dos preços dos produtos]

--H--Listar a média dos preços dos produtos agrupados pelo nome do fornecedor
SELECT AVG(precoProduto) 'Média dos produtos', nomeFornecedor FROM tbProduto
	
--I--Listar a soma das vendas agrupadas pelo nome do produto
SELECT SUM(idVenda) 'Soma das vendas', descricaoProduto FROM tbProduto
	INNER JOIN tbVenda
		ON tbVenda.idProduto = tbProduto.idProduto
			GROUP BY descricaoProduto

--J--Listar a soma das vendas pelo nome do cliente somente das vendas realizadas em fevereiro de 2014

