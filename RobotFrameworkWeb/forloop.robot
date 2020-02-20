*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
# ForLoop1
    #   : FOR   ${i}    IN RANGE    0      11
    #   \   log to console               ${i}

# ForLoop2
    #   : FOR   ${i}    IN   1 2 3 4 5 6
    #   \   log to console  ${i}

# ForLoop3
    #   @{items}    create list     1  2  3  4  5
    #   : FOR   ${i}   IN  @{items}
    #   \  log to console    ${i}

# ForLoop4
    #   : FOR  ${i}   IN      Falcirolli      Matheus     Santos
    #   \  log to console   ${i}

# ForLoop5
    #   @{names}    create list    Falcirolli      Matheus     Santos
    #   : FOR  ${i}   IN    @{names}
    #   \   log to console   ${i}

ForLoop6
    @{items}    create list     1  2  3  4  5
    : FOR   ${i}   IN   @{items}
    \   log to console   ${i}
    \   exit for loop if     ${i}==3

*** Keywords ***
Provided precondition
    Setup system under test
