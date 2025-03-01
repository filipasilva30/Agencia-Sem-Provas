SELECT * FROM AgenciaSemProvas.Procedimento;

INSERT INTO Procedimento
	(Id, Custo, Descricao)
    VALUES
    ('1','50','Vigilância'),
	('2','75','Análise Forense'),
	('3','100','Interrogatório'),
	('4','30','Pesquisa de Dados'),
	('5','60','Rastreamento de Ativos'),
	('6','45','Entrevistas')
    ;

DELETE FROM Procedimento;