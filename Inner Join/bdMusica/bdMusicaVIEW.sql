CREATE DATABASE bdMusica --DROP DATABASE bdMusica

USE bdMusica

GO

CREATE TABLE tbAutor (
	idAutor INT PRIMARY KEY IDENTITY(1,1)
	, nomeAutor VARCHAR(50) NOT NULL

)

CREATE TABLE tbMusica (
	idMusica INT PRIMARY KEY IDENTITY(1,1)
	, nomeMusica VARCHAR(50) NOT NULL
	, duracaoMusica DECIMAL NOT NULL
	, dataComposicao DATE 
	, valorDireitoAutoral INT NOT NULL
)

CREATE TABLE tbAutoria (
	idAutoria INT PRIMARY KEY IDENTITY(1,1)
	, idAutor INT FOREIGN KEY REFERENCES tbAutor(idAutor) 
	, idMusica INT FOREIGN KEY REFERENCES tbMusica (idMusica) 
		
)