*** Settings ***
Documentation  Robot Framework - Test run on gitlab cicd
Library  SeleniumLibrary

Suite Teardown  Run Keyword And Ignore Error    Suite shutdown

*** Variables ***
${URL}                      https://kumparan.com
${CHROMEDRIVER_PATH}        /usr/local/bin/chromedriver

*** Keywords ***
Open Website
    Open Browser    ${URL}    chrome       executable_path=${CHROMEDRIVER_PATH}

*** Settings ***
Suite Setup       Open Website

*** Test Cases ***
Verify Access Page
    [documentation]     Positive
    [tags]  Functionality
    Capture Page Screenshot
    Title Should Be     kumparan.com - Platform Media Berita Kolaboratif, Terkini Indonesia Hari Ini
    Close Browser

*** Keywords ***
Suite shutdown
     Close All Browsers
