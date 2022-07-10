*** Settings ***
Force Tags      Check
Resource        ${EXECDIR}/resources/browser.robot

Test Setup          Open Chrome
Suite Teardown      Close All Browsers

*** Test Cases ***
Verify Google
    [documentation]     Check script automation testing run di local dan di pipeline runner dengan url google
    [tags]  Google
    Go To    https://google.com
    Title Should Be         Google
    Close All Browsers

Verify kumparan
    [documentation]     Check script automation testing run di local dan di pipeline runner dengan url kumparan
    [tags]  Kumparan
    Go To    https://kumparan.com
    Title Should Be         kumparan.com - Platform Media Berita Kolaboratif, Terkini Indonesia Hari Ini
    Close All Browsers
