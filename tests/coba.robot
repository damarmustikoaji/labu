*** Settings ***
Library  Selenium2Library
Suite Setup     Open Browser    ${URL}   ${BROWSER}
Suite Teardown  Close All Browsers

*** Keywords ***
${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
Call Method    ${chrome_options}    add_argument    --disable-extensions
Call Method    ${chrome_options}    add_argument    --headless
Call Method    ${chrome_options}    add_argument    --disable-gpu
Call Method    ${chrome_options}    add_argument    --no-sandbox
Create Webdriver    Chrome    chrome_options=${chrome_options}

*** Variables ***
${URL}              http://www.google.com
${BROWSER}          Chrome
# Alternately https://accounts.lambdatest.com/profile you can also use xpath=//*[@id="tsf"]/div[2]/div/div[1]/div/div[1]/input
${search_form}      css=form[name=f]
${search_query}     css=input[name=q]
${search_term}      Lambdatest

*** Test Cases ***
Google Search
    Wait Until Element Is Visible  ${search_form}
    Wait Until Element Is Visible  ${search_query}
    Input Text      ${search_query}   ${EMPTY}
    Input Text      ${search_query}   ${search_term}
    Submit Form
