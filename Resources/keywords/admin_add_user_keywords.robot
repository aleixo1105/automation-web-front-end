*** Settings ***
Library    SeleniumLibrary      timeout=15s
Library     ../variables/gerador.py
Resource    ../variables/variables.robot   # Referência ao arquivo de variáveis
Resource    ../locators//admin_add_user_locators.robot   # Referência ao arquivo de locators


*** Keywords ***

# SYSTEM USER
Validar tela Admin/Add User
    SeleniumLibrary.Wait Until Element Is Visible           ${MENU_ADMIN_ADD_USER_XPATH}
    SeleniumLibrary.Element Should Be Visible               ${MENU_ADMIN_ADD_USER_XPATH}

Cadastrar o Username

    SeleniumLibrary.Input Text          ${ADD_USERNAME_XPATH}        ${USERNAME}

Cadastrar o User Role ADMIN
    SeleniumLibrary.Click Element     ${ADD_USER_ROLE_XPATH}
    SeleniumLibrary.Click Element     ${ADD_USER_ROLE_ADMIN_XPATH}

Cadastrar o Employee Name
    SeleniumLibrary.Input Text         ${ADD_EMPLOYEE_NAME_XPATH}   ${FIRST_CARACTER}
    Sleep  5s
    SeleniumLibrary.Wait Until Page Contains Element       ${FIRST_SUGGESTION_EMPLOYEE_NAME_XPATH}
    ${text}    Get Text    ${FIRST_SUGGESTION_EMPLOYEE_NAME_XPATH}
    Set Suite Variable    ${EMPLOYEE_NAME}            ${text}
    SeleniumLibrary.Click Element      ${FIRST_SUGGESTION_EMPLOYEE_NAME_XPATH}

Cadastrar o Status Enabled
    SeleniumLibrary.Wait Until Element Is Visible       ${ADD_STATUS_XPATH}
    SeleniumLibrary.Click Element      ${ADD_STATUS_XPATH}
    SeleniumLibrary.Click Element      ${ADD_STATUS_ENABLED_XPATH}

Cadastrar o Status Disabled
    SeleniumLibrary.Click Element      ${ADD_STATUS_XPATH}
    SeleniumLibrary.Click Element      ${ADD_STATUS_DISABLED_XPATH}

Cadastrar Senha
    SeleniumLibrary.Input Text         ${ADD_PASSWORD_XPATH}          ${PASSWORD}

Confirmar Senha
     SeleniumLibrary.Input Text       ${ADD_CONFIRM_PASSWORD_XPATH}     ${PASSWORD}

Cancelar o cadastro
    SeleniumLibrary.Click Button        ${ADD_CANCEL_XPATH}

Salvar o cadastro
    Sleep  3s
    SeleniumLibrary.Click Button        ${ADD_SAVE_XPATH}

Validar se Cadastro foi satisfatorio
    Wait Until Element Is Visible       ${SUCCESSFULLY_CREATED_TOAST_XPATH}
    Element Text Should Be              ${SUCCESSFULLY_CREATED_TOAST_MESSAGE_XPATH}   Successfully Saved