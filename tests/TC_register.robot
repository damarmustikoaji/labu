*** Settings ***
Force Tags      Kumparan    Register
Resource        ${EXECDIR}/resources/browser.robot
Resource        ${EXECDIR}/page_objects/common.robot
Resource        ${EXECDIR}/page_objects/register.robot
Resource        ${EXECDIR}/data/register.robot

Suite Teardown      Close All Browsers
Test Setup          Open Chrome

*** Test Cases ***
Verify Successful Register using valid data
    [documentation]     User melakukan register dengan valid data email
    [tags]  Positive
    Go To    ${url}/register
    Wait Until Element Is Visible  ${emailField}
    Input Text      ${emailField}       ${emailValid}
    Click Element   ${buttonSave}
    Wait Until Page Contains   Link verifikasi
    Close Browser

Verify UnSuccessful Register using invalid data
    [documentation]     User melakukan register dengan invalid data email (tidak sesuai format valid email)
    [tags]  Negative
    Go To    ${url}/register
    Wait Until Element Is Visible  ${emailField}
    Input Text      ${emailField}       ${emailInvalid}
    Click Element   ${buttonSave}
    # Wait Until Page Contains   format email
    Close Browser
