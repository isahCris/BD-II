USE bdMusica DROP VIEW vwMusica

CREATE VIEW vwMusica AS
	SELECT COUNT(idMusica) AS 'Qtde musicas', nomeAutor  FROM tbAutoria
		INNER JOIN tbAutor ON 
					tbAutoria.idAutor = tbAutor.idAutor
						GROUP BY nomeAutor

			SELECT * FROM vwMusica 

CREATE VIEW vwAutoria AS

SELECT nomeMusica, nomeAutor FROM tbAutoria
	INNER JOIN tbMusica ON 
		tbAutoria.idMusica = tbMusica.idMusica
			WHERE MONTH(dataComposicao) = 4 AND YEAR(dataComposicao)=2023
				GROUP BY nomeAutor

			SELECT * FROM vwAutoria 
			
CREATE VIEW vwGrana AS
	SELECT MAX(valorDireitoAutoral) AS 'Qtde Grana', nomeAutor FROM tbAutoria
		INNER JOIN tbMusica ON 
		tbAutoria.idMusica = tbMusica.idMusica
			GROUP BY nomeAutor

			SELECT * FROM vwMusica 	