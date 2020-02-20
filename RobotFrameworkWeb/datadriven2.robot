*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library  DataDriver  ../LinxProject/DataDriven.xlsx   sheet_name=Plan1

*** Variables ***
${url}
${browser}

*** Test Cases ***
Test title
    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test