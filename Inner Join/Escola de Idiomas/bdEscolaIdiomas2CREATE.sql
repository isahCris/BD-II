CREATE DATABASE bdEscolaIdiomas2 --DROP DATABASE bdEscola
USE bdEscolaIdiomas2
CREATE TABLE tbAluno(
    codAluno INT PRIMARY KEY IDENTITY (1,1)
    , nomeAluno VARCHAR(65) NOT NULL
    , dataNascAluno SMALLDATETIME NOT NULL
    , rgAluno VARCHAR(14) NOT NULL
    , naturalidadeAluno VARCHAR(5) NOT NULL
)
CREATE TABLE tbCurso(
    codCurso INT PRIMARY KEY IDENTITY (1,1)
    , nomeCurso VARCHAR(45)
    , cargaHorariaCurso INT NOT NULL
    , valorCurso SMALLMONEY NOT NULL
)
CREATE TABLE tbTurma(
    codTurma INT PRIMARY KEY IDENTITY (1,1)
    , nomeTurma VARCHAR(35)
    , horarioTurma SMALLDATETIME NOT NULL
    , codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
)

CREATE TABLE tbMatricula(
    codMatricula INT PRIMARY KEY IDENTITY (1,1)
    , dataMatricula  SMALLDATETIME NOT NULL
    , codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
    , codTurma INT FOREIGN KEY REFERENCES tbTurma(codTurma)
)