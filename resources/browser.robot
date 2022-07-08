*** Settings ***
Documentation  In this file we can list all the variables and keywords to be used
Library        SeleniumLibrary

*** Variables ***
${chromeDriver}         /usr/local/bin/chromedriver
${browser}              Chrome
${url}                  http://kumparan.com

*** Keywords ***
     ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
     Call Method    ${chrome_options}    add_argument    --disable-extensions
     Call Method    ${chrome_options}    add_argument    --headless
     Call Method    ${chrome_options}    add_argument    --disable-gpu
     Call Method    ${chrome_options}    add_argument    --no-sandbox
     Suite shutdown
          Close All Browsers
