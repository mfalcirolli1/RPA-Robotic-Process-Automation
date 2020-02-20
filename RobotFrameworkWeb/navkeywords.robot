*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary

*** Variables ***
${url}          https://www.google.com/
${browser}      chrome

*** Test Cases ***
NavigationTest
    open browser  ${url}     ${browser}
    ${loc}=  get location
    log to console  ${loc}
    sleep  2

    go to  https://www.bing.com/
    ${loc}=  get location
    log to console  ${loc}
    sleep  2

    go back
    ${loc}=  get location
    log to console  ${loc}
    sleep  2

    close browser

*** Keywords ***
Provided precondition
    Setup system under test