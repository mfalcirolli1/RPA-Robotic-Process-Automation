*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Variables ***
${url}      http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
RegisterTest
    open browser    ${url}  ${browser}
    set selenium speed  0.7

    set selenium timeout      10 seconds
    wait until page contains  Registration  # 5 seconds default

    # set seleninum implicit wait     10 seconds

    select radio button    Gender   M
    input text  id:FirstName    Matheus
    input text  id:LastName     kjdfkjgsd
    input text  id:Email        m.f@teste.com.br
    input text  id:Password     123456
    input text  id:ConfirmPassword   123456


    sleep   3
    close browser

*** Keywords ***
Provided precondition
    Setup system under test
