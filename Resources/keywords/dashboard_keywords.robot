*** Settings ***
Library    SeleniumLibrary
Library     gerador.py
Resource    ../variables/variables.robot   # Referência ao arquivo de variáveis
Resource    ../locators/dashboard_locators.robot   # Referência ao arquivo de locators


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



validar tela do dashboard
    SeleniumLibrary.Wait Until Page Contains Element    ${DASHBOARD_TEXT_XPATH}
    SeleniumLibrary.Element Should Be Visible            ${DASHBOARD_TEXT_XPATH}



