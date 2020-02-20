*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Variables ***
${url}      https://selenium.dev/selenium/docs/api/java/index
${browser}  chrome

*** Test Cases ***
HandlingFrames
    open browser    ${url}  ${browser}
    set selenium speed  0.5

    select frame    packageListFrame    # id, name or xpath
    click link      org.openqa.selenium
    unselect frame

    select frame    packageFrame
    click link      WebDriver
    unselect frame

    select frame    classFrame
    click link      Help
    unselect frame

    close browser

*** Keywords ***
Provided precondition
    Setup system under test