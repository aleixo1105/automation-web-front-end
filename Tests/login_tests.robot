*** Settings ***
Library      SeleniumLibrary
Resource    ../Resources/keywords/login_keywords.robot   # Referência ao arquivo de variáveis
Resource    ../Resources/keywords/sidepanel_keywords.robot   # Referência ao arquivo de variáveis
Resource    ../Resources/keywords/admin_management_keywords.robot   # Referência ao arquivo de variáveis
Resource    ../Resources/keywords/admin_add_user_keywords.robot   # Referência ao arquivo de variáveis



*** Test Cases ***
Realizar Login.

    [Documentation]    Cenário: Usuário faz login com sucesso.
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
    When Validar se Cadastro foi satisfatorio


Buscar por Admin Cadastrado.
    Skip
    Given Acessar o Menu Admin
    When Validar tela Admin/User Management
    When Inserir o Username
    When Selecionar o User Role Admin
    When Inserir o Employee Name
    When Selecionar o Status Enabled

    When Clicar no botão Search





