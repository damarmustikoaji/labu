*** Settings ***
Force Tags  check
Library  SeleniumLibrary

Suite Teardown  Run Keyword And Ignore Error    Suite shutdown

*** Variables ***
${URL}                      https://google.com
${CHROMEDRIVER_PATH}        /usr/local/bin/chromedriver

*** Keywords ***
Open Website
    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method     ${chrome_options}       add_argument    --no-sandbox
#    Call Method     ${chrome_options}       add_argument    --headless
    Call Method     ${chrome_options}       add_argument    --start-maximized
    Call Method     ${chrome_options}       add_argument    --disable-extensions
    Call Method     ${chrome_options}       add_argument    --disable-dev-shm-usage
    Call Method     ${chrome_options}       add_argument    --disable-gpu
    Open Browser    Chrome                  chrome_options=${chrome_options}      executable_path=/usr/local/bin/chromedriver

*** Settings ***
Suite Setup       Open Website

*** Test Cases ***
Verify Access Page
    [documentation]     Positive
    [tags]  Functionality
    Capture Page Screenshot
    Go To    https://google.com
    Title Should Be     Google
    Close Browser
    
Verify Access Page
    [documentation]     Positive
    [tags]  Functionality
    Capture Page Screenshot
    Go To    https://kumparan.com
    Title Should Be     Google
    Close Browser

*** Keywords ***
Suite shutdown
     Close All Browsers
