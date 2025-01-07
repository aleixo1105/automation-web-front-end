*** Settings ***
Library    SeleniumLibrary          timeout=15s
Library     ../variables/gerador.py
Resource    ../variables/variables.robot   # Referência ao arquivo de variáveis
Resource    ../locators/admin_management_locators.robot   # Referência ao arquivo de locators


*** Keywords ***

# SYSTEM USER
Validar tela Admin/User Management
    SeleniumLibrary.Wait Until Element Is Visible           ${MENU_ADMIN_XPATH}

Pesquisar por Username
    SeleniumLibrary.Input Text          ${ADMIN_FILTER_USERNAME_XPATH}   ${USERNAME}

Pesquisar por User Role ADMIN
    SeleniumLibrary.Click Element     ${ADMIN_FILTER_USER_ROLE_XPATH}
    SeleniumLibrary.Click Element     ${ADMIN_FILTER_USER_ROLE_ADMIN_XPATH}

Pesquisar por User Role ESS
    SeleniumLibrary.Click Element      ${ADMIN_FILTER_USER_ROLE_XPATH}
    SeleniumLibrary.Click Element      ${ADMIN_FILTER_USER_ROLE_ESS_XPATH}

Pesquisar por Employee Name
    SeleniumLibrary.Input Text         ${ADMIN_FILTER_EMPLOYEE_NAME_XPATH}   ${EMPLOYEE_NAME}
    Sleep  3s
    SeleniumLibrary.Wait Until Page Contains Element      ${ADMIN_FILTER_EMPLOYEE_NAME_SUGGESTION_XPATH}
    SeleniumLibrary.Click Element                         ${ADMIN_FILTER_EMPLOYEE_NAME_SUGGESTION_XPATH}

Pesquisar por Status Enabled
    SeleniumLibrary.Click Element      ${ADMIN_FILTER_STATUS_XPATH}
    SeleniumLibrary.Click Element      ${ADMIN_FILTER_STATUS_ENABLED_XPATH}

Pesquisar por Status Disabled
    SeleniumLibrary.Click Element      ${ADMIN_FILTER_STATUS_XPATH}
    SeleniumLibrary.Click Element      ${ADMIN_FILTER_STATUS_DISABLED_XPATH}

Clicar no botão Reset
    SeleniumLibrary.Click Button    ${ADMIN_FILTER_RESET_XPATH}

Clicar no botão Search
    SeleniumLibrary.Click Button    ${ADMIN_FILTER_SEARCH_XPATH}

Clicar no botão +Add
    SeleniumLibrary.Click Button    ${ADMIN_ADD_USER_XPATH}

Validar Filtro
     SeleniumLibrary.Wait Until Element Is Visible           ${RECORD_FOUND_XPATH}
     SeleniumLibrary.Element Should Be Visible               ${RECORD_FOUND_XPATH}
     ${texto_resultado}=    Get Text        ${RECORD_FOUND_XPATH}
     Should Be Equal As Strings    ${texto_resultado}    ${RECORD_FOUND_EXPECTED}
     Sleep  5s

Validar Username & Employee Name
    ${username}=        Get Text    ${RECORD_FOUND_USERNAME_XPATH}
    ${employee_name}=   Get Text    ${RECORD_FOUND_EMPLOYEE_NAME_XPATH}
    Should Be Equal As Strings    ${username}       ${USERNAME}
    Should Be Equal As Strings    ${employee_name}  ${EMPLOYEE_NAME}

Deletar User Cadastrado
     SeleniumLibrary.Wait Until Element Is Visible    ${DELETE_USER_ICON_XPATH}
     SeleniumLibrary.Click Element                  ${DELETE_USER_ICON_XPATH}

Confirmar Delete
     SeleniumLibrary.Wait Until Element Is Visible    ${CONFIRM_DELETE_XPATH}
     SeleniumLibrary.Click Element                    ${CONFIRM_DELETE_XPATH}

Validar Notificação Após Exclusão de Usuário
    Wait Until Element Is Visible       ${SUCCESSFULLY_DELETED_TOAST_XPATH}
    Element Text Should Be              ${SUCCESSFULLY_DELETED_TOAST_MESSAGE_XPATH}   Successfully Deleted