*** Settings ***
Library     Selenium2Library

*** Variables ***
${HOMEPAGE}     http://www.google.com
${BROWSER}      Chrome

*** Keywords ***
Open Browser    ${HOMEPAGE}     ${BROWSER}

search topic
[Arguments]     ${topic}
Input Text  name=q  ${topic}
Press Key   name=q  \\13

*** Test Cases ***
Open Browser
Search on Google
search topic    browserstack
