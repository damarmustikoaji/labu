*** Settings ***
Documentation  Robot Framework - Test run on gitlab cicd
Library  SeleniumLibrary

Suite Teardown  Run Keyword And Ignore Error    Suite shutdown

*** Variables ***
${URL}                      https://tinyurl.com/labuuu
${CHROMEDRIVER_PATH}        /usr/bin/google-chrome

*** Keywords ***
Open Website
    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method     ${chrome_options}       add_argument    --no-sandbox
    Call Method     ${chrome_options}       add_argument    --headless
    Call Method     ${chrome_options}       add_argument    --start-maximized
    Call Method     ${chrome_options}       add_argument    --disable-extensions
    Call Method     ${chrome_options}       add_argument    --disable-dev-shm-usage
    Call Method     ${chrome_options}       add_argument    --disable-gpu
    Call Method     ${chrome_options}       add_argument    --user-data-dir
    Open Browser    ${URL}                  chrome          options=${chrome_options}      executable_path=${CHROMEDRIVER_PATH}

*** Settings ***
Suite Setup       Open Website

*** Test Cases ***
Verify Access Page
    [documentation]     Positive
    [tags]  Functionality
    Sleep   3s
    Capture Page Screenshot
    Title Should Be     Google
    Close Browser

*** Keywords ***
Suite shutdown
     Close All Browsers
