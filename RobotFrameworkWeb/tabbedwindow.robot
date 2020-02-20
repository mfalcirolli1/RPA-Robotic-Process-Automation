*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Variables ***
${url}      http://demo.automationtesting.in/Windows.html
${browser}  chrome

*** Test Cases ***
TabbedWindow
    open browser   ${url}  ${browser}
    click element   xpath://*[@id="Tabbed"]/a/button
    sleep  2
    select window   title=Sakinalium | Home
    click link      xpath://*[@id="container"]/header/div/div/div[2]/ul/li[4]/a
    sleep  3
    close browser

*** Keywords ***
Provided precondition
    Setup system under test