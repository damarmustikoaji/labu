*** Settings ***
Library           Selenium2Library
Library           OperatingSystem

*** Variables ***
${Browser}        Chrome
${SiteUrl}        https://twitter.com/signup

*** Keywords ***
Open page
   open browser    ${SiteUrl}      ${browser}
   Maximize Browser Window
   
*** Test Cases ***
Twitter Registration Flow
   Open Page
