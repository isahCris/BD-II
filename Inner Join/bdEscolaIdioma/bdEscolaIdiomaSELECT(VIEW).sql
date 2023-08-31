USE bdEscolaIdioma

CREATE VIEW vwPreco_Baixo as

	SELECT codCurso  'codigo', nomeCurso 'Curso', valorCurso 'Valor' 
	from tbCurso

		SELECT * FROM vwPreco_Baixo 
			WHERE Valor < (SELECT AVG(valorCurso) FROM tbCurso)

CREATE VIEW vwAlunos_Turma as
	SELECT  nomeCurso 'Curso', COUNT (tbMatricula.codAluno) 'aluno' FROM tbAluno
		INNER JOIN tbMatricula 
			ON tbAluno.codAluno = tbMatricula.codAluno
				INNER JOIN tbTurma
					ON tbMatricula.codTurma = tbTurma.codTurma
						INNER JOIN tbCurso
							ON tbTurma.codCurso = tbCurso.codCurso
								GROUP BY nomeCurso
									