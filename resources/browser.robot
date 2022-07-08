*** Settings ***
Documentation  In this file we can list all the variables and keywords to be used
Library        SeleniumLibrary

*** Variables ***
${chromeDriver}         ${EXECDIR}/driver/chromedriver
${browser}              Chrome
${url}                  http://kumparan.com

*** Keywords ***
Suite shutdown
     Close All Browsers