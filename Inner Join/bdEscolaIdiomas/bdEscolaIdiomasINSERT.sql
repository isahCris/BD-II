USE bdEscolaIdiomas

INSERT INTO tbAluno (nomeAluno, rgAluno, cpfAluno, logradouroAluno, numeroAluno, complementoAluno, bairroAluno, cepAluno, cidadeAluno,dataNascAluno)
VALUES  ('Anna Jackson Delima Santos', '67890355-0','184.054.086-09', 'Rua Armando Siva Juiz Rosano', '59A', 'BLOCO F', 'Santa Mesa das Graças', '08797-088', 'Rosália', '06/07/2006')
	   , ('Sabrina Crista', '12345678-9','385.144.009-54', 'Rua Pero Perez', '77B', 'Casa B', 'São Rosse', '09999-099', 'Joãozinho', '13/09/2008')
	   , ('Péter Cavinská', '8765432-9','345.675.007-27', 'Rua Canadá', '98C', 'Casa 67', 'Santa Marcelina', '05632-098', 'São Roque', '12/07/2006')
	   , (' Rosa Marie Desilva', '6932583-8','574.398.195-19', 'Rua Coração Indomável',  '56D', 'Casa 48 ', 'Marezia', '01235-066', 'Pedro Luíz', '01/07/1996')
	   , (' Marivalda dos Santos', '5558963-7','076.328.345-89', 'Rua Nossa Senhora do Faoes', '45E', ' BLOCO M ','Santtiago', '02389-044', 'São Pedrinho', '28/04/2002')
	   , (' Soppia Valverde', '4482236-5','057.112.667-33', 'Rua das Pedras Azuis', ' 98F', ' BLOCO G ', 'Lealdade', '02298-065', 'Vale Rico', '23/02/2007')
	   
SELECT * FROM tbAluno

INSERT INTO tbTelefoneAluno(numTelAluno, codAluno)
VALUES	 ('1169965-5566', 1)
		,('1189933-6932', 1)
		,('1155889-3665', 2)
		,('1188963-5633', 2)
		,('1255632-2136', 3)
		,('1244756-9967', 3)
		,('1236552-6645', 4)
		,('1255205-9984', 4)
		,('1958204-3251', 5)
		,('1965448-6327', 5)
		,('1922535-9613', 6)
		,('1922088-6742', 6)
SELECT * FROM  tbTelefoneAluno

INSERT INTO tbCurso(nomeCurso, valorCurso)
VALUES	 ('Espanhol', '256.00')
		,('Inglês', '314.00')
		,('Alemão', '345.00')
SELECT * FROM tbCurso

INSERT INTO tbPeriodo(descricaoPeriodo)
VALUES	 ('Manhã')
		,('Tarde')
		,('Noite')
SELECT * FROM tbPeriodo

INSERT INTO tbNivel(descricaoNivel)
VALUES	 ('Iniciante')
		,('Intermediário')
		,('Fluente')
SELECT * FROM tbNivel

INSERT INTO tbDiaSemana(diaSemana)
VALUES	 ('Segunda-feira')
		,('Terça-feira')
		,('Quarta-feira')
		,('Quinta-feira')
		,('Sexta-feira')
		,('Sábado')
SELECT * FROM tbDiaSemana

INSERT INTO tbTurma(descricaoTurma, horario, codCurso, codPeriodo, codNivel, codDiaSemana)
VALUES   ('1-A','09:30:00', 1, 1, 2, 3)
		,('1-B','11:30:00', 2, 1, 1, 4)
		,('2-AA','13:30:00', 3, 2, 3, 5)
		,('3-A','15:30:00', 1, 2, 2, 2)
		,('3-B','19:30:00', 3, 3, 3, 6)
SELECT * FROM tbTurma

INSERT INTO tbMatricula(dataMatricula, codAluno, codTurma)
VALUES   ('15/06/2020', 1, 3)
		,('16/06/2020', 1, 5)
		,('22/07/2020', 2, 1)
		,('25/07/2020', 2, 4)
		,('06/08/2020', 3, 2)
		,('15/08/2020', 3, 4)
		,('12/09/2020', 4, 1)
		,('07/10/2020', 4, 3)
		,('29/10/2020', 5, 4)
		,('18/11/2020', 5, 5)
		,('02/12/2020', 6, 1)
		,('26/01/2021', 6, 5)
SELECT * FROM tbMatricula

	
		

	






		

		
		
		
