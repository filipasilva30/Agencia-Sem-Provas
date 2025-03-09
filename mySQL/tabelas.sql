CREATE DATABASE AgenciaSemProvas;

USE AgenciaSemProvas;

CREATE TABLE Cliente (
NIF INT NOT NULL,
Nome VARCHAR(100) NOT NULL,
Codigo_Postal VARCHAR(10) NOT NULL,
Localidade VARCHAR(100) NOT NULL,
Rua VARCHAR(100) NOT NULL,
Numero_Porta INT NOT NULL,
Data_Nascimento DATE NOT NULL,
Estado_Civil VARCHAR(15) NULL,
Telemovel INT NOT NULL,
eMail VARCHAR(100) NOT NULL,
Idade INT NOT NULL,
PRIMARY KEY (NIF)
);

CREATE TABLE Caso (
Numero INT NOT NULL,
Descricao TEXT NOT NULL,
Custo DOUBLE NOT NULL,
Data_Inicio DATE NOT NULL,
Data_Fim DATE NULL,
Estado VARCHAR(10) NOT NULL,
Area VARCHAR(50) NOT NULL,
Cliente INT NOT NULL,
PRIMARY KEY (Numero),
FOREIGN KEY (Cliente) REFERENCES Cliente(NIF)
);

CREATE TABLE Departamento (
Id INT NOT NULL,
Especializacao VARCHAR(50) NOT NULL,
Telemovel INT NOT NULL,
eMail VARCHAR(100) NOT NULL,
PRIMARY KEY (Id)
);

CREATE TABLE Detetive (
Numero_Mecanografico INT NOT NULL,
Nome VARCHAR(100) NOT NULL,
Classificacao DOUBLE NOT NULL,
Salario DOUBLE NOT NULL,
Codigo_Postal VARCHAR(10) NOT NULL,
Localidade VARCHAR(100) NOT NULL,
Rua VARCHAR (100) NOT NULL,
Numero_Porta INT NOT NULL,
Telemovel INT NOT NULL,
eMail VARCHAR(100) NOT NULL,
Departamento INT NOT NULL,
PRIMARY KEY (Numero_Mecanografico),
FOREIGN KEY (Departamento) REFERENCES Departamento(Id)
);

CREATE TABLE Caso_Detetive (
Caso INT NOT NULL,
Detetive INT NOT NULL,
Data_Inicio DATE NOT NULL,
Data_Fim DATE NOT NULL,
PRIMARY KEY (Caso, Detetive),
FOREIGN KEY (Caso) REFERENCES Caso(Numero),
FOREIGN KEY (Detetive) REFERENCES Detetive(Numero_Mecanografico)
);

CREATE TABLE Procedimento (
Id INT NOT NULL,
Custo DOUBLE NOT NULL,
Descricao TEXT NOT NULL,
PRIMARY KEY (Id)
);

CREATE TABLE Procedimento_Caso_Detetive (
Custo_Total DOUBLE NOT NULL,
Caso INT NOT NULL,
Procedimento INT NOT NULL, 
Detetive INT NOT NULL,
PRIMARY KEY (Caso, Procedimento, Detetive),
FOREIGN KEY (Caso) REFERENCES Caso(Numero),
FOREIGN KEY (Procedimento) REFERENCES Procedimento(Id),
FOREIGN KEY (Detetive) REFERENCES Detetive(Numero_Mecanografico)
);	