*** Settings ***
Documentation    Suite description

*** Test Cases ***
Test title
     page should contain   Login was unsuccessful
     table column should contain
     table row should contain  xpath://table[@name='BookTable']   3   Learn Java
     table cell should contain
     title should be     Painel - Linx Share
     element should be enabled  id:os_username
     element should be visible  id:os_username

    alert should be present    Press a button!
    alert should not be present     Press a button!

    #SeleniumLibrary.   Page Should Contain
    #SeleniumLibrary.   Page Should Not Contain
    #SeleniumLibrary.   Page Should Contain List
    #SeleniumLibrary.   Page Should Contain Link
    #SeleniumLibrary.   Table Should Contain
    #SeleniumLibrary.   Frame Should Contain



*** Keywords ***
Provided precondition
    Setup system under test

