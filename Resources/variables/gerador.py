from faker import Faker
import random
import string

fake = Faker()

def gerar_nome():
    return fake.name()

def gerar_senha():
    return fake.password(length=9)

def gerar_letra():
    return random.choice(string.ascii_letters)  # Escolhe uma letra

if __name__ == "__main__":
    nome = gerar_nome()
    senha = gerar_senha()
    letra = gerar_letra()

    # Imprimir os dados gerados
    print(f"Nome gerado: {nome}")
    print(f"Senha gerada: {senha}")
    print(f"Letra gerado: {letra}")
