*** Variables ***
${MENU_ADMIN_XPATH}                           //*[@id="app"]/div[1]/div[1]/header/div[1]/div[1]/span/h6[text()='Admin']

${ADMIN_FILTER_USERNAME_XPATH}                //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input

${ADMIN_FILTER_USER_ROLE_XPATH}               //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div
${ADMIN_FILTER_USER_ROLE_ADMIN_XPATH}         //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div[2]/div[2]
${ADMIN_FILTER_USER_ROLE_ESS_XPATH}           //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div[2]/div[3]

${ADMIN_FILTER_EMPLOYEE_NAME_XPATH}           //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[3]/div/div[2]/div/div/input
${ADMIN_FILTER_EMPLOYEE_NAME_SUGGESTION_XPATH}          //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[3]/div/div[2]/div/div[2]/div[1]

${ADMIN_FILTER_STATUS_XPATH}                  //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[4]/div/div[2]/div/div
${ADMIN_FILTER_STATUS_ENABLED_XPATH}          //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[4]/div/div[2]/div/div[2]/div[2]
${ADMIN_FILTER_STATUS_DISABLED_XPATH}         //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[4]/div/div[2]/div/div[2]/div[3]

${ADMIN_FILTER_RESET_XPATH}                   //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[1]
${ADMIN_FILTER_SEARCH_XPATH}                  //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]

${ADMIN_ADD_USER_XPATH}                       //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[1]/button


# Filter Table

${RECORD_FOUND_XPATH}                   //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[2]/div/span
${RECORD_FOUND_EXPECTED}                (1) Record Found
${RECORD_FOUND_USERNAME_XPATH}          //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div[2]/div
${RECORD_FOUND_EMPLOYEE_NAME_XPATH}     //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div[4]/div

${DELETE_USER_ICON_XPATH}               //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div[6]/div/button[1]
${CONFIRM_DELETE_XPATH}                //*[@id="app"]/div[3]/div/div/div/div[3]/button[2]
${SUCCESSFULLY_DELETED_XPATH}           //*[@id="oxd-toaster_1"]/div






