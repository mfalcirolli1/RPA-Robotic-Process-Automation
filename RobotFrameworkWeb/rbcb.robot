*** Settings ***
Documentation    Suite description

Library     SeleniumLibrary

*** Variables ***
${url}      http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    Open Browser  ${url}  ${browser}
    maximize browser window
    set selenium speed   1

    # Selecting Ragio Buttons
    input text  name:firstname      Matheus
    input text  name:lastname       FodfioSGD
    select radio button     sex    Male
    select radio button     exp     5

    # Selecting Check Boxes
    select checkbox     BlackTea
    select checkbox     RedTea
    unselect checkbox   BlackTea

*** Keywords ***
Provided precondition
    Setup system under test
