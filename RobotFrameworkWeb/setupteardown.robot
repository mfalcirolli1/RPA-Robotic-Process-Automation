*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

Suite Setup     log to console  Opening Browser  # Run before Test Suite
Suite Teardown  log to console  Closing Browser  # Run after Test Suite

Test Setup     log to console   Login to application  # Run before every Test Case
Test Teardown  log to console   Logout from application  # Run after every Test Case

*** Variables ***
${url}      https://www.google.com
${browser}  chrome

*** Test Cases ***
Test title
    open browser   ${url}   ${browser}
    input text  xpath://*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input    Linx
    sleep  2
    click element  xpath://*[@id="tsf"]/div[2]/div[1]/div[2]/div[2]/div[2]/center/input[1]
    sleep  2
    click element  xpath://*[@id="rso"]/div[1]/div/div/div/div/div[1]/a/h3
    sleep  2
    close browser

*** Keywords ***
Provided precondition
    Setup system under test