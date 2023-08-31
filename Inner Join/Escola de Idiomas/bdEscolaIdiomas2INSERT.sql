USE bdEscolaIdiomas2
INSERT INTO tbAluno (nomeAluno, dataNascAluno, rgAluno, naturalidadeAluno)
 VALUES  ('Paulo Santos', '03/10/2000', '82.292.122-0', 'SP')
        ,('Maria da Gloria', '10/03/1999', '42.233,12-0', 'SP')
        ,('Pedro Nogueira da Silva', '04/04/1998', '23.533.211-9', 'SP')
        ,('Gilson Barros Silva', '09/09/1995', '34.221.111-x', 'PE')
        ,('Mariana Barbosa Santos', '10/10/2001', '54.222.122-9', 'RJ')
	    ,('Alessandro Pereira', '10/11/2003', '24.402.454-9', 'ES')
	    ,('Aline Melo', '10/08/2001', '88.365.012-3', 'RJ')

INSERT INTO tbCurso (nomeCurso, cargaHorariaCurso, valorCurso)
VALUES   ('Inglês', 2000, '356.00')
        ,('Alemão', 3000, '478.00')
	    ,('Espanhol', 4000, '500.00')


INSERT INTO tbTurma (nomeTurma,codCurso, horarioTurma )
VALUES   ('1|A', 1, '12:00:00' )
		,('1|C', 3, '18:00:00')
        ,('1|B', 1, '18:00:00')
	    ,('1AA', 2, '19:00:00')

INSERT INTO tbMatricula (dataMatricula, codAluno, codTurma)
VALUES  ('10/03/2015', 1, 1)
       ,('05/04/2014', 2, 1)
	   ,('05/04/2014', 2, 4)
       ,('05/03/2012', 3, 2)
       ,('03/03/2016', 1, 3)
       ,('05/07/2015', 4, 2)
       ,('07/05/2015', 4, 3)

	  