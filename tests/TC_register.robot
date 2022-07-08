*** Settings ***
Resource  ${EXECDIR}/resources/browser.robot
Resource  ${EXECDIR}/page_objects/common.robot
Resource  ${EXECDIR}/page_objects/register.robot
Resource  ${EXECDIR}/data/register.robot
Suite Teardown  Run Keyword And Ignore Error    Suite shutdown

*** Test Cases ***
Verify Successful Register using valid data
    [documentation]     Positive
    [tags]  Functionality
    Create Webdriver    Chrome    executable_path=${chromeDriver}
    Go To    ${url}/register
    Wait Until Element Is Visible  ${notifikasiCancel}
    Click Element   ${notifikasiCancel}
    Wait Until Element Is Visible  ${emailField}
    Input Text      ${emailField}       ${emailValid}
    Click Element   ${buttonSave}
    Wait Until Page Contains   Link verifikasi
    Close Browser

Verify UnSuccessful Register using invalid data
    [documentation]     Negative
    [tags]  Functionality
    Create Webdriver    Chrome    executable_path=${browser}
    Go To    ${url}/register
    Wait Until Element Is Visible  ${notifikasiCancel}
    Click Element   ${notifikasiCancel}
    Wait Until Element Is Visible  ${emailField}
    Input Text      ${emailField}       ${emailInvalid}
    Click Element   ${buttonSave}
    Wait Until Page Contains   format email
    Close Browser