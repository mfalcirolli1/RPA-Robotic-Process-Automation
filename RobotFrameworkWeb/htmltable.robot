*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Variables ***
${url}      http://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
HTMLtable
    open browser   ${url}   ${browser}
    ${rows}=   get element count   xpath://table[@name='BookTable']/tbody/tr
    ${cols}=   get element count   xpath://table[@name='BookTable']/tbody/tr[1]/th

    log to console  ${rows}
    log to console  ${cols}

    ${data}=   get text    xpath://table[@name='BookTable']/tbody/tr[1]/th
    log to console   ${data}

    table column should contain  xpath://table[@name='BookTable']  2  Amit
    table row should contain  xpath://table[@name='BookTable']   3   Learn Java
    table cell should contain   xpath://table[@name='BookTable']  5    2    Mukesh

    close browser

*** Keywords ***
Provided precondition
    Setup system under test