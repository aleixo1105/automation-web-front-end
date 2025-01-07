*** Settings ***
Library      SeleniumLibrary
Resource    ../Resources/keywords/login_keywords.robot   # Referência ao arquivo de variáveis
Resource    ../Resources/keywords/sidepanel_keywords.robot   # Referência ao arquivo de variáveis
Resource    ../Resources/keywords/admin_management_keywords.robot   # Referência ao arquivo de variáveis


*** Test Cases ***
Realizar Login.

    [Documentation]    Cenário: Usuário faz login com sucesso.
    Given Acessar a tela de login
    When Inserir credenciais válidas
    Then verificar Login Bem-Sucedido

Cadastro do novo Admin e validar sehouve sucesso.
    Given Acessar o Menu Admin
    When Validar tela Admin/User Management





Buscar por Admin Cadastrado.
    Given Acessar o Menu Admin
    When Validar tela Admin/User Management
    When Inserir o Username
    When Selecionar o User Role Admin
    When Inserir o Employee Name
    When Selecionar o Status Enabled
    When Clicar no botão Reset
    When Clicar no botão Search
    Then Clicar no botão +Add




