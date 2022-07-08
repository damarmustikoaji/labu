*** Settings ***
Resource  ${EXECDIR}/resources/browser.robot
Resource  ${EXECDIR}/page_objects/common.robot
Resource  ${EXECDIR}/page_objects/search.robot
Resource  ${EXECDIR}/data/search.robot
Suite Teardown  Run Keyword And Ignore Error    Suite shutdown

*** Test Cases ***
Verify Successful Access News from Search
    [documentation]     Positive
    [tags]  Functionality
    Create Webdriver    Chrome    executable_path=${browser}
    Go To    ${url}
    Wait Until Element Is Visible  ${notifikasiCancel}
    Click Element   ${notifikasiCancel}
    Input Text  ${searchField}  ${keyword}
    Press Keys    ${searchField}    ENTER
    Wait Until Element Is Visible   ${searchResult}
    Wait Until Page Contains    ${keyword}
    Click Element       ${titleResult}
    Close Browser