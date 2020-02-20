*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Variables ***
${url}      http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
ClosingMultipleBrowsers
    open browser  ${url}    ${browser}
    maximize browser window

    open browser  http://www.practiceselenium.com/practice-form.html    chrome

    # close browser

    close all browsers


*** Keywords ***
Provided precondition
    Setup system under test
