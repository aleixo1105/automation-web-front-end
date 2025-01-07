*** Settings ***
Library    SeleniumLibrary          timeout=15s
Resource    ../variables/variables.robot   # Referência ao arquivo de variáveis
Resource    ../locators/sidepanel.locators.robot   # Referência ao arquivo de locators.
Resource    ../locators/login_locators.robot


*** Keywords ***
Verificar Login Bem-Sucedido
    SeleniumLibrary.Wait Until Element Is Visible           ${SIDE_PANEL_XPATH}
    SeleniumLibrary.Element Should Be Visible               ${SIDE_PANEL_XPATH}


Acessar o Menu Admin
    SeleniumLibrary.Wait Until Element Is Visible           ${SIDE_PANEL_ADMIN_XPATH}
    SeleniumLibrary.Click Element                           ${SIDE_PANEL_ADMIN_XPATH}


Fazer logout
    SeleniumLibrary.Wait Until Element Is Visible           ${SIDE_PANEL_PROFILE_XPATH}
    SeleniumLibrary.Click Element                           ${SIDE_PANEL_PROFILE_XPATH}
    SeleniumLibrary.Wait Until Element Is Visible           ${SIDE_PANEL_PROFILE_LOGOUT_XPATH}
    SeleniumLibrary.Click Element                           ${SIDE_PANEL_PROFILE_LOGOUT_XPATH}
    SeleniumLibrary.Wait Until Element Is Visible           ${LOGIN_TEXT}
    



