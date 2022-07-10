*** Settings ***
Documentation  In this file we can list all the variables and keywords to be used
Library         Selenium2Library

*** Variables ***
${browserPath}          /usr/local/bin/chromedriver
${browser}              Chrome
${url}                  https://kumparan.com

*** Keywords ***
Open Chrome
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --start-maximized
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --user-agent
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Set Window Size     ${1400}     ${800}
