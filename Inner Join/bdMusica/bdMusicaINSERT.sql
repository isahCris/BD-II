-----INSERT----

USE bdMusica

GO

INSERT INTO tbAutor (nomeAutor)
VALUES   ('Taylor Swift')
        ,('BTS')
        ,('Lana Del Rey')
        ,('Melanie Martinez')

SELECT * FROM tbAutor

INSERT INTO tbMusica (nomeMusica, duracaoMusica, dataComposicao, valorDireitoAutoral)
VALUES   ('Speak Now', 4.00, '02/10/2010', 2400)
        ,('Dynamite ', 4.00, '01/01/2010', 5000)
        ,('Summertime sadness',4.00, '07/02/2012', 3000)
        ,('Cry Baby', 4.26, '28/01/2017', 4000)
		,('Evil', 3.26, '20/04/2023', 5000)

SELECT * FROM tbMusica

INSERT INTO tbAutoria(idAutor, idMusica)
VALUES   (1, 1)
        ,(2, 2)
        ,(3, 3)
        ,(4, 4)
		,(4, 5)

SELECT * FROM tbAutoria
