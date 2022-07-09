*** Settings ***
Library     SeleniumLibrary

*** variables ***
${URL}   https://www.google.com
${Browser}    chrome

*** Keywords ***
LaunchBrowser
    [Arguments]   ${appURL}    ${appBrowser}
    OPEN BROWSER   ${appURL}       ${appBrowser}
    Maximize Browser Window
    ${Pgtitle}=  Get Title
    Log     ${Pgtitle}    WARN

LogOutandCloseBrowser
    Close Browser

*** Test Cases ***
Testing with Browser
    [Documentation]    Launching the browser
    LaunchBrowser    ${URL}    ${Browser}
