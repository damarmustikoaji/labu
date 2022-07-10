*** Settings ***
Force Tags      check
Library         SeleniumLibrary

Test Setup  Open Chrome
Suite teardown    Close all browsers

*** Variables ***
${browserPath}          /usr/local/bin/chromedriver

*** Keywords ***
Open Chrome
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
#    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}      executable_path=${browserPath}
Suite shutdown
     Close All Browsers

*** Test Cases ***
Verify Google
    [documentation]     Positive
    [tags]  googlecheck
    Go To    https://google.com
    Title Should Be         Google
    Close All Browsers

Verify Kumparan
    [documentation]     Positive
    [tags]  kumparancheck
    Go To    https://kumparan.com
    Title Should Be         Google
    Close All Browsers
