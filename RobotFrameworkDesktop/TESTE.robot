*** Settings ***
Library           AutoItLibrary

*** Variables ***
${Program1}       C:\\Program Files\\Oracle\\VirtualBox\\VirtualBox.exe
${Program2}       C:\\Program Files (x86)\\Notepad++\\notepad++

*** Test Cases ***
Notepad++
    Run    ${Program2}
    WinWaitActive    new 1 - Notepad++
    Send    Hello, World.
    MouseClick    LEFT    135    34    1
    MouseClick    LEFT    128    55    1
    Send    Hello, World
    MouseClick    LEFT    698    585    1
    MouseClick    LEFT    756    422    1
    Send    Hello, World
    MouseClick    LEFT    845    483    1
    Send    Olá, Mundo
    MouseClick    LEFT    1155    456    1
    MouseClick    LEFT    1158    483    1
    MouseClick    LEFT    1155    456    1
    MouseClick    LEFT    1158    483    1
    MouseClick    LEFT    1155    456    1
    MouseClick    LEFT    1158    483    1
    MouseClick    LEFT    1155    456    1
    MouseClick    LEFT    1158    483    1
    MouseClick    LEFT    1133    582    1
    #MouseMove    500    300
    #MouseMove    300    800
    #MouseMove    400    1000
    #MouseMove    900    200

Notepad2
    Run    ${Program2}
    WinWaitActive    new 1 - Notepad++
    MouseClick    LEFT    128    104    2
    MouseClick    RIGHT    128    104    1
    MouseClick    LEFT    173    140    1
    MouseClick    RIGHT    66    120    1
    MouseClick    LEFT    213    178    1
    MouseClick    LEFT    88    120    2
    Send    {BS}
    Send    {ENTER}
    MouseClick    RIGHT    90    135    1
    MouseClick    LEFT    155    194    1
    #MouseMove    500    300
    #MouseMove    300    800
    #MouseMove    400    1000
    #MouseMove    900    200

Notepad3
    Run    ${Program2}
    WinWaitActive    new 1 - Notepad++
    #ControlClick    new 1 - Notepad++    Colar    ""    LEFT    1    225
    #...    11
    MouseClick    LEFT    228    54    5
    #WinClose    new 1 - Notepad++
