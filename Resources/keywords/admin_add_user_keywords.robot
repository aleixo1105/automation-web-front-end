*** Settings ***
Library    SeleniumLibrary
Library     ../variables/gerador.py
Resource    ../variables/variables.robot   # Referência ao arquivo de variáveis
Resource    ../locators//admin_add_user_locators.robot   # Referência ao arquivo de locators


*** Keywords ***

# SYSTEM USER
Validar tela Admin/Add User
    SeleniumLibrary.Wait Until Element Is Visible           ${MENU_ADMIN_ADD_USER}
    SeleniumLibrary.Element Should Be Visible               ${MENU_ADMIN_ADD_USER}

Cadastrar o Username

    SeleniumLibrary.Input Text          ${ADD_USERNAME}        ${USERNAME}

Cadastrar o User Role ADMIN
    SeleniumLibrary.Click Element     ${ADD_USER_ROLE}
    SeleniumLibrary.Click Element     ${ADD_USER_ROLE_ADMIN}

Cadastrar o Employee Name
    SeleniumLibrary.Input Text         ${ADD_EMPLOYEE_NAME}   ${FIRST_CARACTER}
    Sleep  3s
    SeleniumLibrary.Wait Until Page Contains Element       ${FIRST_SUGGESTION_EMPLOYEE_NAME}
    ${text}    Get Text    ${FIRST_SUGGESTION_EMPLOYEE_NAME}
    Set Suite Variable    ${EMPLOYEE_NAME}            ${text}
    SeleniumLibrary.Click Element      ${FIRST_SUGGESTION_EMPLOYEE_NAME}

Cadastrar o Status Enabled
    SeleniumLibrary.Wait Until Element Is Visible       ${ADD_STATUS}
    SeleniumLibrary.Click Element      ${ADD_STATUS}
    SeleniumLibrary.Click Element      ${ADD_STATUS_ENABLED}

Cadastrar o Status Disabled
    SeleniumLibrary.Click Element      ${ADD_STATUS}
    SeleniumLibrary.Click Element      ${ADD_STATUS_DISABLED}

Cadastrar Senha
    SeleniumLibrary.Input Text         ${ADD_PASSWORD}          ${PASSWORD}

Confirmar Senha
     SeleniumLibrary.Input Text       ${ADD_CONFIRM_PASSWORD}     ${PASSWORD}

Cancelar o cadastro
    SeleniumLibrary.Click Button        ${ADD_CANCEL}

Salvar o cadastro
    Sleep  3s
    SeleniumLibrary.Click Button        ${ADD_SAVE}

Validar se Cadastro foi satisfatorio
    SeleniumLibrary.Wait Until Element Is Visible           ${SUCCESSFULLY_SAVED}
    SeleniumLibrary.Element Should Be Visible               ${SUCCESSFULLY_SAVED}
    Sleep  3s