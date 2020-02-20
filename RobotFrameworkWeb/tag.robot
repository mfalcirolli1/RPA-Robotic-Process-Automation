# robot --include=regression tag.robot       Choose
# robot -i regression -i sanity tag.robot    Include
# robot -e regression tag.robot              Exclude
# robot -e sanity -i regression tag.robot    Include & Exclude

*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Register
    [Tags]  regression
    log to console   User registration test
    log to console   Finished

Login
    [Tags]  sanity
    log to console   Login Test
    log to console   Finished

Changing
    [Tags]  regression
    log to console   Changing user settings
    log to console   Finished

Logout
    [Tags]  sanity
    log to console   Logout Test
    log to console   Test is over


*** Keywords ***
Provided precondition
    Setup system under test
