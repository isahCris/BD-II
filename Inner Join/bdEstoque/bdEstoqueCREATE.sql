CREATE DATABASE bdEstoque --DROP DATABASE bdEstoque

USE bdEstoque

CREATE TABLE tbCliente(
	idCliente INT PRIMARY KEY IDENTITY(1,1) 
	, nomeCliente VARCHAR(75) NOT NULL
	, cpfCliente VARCHAR(14) NOT NULL
	, emailCliente VARCHAR(80) NOT NULL
	, sexoCliente CHAR(1) NOT NULL
	, dataNascCliente SMALLDATETIME CHECK(dataNascCliente < GETDATE()) NOT NULL
)

CREATE TABLE tbVenda(
	idVenda INT PRIMARY KEY IDENTITY(1,1) 
	, dataVenda SMALLDATETIME NOT NULL
	, valorTotalVenda SMALLMONEY NOT NULL
	, idCliente INT FOREIGN KEY REFERENCES tbCliente(idCliente)
)

CREATE TABLE tbFabricante(
	idFabricante INT PRIMARY KEY IDENTITY(1,1) 
	, nomeFabricante VARCHAR(30) NOT NULL
)

CREATE TABLE tbFornecedor(
	idFornecedor  INT PRIMARY KEY IDENTITY(1,1) 
	, nomeFornecedor VARCHAR(25) NOT NULL
	, contatoFornecedor VARCHAR(30)
)

CREATE TABLE tbProduto(
	idProduto INT PRIMARY KEY IDENTITY(1,1)  
	, nomeProduto VARCHAR(60) NOT NULL
	, valorProduto SMALLMONEY NOT NULL
	, quantProduto INT NOT NULL
	, idFabricante INT FOREIGN KEY REFERENCES tbFabricante(idFabricante)
	, idFornecedor INT FOREIGN KEY REFERENCES tbFornecedor(idFornecedor)
)

CREATE TABLE tbItensVenda(
	idItensVenda INT PRIMARY KEY IDENTITY(1,1) 
	, quantItensVenda INT NOT NULL
	, subTotalItensVenda SMALLMONEY NOT NULL 
	, idVenda INT FOREIGN KEY REFERENCES tbVenda(idVenda)
	, idProduto INT FOREIGN KEY REFERENCES tbProduto(idProduto)
)

--DROP DATABASE bdEstoque






















