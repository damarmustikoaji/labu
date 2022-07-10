*** Settings ***
Force Tags  check
Library     Selenium2Library

Suite Teardown    Close All Browsers
Test Setup  Open Chrome

*** Keywords ***

Open Chrome
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}      executable_path=/usr/local/bin/chromedriver


*** Test Cases ***
Verify Successful Kumparan
    Go To    https://google.com
    Title Should Be         Google
    Close Browser

Verify Successful Google
    Go To    https://google.com
    Title Should Be         Google
    Close Browser
