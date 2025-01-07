from faker import Faker
import random
import string

fake = Faker()

def gerar_nome():
    return fake.name()

def gerar_senha():
    return fake.password(length=9)

def gerar_letra_ou_numero():
    return random.choice(string.ascii_letters + string.digits)  # Escolhe uma letra ou número aleatório

if __name__ == "__main__":
    nome = gerar_nome()
    senha = gerar_senha()
    letra_ou_numero = gerar_letra_ou_numero()

    # Imprimir os dados gerados
    print(f"Nome gerado: {nome}")
    print(f"Senha gerada: {senha}")
    print(f"Letra ou número gerado: {letra_ou_numero}")
