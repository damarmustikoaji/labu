*** Settings ***

Documentation     A simple example to test a login page
Library           Selenium2Library


Test Setup  Run Keywords
...         Open Browser    https://domain.com/login  Chrome    AND
...         Maximize Browser Window

Test Teardown  Close Browser

*** Variables ***

${username_input}    email
${password_input}   password
${submit_login}   //button[contains(text(),"Login")]
${whoisit}        //html/body/aside/ul/li[1]


*** Test Cases ***

TEST_01: Login to some page
Input Text  ${username_input}   login@domain.com
Input Text  ${password_input}   password
Click button  ${submit_login}
Element Text Should Be  ${whoisit}   Welcome Joe
