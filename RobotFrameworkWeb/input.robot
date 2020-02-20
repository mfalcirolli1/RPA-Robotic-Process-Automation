*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://share.linx.com.br/#all-updates

*** Test Cases ***
TestingInputBox
    open browser    ${url}      ${browser}
    maximize browser window
    title should be     Painel - Linx Share
    click link  id:login-link
    ${"usuario"}  set variable    id:os_username

    element should be visible   ${"usuario"}
    element should be enabled    ${"usuario"}

    input text  ${"usuario"}    *************@LINX.COM.BR
    sleep   5
    clear element text  ${"usuario"}
    sleep   3
    close browser

*** Keywords ***
Provided precondition
    Setup system under test