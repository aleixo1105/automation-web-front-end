*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/variables.robot   # Referência ao arquivo de variáveis
Resource    ../locators/sidepanel.locators.robot   # Referência ao arquivo de locators


*** Keywords ***
Verificar Login Bem-Sucedido
    SeleniumLibrary.Wait Until Element Is Visible           ${SIDE_PANEL}
    SeleniumLibrary.Element Should Be Visible               ${SIDE_PANEL}


Acessar o Menu Admin
    SeleniumLibrary.Wait Until Element Is Visible           ${SIDE_PANEL_ADMIN}
    SeleniumLibrary.Click Element                           ${SIDE_PANEL_ADMIN}



