*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

Variables  ../RobotFramework/locators.py

*** Variables ***
${url}       http://newtours.demoaut.com/
${browser}   chrome
${username}  tutorial
${password}  tutorial

*** Test Cases ***
LoginTest
    Open
    set selenium speed  0.2
    click link  xpath:/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[2]/td/table/tbody/tr/td[2]/a
    RegisterUser
    sleep  1
    close browser

*** Keywords ***
Open
    open browser   ${url}   ${browser}

Login
    input text  userName  tutorial
    input text  password  tutorial

Singin
    click element  xpath:/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[4]/td/table/tbody/tr[4]/td[2]/div/input

RegisterUser
    input text  firstName  Suehtam
    input text  lastName   xnil
    input text  phone     11986958416
    input text  userName  m.f@linx.com.br
    input text  address1  Rua tanto faz
    input text  address2  Pinheiros
    input text  city      São Paulo
    input text  state     São Paulo
    input text  postalCode    02144-541
    select from list by label  country   BRAZIL
    input text  email             tanto.faz@faztanto.com.br
    input text  password          123456789
    input text  confirmPassword   123456789
    click element  register

