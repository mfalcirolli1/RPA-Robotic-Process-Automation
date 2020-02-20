*** Settings ***
Documentation    Suite description

Library     SeleniumLibrary

*** Variables ***
${url}      https://swisnl.github.io/jQuery-contextMenu/demo.html
${browser}  chrome

*** Test Cases ***
GettingLinks
    open browser   ${url}   ${browser}
    ${links}  get element count   xpath://a
    log to console   ${links}

    : FOR   ${i}    IN RANGE  1   ${links}
    \  ${LinkText}=  get text  xpath:(//a)[${i}]
    \  log to console  ${LinkText}

*** Keywords ***
Provided precondition
    Setup system under test