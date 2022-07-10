*** Settings ***
Force Tags      check
Documentation   Robot Framework - Check
Library         SeleniumLibrary

Suite teardown    Close all browsers

*** Variables ***
${BROWSER}          Chrome

*** Test Cases ***
Verify Google
    [documentation]     Negative
    [tags]  googlecheck
    Open Browser    http://google.com    ${BROWSER}
    Title Should Be         Google
    Close Browser

Verify Kumparan
    [documentation]     Negative
    [tags]  kumparancheck
    Open Browser    http://kumparan.com    ${BROWSER}
    Title Should Be         kumparan.com - Platform Media Berita Kolaboratif, Terkini Indonesia Hari Ini
    Close Browser

*** Keywords ***
Suite shutdown
     Close All Browsers
