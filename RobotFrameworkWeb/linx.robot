*** Settings ***
Documentation    Automação Robótica de Processos - Tempo de resposta de login no Linx Share

Library  SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}        https://share.linx.com.br/login.action?os_destination=%2F

*** Test Cases ***
LoginTest
    open browser   ${url}   ${browser}
    LoginToLinxShare
    close browser

*** Keywords ***
LoginToLinxShare
    input text   id:os_username     matheus.falcirolli
    input text   id:os_password     ************
    click element   id:loginButton
