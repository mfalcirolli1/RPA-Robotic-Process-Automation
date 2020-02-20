*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
BrowserWindow
    open browser  https://www.google.com/   chrome
    sleep  2
    open browser    https://policies.google.com/terms?fg=1     chrome
    sleep  2

    switch browser  1
    ${title1}=  get title
    log to console   ${title1}

*** Keywords ***
Provided precondition
    Setup system under test