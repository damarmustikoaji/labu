*** Settings ***
Resource  ${EXECDIR}/resources/browser.robot
Resource  ${EXECDIR}/page_objects/login.robot
Resource  ${EXECDIR}/page_objects/common.robot
Resource  ${EXECDIR}/data/login.robot

Suite Teardown    Close All Browsers
Test Setup  Open Chrome

*** Keywords ***
Open Chrome
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}

*** Test Cases ***
Verify UnSuccessful Login using invalid data
    [documentation]     Negative
    [tags]  Functionality
    Go To    www.google.com
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
