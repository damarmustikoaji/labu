*** Settings ***
Documentation     Basic Web testing
Library           Screenshot
Library           SeleniumLibrary
Suite Setup       Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close All Browsers


*** Variables ***
${URL}            https://www.epochconverter.com/
${BROWSER}        Chrome
${MAIN_PAGE_PAGE_CONTAINER_LOCATOR}    id:mobilemenulink
${MAIN_PAGE_EPOCH_CLOCK_TEXTBOX_LOCATOR}    xpath://input[@id='ecinput']
${MAIN_PAGE_EPOCH_CLOCK_BUTTON_LOCATOR}    xpath://form[@id='ef']//button[@type='submit']


*** Test Cases ***
Sample test
    [Documentation]    This test opens up epoch converter UI
    ...    asserts texts
    Set Window Size    1000    800
    Wait Until Element Is Enabled    ${MAIN_PAGE_PAGE_CONTAINER_LOCATOR}
    Wait Until Element Is Enabled    ${MAIN_PAGE_EPOCH_CLOCK_TEXTBOX_LOCATOR}
    Wait Until Element Is Enabled    ${MAIN_PAGE_EPOCH_CLOCK_BUTTON_LOCATOR}
    ${button_content}    Get Text   ${MAIN_PAGE_EPOCH_CLOCK_BUTTON_LOCATOR}
    Should Be Equal As Strings    ${button_content}    Timestamp to Human date
