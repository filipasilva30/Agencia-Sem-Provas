SELECT * FROM AgenciaSemProvas.Cliente;

INSERT INTO Cliente 
	(NIF, Nome, Codigo_Postal, Localidade, Rua, Numero_Porta, Data_Nascimento, Estado_Civil, Telemovel, eMail, Idade)
    VALUES 
    ('123456789','Maria Costa','4000-001','Porto','Rua A','100','1988-01-01','Casada','942345678','maria.costa@gmail.com','35'),
    ('987654321','Carlos Mota','3400-062','Lisboa','Rua B','101','1981-07-15','Solteiro','953456789','carlos.mota@gmail.com','42'),
    ('192837465','Ana Silva','2000-060','Coimbra','Rua C','102','1990-05-20','Divorciada','962345678','ana.silva@gmail.com','33'),
    ('564738291','João Santos','5000-432','Braga','Rua D','103','1975-12-30','Casado','973456789','joao.santos@gmail.com','48'),
	('384756291','Mariana Lopes','6080-105','Porto','Rua E','104','1995-08-25','Solteira','982345678','mariana.lopes@gmail.com','28'),
	('476192384','Pedro Oliveira','9000-016','Faro','Rua F','105','1983-03-10','Casado','993456789','pedro.oliveira@gmail.com','41')
    ;
    
    DELETE FROM Cliente;