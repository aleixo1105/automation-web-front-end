*** Settings ***
Library    SeleniumLibrary
Library     ../variables/gerador.py
Resource    ../variables/variables.robot   # Referência ao arquivo de variáveis
Resource    ../locators/login_locators.robot   # Referência ao arquivo de locators


*** Keywords ***
Gerar Fakers
    # Gerar Dados Aleatórios para cadastro
    ${nome}=        Gerar Nome
    ${email}=       Gerar Email


    # Armazenar os dados nas variáveis globais
    Set Suite Variable    ${NEW_USERNAME}           ${nome}
    Set Suite Variable    ${NEW_EMPLOYEE_NAME}      ${email}

Acessar a tela de login
    Open BROWSER                                        ${URL}    ${BROWSER}
    Maximize Browser Window
    SeleniumLibrary.Wait Until Page Contains Element    ${LOGIN_TEXT}

Inserir credenciais válidas
    SeleniumLibrary.Wait Until Page Contains Element    ${LogUSERNAME}
    SeleniumLibrary.Input Text    ${LogUSERNAME}   ${USERNAME_ADMIN}
    SeleniumLibrary.Input Text    ${LogPASSWORD}   ${PASSWORD_ADMIN}
    SeleniumLibrary.Click Button                        ${LogLOGIN_BUTTON}

