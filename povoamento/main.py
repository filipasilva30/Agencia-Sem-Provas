from populate_database import (
    clear_tables,
    populate_clientes, 
    populate_procedimentos
)

if __name__ == "__main__":
    clear_tables()
    populate_clientes("cliente.csv")
    populate_procedimentos("procedimento.csv")