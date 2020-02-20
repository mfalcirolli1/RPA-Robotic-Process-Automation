*** Settings ***
Documentation    Automação de Processos Robóticos - Verificação de Alerta
Library   SeleniumLibrary


*** Variables ***
${url}      http://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
HandlingAlerts
    open browser    ${url}  ${browser}
    click element  xpath://*[@id="HTML9"]/div[1]/button
    sleep   2

    handle alert    accept
    # handle alert    dismiss
    # handle alert    leave
    # alert should be present    Press a button!
    # alert should not be present     Press a button!

    close browser



*** Keywords ***
Provided precondition
    Setup system under test