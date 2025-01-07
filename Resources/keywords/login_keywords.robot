*** Settings ***
Library    SeleniumLibrary
Library     ../variables/gerador.py
Resource    ../variables/variables.robot   # Referência ao arquivo de variáveis
Resource    ../locators/login_locators.robot   # Referência ao arquivo de locators


*** Keywords ***
Gerar Fakers
    # Gerar Dados Aleatórios para cadastro
    ${nome}=        Gerar Nome
    ${telefone}=    Gerar Telefone
    ${email}=       Gerar Email
    ${senha}=       Gerar Senha

    # Armazenar os dados nas variáveis globais
    Set Suite Variable    ${NOME}       ${nome}
    Set Suite Variable    ${SENHA}      ${senha}
    Set Suite Variable    ${EMAIL}      ${email}
    Set Suite Variable    ${TELEFONE}   ${telefone}


que o usuário está na tela de login
    Open BROWSER                                        ${URL}    ${BROWSER}
    Maximize Browser Window
    SeleniumLibrary.Wait Until Page Contains Element    ${LOGIN_TEXT_XPATH}

o usuário insere credenciais válidas
    SeleniumLibrary.Wait Until Page Contains Element    ${LogUSERNAME_FIELD_XPATH}
    SeleniumLibrary.Input Text    ${LogUSERNAME_FIELD_XPATH}   ${USERNAME_ADMIN}
    SeleniumLibrary.Input Text    ${LogPASSWORD_FIELD_XPATH}   ${PASSWORD_ADMIN}
    SeleniumLibrary.Click Button                        ${LogLOGIN_BUTTON_XPATH}

o usuário deve acessar a página inicial
    SeleniumLibrary.Wait Until Page Contains    Bem-vindo, ${nome}