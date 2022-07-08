*** Settings ***
Documentation  In this file we can list all the variables and keywords to be used
Library        SeleniumLibrary

*** Variables ***
${browser}              ${EXECDIR}/driver/chromedriver
${url}                  http://kumparan.com

*** Keywords ***
Suite shutdown
     Close All Browsers