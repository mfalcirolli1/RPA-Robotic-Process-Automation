*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Variables ***
${url}       https://admin-demo.nopcommerce.com
${browser}   chrome
${username}  admin@yourstore.com
${password}  admin
${btn}       xpath:/html/body/div[6]/div/div/div/div/div[2]/div[1]/div/form/div[3]/input

*** Test Cases ***
Data
    open browser  ${url}   ${browser}
    input text  id:Email      ${username}
    input text  id:Password   ${password}
    sleep  2
    select checkbox  RememberMe
    sleep  3
    click element   ${btn}
    sleep  2
    Dashboard should be visible
    close browser

*** Keywords ***
Error message should be visible
    page should contain   Login was unsuccessful

Dashboard should be visible
    page should contain   Dashboard