*** Settings ***
Library     Selenium2Library
Resource    ${EXECDIR}/page_objects/common.robot
Resource    ${EXECDIR}/page_objects/search.robot

*** Variables ***
${URL}          http://www.google.com
${BROWSER}      Chrome

*** Keywords ***
open the browser
Open Browser    ${URL}     ${BROWSER}

*** Test Cases ***
Verify UnSuccessful Login using invalid data
    [documentation]     Negative
    [tags]  Functionality
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
