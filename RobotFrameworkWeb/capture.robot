*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Variables ***
${url}       https://share.linx.com.br/login.action?os_destination=%2F
${browser}   chrome

*** Test Cases ***
Capture
    open browser  ${url}  ${browser}
    input text  id:os_username  Admin
    input text  id:os_password  password

    capture element screenshot  xpath://*[@id="login-logo-header-inner"]   logo.png
    capture page screenshot   fail.png

*** Keywords ***
Provided precondition
    Setup system under test