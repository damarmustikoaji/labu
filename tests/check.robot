*** Settings ***
Force Tags      check
Resource        ${EXECDIR}/resources/browser.robot

Test Setup          Open Chrome
Suite Teardown      Close All Browsers

*** Test Cases ***
Verify google
    [tags]  google
    Go To    https://google.com
    Title Should Be         Google
    Close All Browsers

Verify kumparan
    [tags]  kumparan
    Go To    https://kumparan.com
    Title Should Be         kumparan.com - Platform Media Berita Kolaboratif, Terkini Indonesia Hari Ini
    Close All Browsers
