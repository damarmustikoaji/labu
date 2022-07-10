*** Settings ***
Documentation  Robot Framework - Test run on gitlab cicd
Library  SeleniumLibrary

Suite Teardown  Run Keyword And Ignore Error    Suite shutdown

*** Variables ***
${URL}                      https://kumparan.com
${CHROMEDRIVER_PATH}        /usr/local/bin/chromedriver

*** Keywords ***
Open Website
    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Open Browser    ${URL}    chrome    options=${chrome_options}      executable_path=${CHROMEDRIVER_PATH}

*** Settings ***
Suite Setup       Open Website

*** Test Cases ***
Verify Access Page
    [documentation]     Positive
    [tags]  Functionality
    Capture Page Screenshot
    Title Should Be     Google
    Close Browser

*** Keywords ***
Suite shutdown
     Close All Browsers
