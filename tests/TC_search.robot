*** Settings ***
Force Tags      Kumparan    Search
Resource        ${EXECDIR}/resources/browser.robot
Resource        ${EXECDIR}/page_objects/common.robot
Resource        ${EXECDIR}/page_objects/search.robot
Resource        ${EXECDIR}/data/search.robot

Suite Teardown      Close All Browsers
Test Setup          Open Chrome

*** Test Cases ***
Verify Successful Search News using valid keyword
    [documentation]     Positive
    [tags]  Positive
    Go To    ${url}
    Input Text  ${searchField}  ${keyword}
    Press Keys    ${searchField}    ENTER
    Wait Until Element Is Visible   ${searchResult}
    Wait Until Page Contains    ${keyword}
    Close Browser

Verify UnSuccessful Search News using invalid keyword
    [documentation]     Negative
    [tags]  Negative
    Go To    ${url}
    Input Text  ${searchField}  ${keywordInvalid}
    Press Keys    ${searchField}    ENTER
    Wait Until Element Is Visible   ${searchNotif}
    Wait Until Page Contains    Belum ada konten
    Close Browser
