*** Settings ***
Force Tags      check
Library    Selenium2Library

Suite Teardown      Close All Browsers
Test Setup          Open Chrome

*** Keywords ***
Open Chrome
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
#    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}

*** Test Cases ***
Go to google
    Go To    https://google.com
    Title Should Be         Google
    Close All Browsers

Go to kumparan
    Go To    https://kumparan.com
    Title Should Be         kumparan.com - Platform Media Berita Kolaboratif, Terkini Indonesia Hari Ini
    Close All Browsers
