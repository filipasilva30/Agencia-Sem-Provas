SELECT * FROM AgenciaSemProvas.Caso;

INSERT INTO Caso 
	(Numero, Descricao, Custo, Data_Inicio, Data_Fim, Estado, Area, Cliente)
	VALUES 
    ('1','Caso de fraude','500','2015-08-01',NULL,'Ativo','Roubo','123456789'),
	('2','Investigação de infidelidade','750','2023-02-01','2024-05-10','Concluído','Infidelidade','987654321'),
	('3','Desaparecimento de pessoa','1000','2024-03-15',NULL,'Ativo','Desaparecimento','192837465'),
	('4','Rastreamento de ativos','600','2019-10-20',NULL,'Ativo','Economia','564738291'),
	('5','Investigação de roubo','450','2020-05-25','2024-06-20','Concluído','Roubo','384756291'),
	('6','Análise forense de documentos','800','2022-10-06',NULL,'Arquivado','Forense','476192384')
    ;