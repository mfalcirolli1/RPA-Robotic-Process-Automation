# Testing without openning the browser window

*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Variables ***
${browser}    headlesschrome
${url}        https://share.linx.com.br/login.action?os_destination=%2F

*** Test Cases ***
LoginTest
    open browser   ${url}   ${browser}
    LoginToLinxShare
    close browser

*** Keywords ***
LoginToLinxShare
    input text   id:os_username     matheus.falcirolli
    input text   id:os_password     ***********
    click element   id:loginButton