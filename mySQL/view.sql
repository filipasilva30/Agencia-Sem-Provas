USE AgenciaSemProvas;

CREATE VIEW vistaClassificacao AS
	SELECT D.Nome AS Nome 
		FROM Detetive AS D
			WHERE D.Classificacao > 4
		ORDER BY Nome ASC;
        
CREATE VIEW vistaSalario AS
	SELECT D.Nome AS Nome
		FROM Detetive AS D
		ORDER BY D.Salario DESC;
        
CREATE VIEW vistaCusto AS
	SELECT C.Numero, C.Custo 
		FROM Caso AS C 
			WHERE C.Data_Inicio < '2020-01-01'
		ORDER BY C.Custo DESC;