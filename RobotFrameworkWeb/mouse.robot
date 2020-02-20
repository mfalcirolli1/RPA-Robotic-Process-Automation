*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Mouse
    open browser  https://swisnl.github.io/jQuery-contextMenu/demo.html  chrome
    maximize browser window
    Right Click
    Double-Click
    Drag-and-Drop
    close browser

*** Keywords ***
Right Click
    open context menu  xpath:/html/body/div/section/div/div/div/p/span
    sleep  2

Double-Click
    go to  http://testautomationpractice.blogspot.com/
    sleep  1
    clear element text  id:field1
    sleep  1
    input text  id:field1  Linx
    sleep  1
    double click element  xpath://*[@id="HTML10"]/div[1]/button
    sleep  2

Drag-and-Drop
    go to  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    drag and drop  id:box5     id:box105
    drag and drop  id:box6     id:box106
    drag and drop  id:box7     id:box107
    drag and drop  id:box3     id:box103
    drag and drop  id:box1     id:box101
    drag and drop  id:box4     id:box104
    drag and drop  id:box2     id:box102

    sleep  3
