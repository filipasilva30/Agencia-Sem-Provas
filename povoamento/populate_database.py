import pandas as pd
from db_connection import create_connection

def clear_tables():
    connection = create_connection()
    cursor = connection.cursor()
    cursor.execute("SET FOREIGN_KEY_CHECKS = 0")  # Desabilitar verificação de chave estrangeira
    cursor.execute("DELETE FROM Cliente")
    cursor.execute("DELETE FROM Procedimento")
    cursor.execute("SET FOREIGN_KEY_CHECKS = 1")  # Habilitar verificação de chave estrangeira novamente
    connection.commit()
    cursor.close()
    connection.close()

def populate_clientes(csv_file):
    connection = create_connection()
    cursor = connection.cursor()
    df = pd.read_csv(csv_file, delimiter=';')
    
    for _, row in df.iterrows():
        cursor.execute(
            "INSERT INTO Cliente (NIF, Nome, Codigo_Postal, Localidade, Rua, Numero_Porta, Data_Nascimento, Estado_Civil, Telemovel, eMail, Idade) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)",
            tuple(row)
        )
    connection.commit()
    cursor.close()
    connection.close()

def populate_procedimentos(csv_file):
    connection = create_connection()
    cursor = connection.cursor()
    df = pd.read_csv(csv_file, delimiter=';')
    
    for _, row in df.iterrows():
        cursor.execute(
            "INSERT INTO Procedimento (Id, Custo, Descricao) VALUES (%s, %s, %s)",
            tuple(row)
        )
    connection.commit()
    cursor.close()
    connection.close()