*** Settings ***
Documentation    Robotic Process Automation - Verification Test

Library  SeleniumLibrary

Test Teardown  Run Keyword If Test Failed   capture page screenshot    fail.png

*** Variables ***
${url}       http://***.***.***.***/zabbix/
${browser}   chrome
${PASSWORD}  zabbix


*** Test Cases ***
Zabbix Test
    open browser   ${url}   ${browser}
    #maximize browser window
    Login
    title should be   zabbix_xcenter_automacao: Dashboard



*** Keywords ***
Login
    input text  id:name   Admin
    input text   id:password  ${PASSWORD}
    click element  id:enter
    sleep  3

















