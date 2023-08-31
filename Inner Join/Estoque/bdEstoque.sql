------EXERCÍCIO DE BD
USE bdEstoque

----Listar as descrições dos produtos ao lado do nome dos fabricantes;
SELECT descricaoProduto, nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.idFabricante = tbFabricante.idFabricante

---Listar as descrições dos produtos ao lado do nome dos fornecedores;
SELECT descricaoProduto, nomeFornecedor FROM tbProduto
	INNER JOIN tbFornecedor
		ON tbProduto.idFornecedor = tbFornecedor.idFornecedor

--	Listar a soma das quantidades dos produtos agrupadas pelo nome do fabricante;




--	Listar o total das vendas ao lado do nome do cliente;
--	Listar a média dos preços dos produtos agrupados pelo nome do fornecedor;
--	Listar todas a soma das vendas agrupadas pelo nome do cliente em ordemalfabética;
--	Listar a soma dos preços dos produtos agrupados pelo nome do fabricante;
--	Listar a média dos preços dos produtos agrupados pelo nome do fornecedor
--	Listar a soma das vendas agrupadas pelo nome do produto
--	Listar a soma das vendas pelo nome do cliente somente das vendas realizadas em fevereiro de 2014

