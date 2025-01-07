# gerador.py
from faker import Faker

# Criar instância do Faker
fake = Faker()

# Funções para gerar dados falsos
def gerar_nome():
    return fake.name()

def gerar_telefone():
    return fake.phone_number()

def gerar_email():
    return fake.email()

def gerar_senha():
    return fake.password()
