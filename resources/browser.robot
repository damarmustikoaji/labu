*** Settings ***
Documentation  In this file we can list all the variables and keywords to be used
Library        SeleniumLibrary

*** Variables ***
${chromeDriver}         /usr/local/bin/chromedriver
${browser}              Chrome
${url}                  https://www.kumparan.com

*** Keywords ***
Suite shutdown
     Close All Browsers
