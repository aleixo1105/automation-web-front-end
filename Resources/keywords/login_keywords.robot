*** Settings ***
Library    SeleniumLibrary
Library     ../variables/gerador.py
Resource    ../variables/variables.robot   # Referência ao arquivo de variáveis
Resource    ../locators/login_locators.robot   # Referência ao arquivo de locators


*** Keywords ***
Gerar Fakers
    # Gerar Dados Aleatórios para cadastro
    ${nome} =        Gerar Nome
    ${senha} =       Gerar Senha
    ${letraNumero} =       Gerar Letra Ou Numero


    # Armazenar os dados nas variáveis globais
    Set Suite Variable    ${USERNAME}            ${nome}
    Set Suite Variable    ${PASSWORD}       ${senha}
    Set Suite Variable    ${FIRST_CARACTER}      ${letraNumero}

Acessar a tela de login
    Open BROWSER                                        ${URL}    ${BROWSER}
    Maximize Browser Window
    SeleniumLibrary.Wait Until Page Contains Element    ${LOGIN_TEXT}

Inserir credenciais válidas
    SeleniumLibrary.Wait Until Page Contains Element    ${LogUSERNAME}
    SeleniumLibrary.Input Text    ${LogUSERNAME}   ${ADMIN_USERNAME}
    SeleniumLibrary.Input Text    ${LogPASSWORD}   ${ADMIN_PASSWORD}
    SeleniumLibrary.Click Button                        ${LogLOGIN_BUTTON}

