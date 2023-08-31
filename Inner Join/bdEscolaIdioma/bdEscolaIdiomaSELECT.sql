USE bdEscolaIdioma

--a--Criar uma consulta que retorne o nome e o preço dos cursos que custem abaixo do valor médio;
SELECT nomeCurso, valorCurso  FROM tbCurso
	 WHERE  valorCurso <(SELECT AVG(valorCurso)AS 'Valor médio' FROM tbCurso)
--b--Criar uma consulta que retorne o nome e o rg do aluno mais novo;
SELECT nomeAluno, rgAluno FROM tbAluno
	WHERE dataNascimento IN (SELECT MAX(dataNascimento)AS 'Aluno mais novo' FROM tbAluno)

--c--Criar uma consulta que retorne o nome do aluno mais velho;
SELECT nomeAluno, rgAluno FROM tbAluno
	WHERE dataNascimento IN (SELECT MIN(dataNascimento)AS 'Aluno mais novo' FROM tbAluno)

--d--Criar uma consulta que retorne o nome e o valor do curso mais caro;
SELECT nomeCurso, valorCurso  FROM tbCurso
	 WHERE  valorCurso IN (SELECT MAX(valorCurso)AS 'Valor máximo' FROM tbCurso)

--e--Criar uma consulta que retorne o nome do aluno e o nome do curso, do aluno que fez a última matrícula
SELECT nomeAluno, nomeCurso FROM tbAluno
	INNER JOIN tbMatricula 
		ON tbAluno.codAluno = tbMatricula.codAluno
			INNER JOIN tbTurma
				ON tbMatricula.codTurma = tbTurma.codTurma
					INNER JOIN tbCurso
						ON tbTurma.codCurso = tbCurso.codCurso
							WHERE  dataMatricula IN (SELECT MAX(dataMatricula)AS 'Última matrícula' FROM tbMatricula)

--f--Criar uma consulta que retorne o nome do primeiro aluno a ser matriculado a ser matriculado na escola de idiomas 
SELECT nomeAluno FROM tbAluno
	INNER JOIN tbMatricula 
		ON tbAluno.codAluno = tbMatricula.codAluno
			INNER JOIN tbTurma
				ON tbMatricula.codTurma = tbTurma.codTurma
					INNER JOIN tbCurso
						ON tbTurma.codCurso = tbCurso.codCurso
							WHERE  dataMatricula IN (SELECT MIN(dataMatricula)AS 'Primeira matrícula' FROM tbMatricula)

--g--Criar uma consulta que retorne o nome, rg e data de nascimento de todos os alunos que estejam matriculados no curso de inglês
SELECT nomeAluno,rgAluno, dataNascimento FROM tbAluno
	INNER JOIN tbMatricula 
		ON tbAluno.codAluno = tbMatricula.codAluno
			INNER JOIN tbTurma
				ON tbMatricula.codTurma = tbTurma.codTurma
							WHERE codCurso  IN (SELECT codCurso FROM tbCurso WHERE codCurso = 1)
