*** Settings ***
Library    SeleniumLibrary
Library     ../variables/gerador.py
Resource    ../variables/variables.robot   # Referência ao arquivo de variáveis
Resource    ../locators/admin_management_locators.robot   # Referência ao arquivo de locators


*** Keywords ***

# SYSTEM USER
Validar tela Admin/User Management
    SeleniumLibrary.Wait Until Element Is Visible           ${MENU_ADMIN}

Inserir o Username
    SeleniumLibrary.Input Text          ${ADMIN_FILTER_USERNAME}   ${NEW_USERNAME}

Selecionar o User Role ADMIN
    SeleniumLibrary.Click Element     ${ADMIN_FILTER_USER_ROLE}
    SeleniumLibrary.Click Element     ${ADMIN_FILTER_USER_ROLE_ADMIN}

Selecionar o User Role ESS
    SeleniumLibrary.Click Element      ${ADMIN_FILTER_USER_ROLE}
    SeleniumLibrary.Click Element      ${ADMIN_FILTER_USER_ROLE_ESS}

Inserir o Employee Name
    SeleniumLibrary.Input Text         ${ADMIN_FILTER_EMPLOYEE_NAME}   ${NEW_USERNAME}

Selecionar o Status Enabled
    SeleniumLibrary.Click Element      ${ADMIN_FILTER_STATUS}
    SeleniumLibrary.Click Element      ${ADMIN_FILTER_STATUS_ENABLED}

Selecionar o Status Disabled
    SeleniumLibrary.Click Element      ${ADMIN_FILTER_STATUS}
    SeleniumLibrary.Click Element      ${ADMIN_FILTER_STATUS_DISABLED}

Clicar no botão Reset
    SeleniumLibrary.Click Button    ${ADMIN_FILTER_RESET}

Clicar no botão Search
    SeleniumLibrary.Click Button    ${ADMIN_FILTER_SEARCH}

Clicar no botão +Add
    SeleniumLibrary.Click Button    ${ADMIN_ADD_USER}

