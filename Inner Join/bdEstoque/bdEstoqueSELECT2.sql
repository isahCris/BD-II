--EXEMPLOS DE AULA
 USE bdEstoque

SELECT idCliente, nomeCliente, cpfCliente FROM tbCliente
	WHERE MONTH(dataNascCliente) IN (02,03,05)

---Listar o nome do cliente ao lado do nome do fornecedor
SELECT DISTINCT nomeCliente, nomeFornecedor FROM tbCliente	
	INNER JOIN tbVenda ON tbCliente.idCliente = tbVenda.idCliente
		INNER JOIN tbItensVenda ON tbVenda.idVenda = tbItensVenda.idVenda
			INNER JOIN tbProduto ON tbItensVenda.idProduto = tbProduto.idProduto
				INNER JOIN tbFornecedor ON tbProduto.idFornecedor = tbFornecedor.idFornecedor
					WHERE MONTH(dataNascCliente) = 02

---Listar a soma das vendas por cliente
SELECT idCliente, SUM(valorTotalVenda) 'Soma das vendas por cliente' FROM tbVenda
	GROUP BY idCliente

--Listar a soma de vendas por cliente
SELECT nomeCliente, SUM(valorTotalVenda) 'Soma do total de vendas por cliente' FROM tbCliente
	INNER JOIN tbVenda 
		ON tbCliente.idCliente = tbVenda.idCliente
			GROUP BY nomeCliente
				ORDER BY [Soma do total de vendas por cliente] DESC



		