--TAREFA DE BD

USE bdEscolaIdiomas2

--1--Apresentar os nomes dos alunos ao lado do nome dos  cursos que eles fazem;
SELECT nomeAluno, nomeCurso FROM tbAluno
	INNER JOIN tbMatricula
		ON tbAluno.codAluno = tbMatricula.codAluno
			INNER JOIN tbTurma
				ON tbMatricula.codTurma = tbTurma.codTurma
					INNER JOIN tbCurso
						ON tbCurso.codCurso = tbTurma.codCurso
							ORDER BY nomeCurso
							
					
--2--Apresentar a quantidade de alunos matriculados por nome do curso;
SELECT COUNT(codAluno) AS 'Quantidade de alunos matriculados', nomeCurso FROM tbMatricula
	INNER JOIN tbTurma
		ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso
				ON tbCurso.codCurso = tbTurma.codCurso
					GROUP BY nomeCurso

--3--Apresentar a quantidade de alunos matriculados por nome da turma;
SELECT COUNT(codAluno) AS 'Qtde de alunos matriculados', nomeTurma FROM tbMatricula
	INNER JOIN tbTurma
		ON tbMatricula.codTurma = tbTurma.codTurma
			GROUP BY nomeTurma

--4--Apresentar a quantidade de alunos que fizeram matricula em março de 2016;  
SELECT COUNT(tbMatricula.codAluno) AS 'Qtde de alunos matriculados em março' FROM tbAluno 
	INNER JOIN tbMatricula
		ON tbAluno.codAluno = tbMatricula.codAluno
			WHERE DATEPART(MONTH, dataMatricula) = 3 AND DATEPART(YEAR, dataMatricula) = 2016
				GROUP BY nomeAluno
					ORDER BY [Qtde de alunos matriculados em março]

--5--Apresentar o nome dos alunos em ordem alfabética ao lado do nome das turmas e os nomes dos cursos em que estão matriculados;
SELECT nomeAluno, nomeTurma, nomeCurso FROM tbAluno
	INNER JOIN tbMatricula
		ON tbAluno.codAluno = tbMatricula.codAluno
			INNER JOIN tbTurma
				ON tbMatricula.codTurma = tbTurma.codTurma
					INNER JOIN tbCurso
						ON tbCurso.codCurso = tbTurma.codCurso
							ORDER BY nomeAluno
	
--6--Apresentar o nome dos cursos e os horários em que eles são oferecidos;
SELECT  nomeCurso, CONVERT(VARCHAR(12), horarioTurma, 114) AS 'Horario' FROM tbCurso
	INNER JOIN tbTurma
			ON tbCurso.codCurso = tbTurma.codCurso
				ORDER BY horarioTurma 
				
			
--7--Apresentar a quantidade de alunos nascidos por estado que estejam matriculados no curso de inglês:
SELECT  COUNT(tbMatricula.codAluno) AS 'Alunos matriculados', naturalidadeAluno  FROM tbAluno  
	INNER JOIN tbMatricula
		ON tbAluno.codAluno = tbMatricula.codAluno
			INNER JOIN tbTurma
				ON tbMatricula.codTurma = tbTurma.codTurma
					INNER JOIN tbCurso
						ON tbCurso.codCurso = tbTurma.codCurso
							WHERE nomeCurso LIKE 'I%'
								GROUP BY naturalidadeAluno 
								
--8--Apresentar o nome dos alunos ao lado da data de matrícula no formato dd/mm/aaaa:
SELECT nomeAluno, CONVERT (VARCHAR (10), dataMatricula, 103) AS  'Data da matricula'  FROM tbAluno
	INNER JOIN tbMatricula
		ON tbAluno.codAluno = tbMatricula.codAluno
			ORDER BY dataMatricula

--9--Apresentar os alunos cujo nome comece com A e que estejam matriculados no curso de inglês:
SELECT nomeAluno, nomeCurso FROM tbAluno
	INNER JOIN tbMatricula
		ON tbAluno.codAluno = tbMatricula.codAluno
			INNER JOIN tbTurma
				ON tbMatricula.codTurma = tbTurma.codTurma
					INNER JOIN tbCurso
						ON tbCurso.codCurso = tbTurma.codCurso
							WHERE nomeAluno  LIKE 'A%' AND nomeCurso LIKE 'I%'
								ORDER BY nomeAluno
								
--10--Apresentar a quantidade de matriculas feitas no ano de 2016:
SELECT COUNT (codMatricula) AS 'Qtde de alunos matriculados em 2016' FROM tbMatricula 
	WHERE DATEPART(YEAR, dataMatricula) = 2016

--11--Apresentar a quantidade de matriculas por nome do curso:
SELECT COUNT(codMatricula) AS 'Qtde de matriculas', nomeCurso FROM tbMatricula
	INNER JOIN tbTurma
		ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso
				ON tbTurma.codCurso = tbCurso.codCurso
					GROUP BY nomeCurso

--12--Apresentar a quantidade de alunos que fazem os cursos que custam mais de R$300,00:
SELECT COUNT(tbMatricula.codAluno) AS 'Qtde de alunos' FROM tbAluno
	INNER JOIN tbMatricula
		ON tbAluno.codAluno = tbMatricula.codAluno
			INNER JOIN tbTurma
				ON tbMatricula.codTurma = tbTurma.codTurma
					INNER JOIN tbCurso
						ON tbTurma.codCurso = tbCurso.codCurso
							WHERE valorCurso > 300
								ORDER BY [Qtde de alunos]

--13--Apresentar os nomes dos alunos que fazem o curso de alemão:
SELECT nomeAluno, nomeCurso FROM tbAluno
	INNER JOIN tbMatricula
		ON tbAluno.codAluno = tbMatricula.codAluno
			INNER JOIN tbTurma
				ON tbMatricula.codTurma = tbTurma.codTurma
					INNER JOIN tbCurso
						ON tbTurma.codCurso = tbCurso.codCurso
							WHERE nomeCurso LIKE 'A%'
								ORDER BY nomeAluno