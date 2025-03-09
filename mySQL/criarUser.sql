CREATE USER 'iolanda'@'localhost' IDENTIFIED BY 'senha_iolanda';
GRANT ALL PRIVILEGES ON AgenciaSemProvas.* TO 'iolanda'@'localhost';
CREATE USER 'detetive1'@'localhost' IDENTIFIED BY 'senha_detetive1';
CREATE USER 'detetive2'@'localhost' IDENTIFIED BY 'senha_detetive2';
CREATE USER 'detetive3'@'localhost' IDENTIFIED BY 'senha_detetive3';
-- Continue para cada detetive...

-- Exemplo de permissões para um detetive específico
GRANT SELECT ON AgenciaSemProvas.Caso TO 'detetive1'@'localhost';
GRANT SELECT ON AgenciaSemProvas.Procedimento_Caso TO 'detetive1'@'localhost';
GRANT SELECT ON AgenciaSemProvas.Caso_Detetive TO 'detetive1'@'localhost';