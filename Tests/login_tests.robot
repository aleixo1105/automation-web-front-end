*** Settings ***
Library      SeleniumLibrary
Resource    ../Resources/keywords/login_keywords.robot   # Referência ao arquivo de variáveis
Resource    ../Resources/keywords/dashboard_keywords.robot   # Referência ao arquivo de variáveis



*** Test Cases ***
Login com Credenciais Válidas

    [Documentation]    Cenário: Usuário faz login com sucesso.
    Given que o usuário está na tela de login
    When o usuário insere credenciais válidas
    Then validar tela do dashboard



