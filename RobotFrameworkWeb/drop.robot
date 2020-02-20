*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Variables ***
${url}      http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
Handling Drop-Down and Lists
    Open browser    ${url}  ${browser}
    set selenium speed  0.1

    # Drop-Down
    select from list by label   continents  South America
    sleep   2
    select from list by index   continents  6

    # List Box
    select from list by label   selenium_commands   Switch Commands
    select from list by label   selenium_commands   Browser Commands
    select from list by label   selenium_commands   Navigation Commands
    unselect from list by label     selenium_commands   Navigation Commands

*** Keywords ***
Provided precondition
    Setup system under test
