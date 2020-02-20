*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Variables ***
${url}      https://stackoverflow.com/teams/use-cases
${browser}  chrome

*** Test Cases ***
ScrollingTest
    open browser  ${url}  ${browser}
    maximize browser window

    # execute javascript  window.scrollTo(0, 3800)
    # scroll element into view  xpath://*[@id="content"]/div[5]/div[2]/div[3]/p

    execute javascript  window.scrollTo(0, document.body.scrollHeight)  # Bottom
    sleep  2
    execute javascript  window.scrollTo(0, -document.body.scrollHeight)  # Top

*** Keywords ***
Provided precondition
    Setup system under test
