*** Settings ***
Library      SeleniumLibrary
Resource    ../Resources/keywords/login_keywords.robot   # Referência ao arquivo de variáveis
Resource    ../Resources/keywords/sidepanel_keywords.robot   # Referência ao arquivo de variáveis
Resource    ../Resources/keywords/admin_management_keywords.robot   # Referência ao arquivo de variáveis
Resource    ../Resources/keywords/admin_add_user_keywords.robot   # Referência ao arquivo de variáveis



*** Test Cases ***
Realizar Login.
    Given Acessar a tela de login
    When Inserir credenciais válidas
    Then verificar Login Bem-Sucedido


Cadastro do novo Admin e validar se houve sucesso.
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


Buscar por Admin Cadastrado.
    Given Acessar o Menu Admin
    When Validar tela Admin/User Management
    When Pesquisar por Username
    When Pesquisar por User Role Admin
    When Pesquisar por Employee Name
    When Pesquisar por Status Enabled
    When Clicar no botão Search
    When Validar Filtro
    Then Validar Username & Employee Name


Deletar Admin Cadastrado.
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


Fazer Logout.
    Given Acessar a tela de login
    When Inserir credenciais válidas
    When verificar Login Bem-Sucedido
    Then Fazer logout