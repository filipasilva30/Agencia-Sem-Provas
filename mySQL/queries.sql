USE AgenciaSemProvas;

SELECT CA.Numero, CA.Area, C.Nome 
	FROM Caso AS CA
    JOIN Cliente AS C ON C.NIF = CA.Cliente;
		
SELECT C.Numero, C.Descricao, D.Nome
	FROM Caso AS C
    JOIN Caso_Detetive AS CD ON C.Numero = CD.Caso
		JOIN Detetive AS D ON CD.Detetive = D.Numero_Mecanografico;
        
SELECT * FROM Caso
	WHERE Estado = 'Ativo';
        
ALTER TABLE Detetive RENAME COLUMN Numero_Mecanografico TO ID;
ALTER TABLE Detetive RENAME COLUMN Departamento TO DepID;
    
SELECT SUM(Custo) FROM Caso;

SELECT COUNT(Numero) FROM Caso;



-- Criação de índices:
CREATE INDEX id_caso_estado ON Caso(Estado);

-- Acelerar consultas que filtram pelo Estado
SELECT * FROM Caso Where Estado = 'Ativo'; 


-- função para calcular o custo total dos casos de um cliente
DELIMITER $$
CREATE FUNCTION CalcularCustoTotalCliente (clienteNIF INT) RETURNS FLOAT
BEGIN
	DECLARE custo_total FLOAT;
    SELECT SUM(Custo) INTO custo_total FROM Caso WHERE Cliente = clienteNIF;
	RETURN custo_total;
END$$

DELIMITER ;

-- procedimento para atualizar o estado de um caso
DELIMITER &&
CREATE PROCEDURE AtualizarEstadoCaso (IN numeroCaso INT, IN novoEstadO VARCHAR(10))
BEGIN 
	UPDATE Caso 
		SET Estado = novoEstado WHERE Numero = numeroCaso;
END&&

DELIMITER ;

-- gatilho para atualizar o estado de um caso
DELIMITER ##
CREATE TRIGGER AtualizaEstadoCaso AFTER UPDATE ON Caso 
FOR EACH ROW
BEGIN
	IF NEW.Data_Fim IS NOT NULL THEN
		SET NEW.Estado = 'Concluído';
	END IF;
END##

DELIMITER ;

