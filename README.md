# Projeto de Automação Robot Framework com Python  Faker

Este projeto utiliza o **Robot Framework** com a biblioteca **Faker** para gerar dados fictícios em automações de teste. O objetivo é demonstrar como usar o Robot Framework em conjunto com o Python e o Faker para criar testes automatizados com dados aleatórios.


## Estrutura do Projeto
O projeto segue uma estrutura baseada em Page Objects para facilitar a manutenção e reutilização de código.

```
automation-mobile-robot/
├── Tests/
│   └── tests.robot
├── Resources/
│   ├── keywords/
│   │   ├── admin_add_user_keywords.robot
│   │   ├── admin_management_keywords.robot
│   │   ├── sidepanel.keywords.robot
│   │   └── login_keywords.robot
│   ├── locators/
│   │   ├── admin_add_user_locators.robot
│   │   ├── admin_management_locators.robot
│   │   ├── sidepanel_locators.robot
│   │   └── login_locators.robot
│   └── variables/
│       ├── variables.robot
│       └── data_generator.py
├── Requirements.txt
├── .gitignore
└── README.md
```

### Descrição das Pastas

- **`tests/`**: Contém os arquivos de casos de teste escritos em Robot Framework.
- **`keywords/`**: Contém keywords reutilizáveis organizadas por tela.
- **`locators/`**: Contém os locators utilizados pelos testes, separados por tela.
- **`resources/`**: Inclui arquivos de configuração e funções personalizadas.


# Ferramentas e Bibliotecas (Pré-requisito)

O projeto de automação utiliza as seguintes ferramentas e bibliotecas:
- **Robot Framework**: Framework de automação baseado em palavras-chave.
- **SeleniumLibrary**: Ferramenta para automação de testes web.
- **Python**: Linguagem utilizada para implementar funções auxiliares.
- **Faker**: Biblioteca Python utilizada para gerar dados fictícios, como nomes, emails, telefones, entre outros.


##  Ambiente de Teste

   Testes Realizados No Windows 11 usando Google Chrome


## Executando os Testes

```bash
robot -d Results .\Tests\tests.robot      #Para Gerar os relatorio na pasta #No Diretorio Results abra o arquivo report.html em qualquer navegador 


```

### *** Test Cases ***

### Realizar Login.
    Given Acessar a tela de login
    When Inserir credenciais válidas
    Then verificar Login Bem-Sucedido


### Cadastro do novo Admin e validar se houve sucesso.
    Given Gerar Fakers
    When Acessar o Menu Admin
    When Validar tela Admin/User Management
    When Clicar no botão +Add
    When Validar tela Admin/Add User
    When Cadastrar o User Role ADMIN
    When Cadastrar o Employee Name
    When Cadastrar o Status Enabled
    When Cadastrar o Username
    When Cadastrar Senha
    When Confirmar Senha
    When Salvar o cadastro
    Then Validar se Cadastro foi satisfatorio


### Buscar por Admin Cadastrado.
    Given Acessar o Menu Admin
    When Validar tela Admin/User Management
    When Pesquisar por Username
    When Pesquisar por User Role Admin
    When Pesquisar por Employee Name
    When Pesquisar por Status Enabled
    When Clicar no botão Search
    When Validar Filtro
    Then Validar Username & Employee Name


### Deletar Admin Cadastrado.
    Given Acessar o Menu Admin
    When Validar tela Admin/User Management
    When Pesquisar por Username
    When Pesquisar por User Role Admin
    When Pesquisar por Employee Name
    When Pesquisar por Status Enabled
    When Clicar no botão Search
    When Validar Filtro
    When Validar Username & Employee Name
    When Deletar User Cadastrado
    When Confirmar Delete
    Then Validar Notificação Após Exclusão de Usuário


### Fazer Logout.
    Given Acessar a tela de login
    When Inserir credenciais válidas
    When verificar Login Bem-Sucedido
    Then Fazer logout

![Screenshot 2025-01-07 193611](https://github.com/user-attachments/assets/fa4344b8-5e85-4f27-8d69-1adece8523db)
[Results.zip](https://github.com/user-attachments/files/18339727/Results.zip)

