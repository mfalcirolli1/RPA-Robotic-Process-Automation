*** Settings ***
Documentation    Robotic Process Automation - Validation Test

Library  SeleniumLibrary

*** Variables ***
${url}         https://fast.com/pt/
${browser}  chrome

*** Test Cases ***
Teste de velocidade de internet
    open browser  ${url}  ${browser}

    sleep  20
    Confirm the end of the test

    Screen Shot
    close browser



*** Keywords ***
Confirm the end of the test
    element should be enabled  id:show-more-details-link
    element should be visible  id:show-more-details-link

Screen Shot
    capture page screenshot   speedtest.png