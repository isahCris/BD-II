--DROP DATABASE bdEscolaIdiomas
CREATE DATABASE bdEscolaIdiomas

USE bdEscolaIdiomas

CREATE TABLE tbAluno (
	codAluno INT PRIMARY KEY IDENTITY (1,1)
	, nomeAluno VARCHAR(50) NOT NULL
	, rgAluno VARCHAR(20) NOT NULL
	, cpfAluno VARCHAR(20) NOT NULL
	, logradouroAluno VARCHAR(35) 
	, numeroAluno VARCHAR(10) NOT NULL
	, complementoAluno VARCHAR(15) NOT NULL
	, bairroAluno VARCHAR(40) NOT NULL
	, cepAluno VARCHAR(14) NOT NULL
	, cidadeAluno VARCHAR(20) NOT NULL
	, dataNascAluno SMALLDATETIME CHECK(dataNascAluno < GETDATE()) 
)

CREATE TABLE tbTelefoneAluno (
	codTelAluno INT PRIMARY KEY IDENTITY (1,1)
	, numTelAluno VARCHAR(20) 
	, codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno)
)

CREATE TABLE tbCurso(
	codCurso INT PRIMARY KEY IDENTITY (1,1)
	, nomeCurso VARCHAR(50) NOT NULL
	, valorCurso SMALLMONEY NOT NULL
) 

CREATE TABLE tbPeriodo (
	codPeriodo INT PRIMARY KEY IDENTITY (1,1)
	, descricaoPeriodo VARCHAR(30) NOT NULL
)

CREATE TABLE tbNivel (
	codNivel INT PRIMARY KEY IDENTITY (1,1)
	, descricaoNivel VARCHAR(50) NOT NULL
)

CREATE TABLE tbDiaSemana (
	codDiaSemana INT PRIMARY KEY IDENTITY (1,1)
	, diaSemana VARCHAR(30) NOT NULL
)

CREATE TABLE tbTurma (
	codTurma INT PRIMARY KEY IDENTITY (1,1)
	, descricaoTurma VARCHAR(50) NOT NULL
	, horario VARCHAR(8) NOT NULL
	, codCurso INT FOREIGN KEY REFERENCES tbCurso (codCurso) NOT NULL
	, codPeriodo INT FOREIGN KEY REFERENCES tbPeriodo (codPeriodo) NOT NULL
	, codNivel INT FOREIGN KEY REFERENCES tbNivel (codNivel) NOT NULL
	, codDiaSemana INT FOREIGN KEY REFERENCES tbDiaSemana (codDiaSemana) NOT NULL
)

CREATE TABLE tbMatricula (
	codMatricula INT PRIMARY KEY IDENTITY(1,1)
	, dataMatricula SMALLDATETIME CHECK (dataMatricula<GETDATE()) NOT NULL
	, codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno)  
	, codTurma INT FOREIGN KEY REFERENCES tbTurma (codTurma)
)

