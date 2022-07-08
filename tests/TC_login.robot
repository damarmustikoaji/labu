*** Settings ***
Resource  ${EXECDIR}/resources/browser.robot
Resource  ${EXECDIR}/page_objects/login.robot
Resource  ${EXECDIR}/page_objects/common.robot
Resource  ${EXECDIR}/data/login.robot
Suite Teardown  Run Keyword And Ignore Error    Suite shutdown

*** Test Cases ***
Verify UnSuccessful Login using invalid data
    [documentation]     Negative
    [tags]  Functionality
    Open Browser    ${url}      ${browser}
    Wait Until Element Is Visible  ${notifikasiCancel}
    Click Element   ${notifikasiCancel}
    Wait Until Element Is Visible  ${buttonMasuk}
    Click Element   ${buttonMasuk}
    Wait Until Element Is Visible  ${emailField}
    Input Text  ${emailField}  ${emailInvalid}
    Input Text  ${passwordField}  ${passwordInvalid}
    Click Element   ${buttonSave}
    Wait Until Page Contains   Salah
    Close Browser