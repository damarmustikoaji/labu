*** Settings ***
Force Tags      Kumparan    News
Resource        ${EXECDIR}/resources/browser.robot
Resource        ${EXECDIR}/page_objects/common.robot
Resource        ${EXECDIR}/page_objects/search.robot
Resource        ${EXECDIR}/data/search.robot

Suite Teardown      Close All Browsers
Test Setup          Open Chrome

*** Test Cases ***
Verify Successful Access News from Search
    [documentation]     User melakukan akses halaman detail news dari search
    [tags]  Positive
    Go To    ${url}
    Input Text  ${searchField}  ${keyword}
    Press Keys    ${searchField}    ENTER
    Wait Until Element Is Visible   ${searchResult}
    Wait Until Page Contains    ${keyword}
    Click Element       ${titleResult}
    Close Browser
