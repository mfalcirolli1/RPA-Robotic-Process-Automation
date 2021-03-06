*** Settings ***
Library           AutoItLibrary

*** Variables ***
${Program1}       C:\\Users\\matheus.falcirolli\\Desktop\\Visual Linx 8
${Program2}       \\corporativo\\Aplicativos\\linx_sql8\\Linx\\VisualLinx.exe
@{Users}          Matheus.Falcirolli    Joice.Duarte    Andrezza.Falcirolli

*** Test Cases ***
Status do(s) usuario(s):
    Login
    Open Cadastro de Contatos
    Teste de Usuário 1
    Close Window

*** Keywords ***
Login
    #Run    ${Program1}
    MouseClick    LEFT    112    1016    2    #Open
    WinWait    Visual Linx    Login    20
    MouseClick    LEFT    918    431    2    #Servidor
    Send    {BS}
    Send    A-SRVMTZ0055
    #MouseClick    LEFT    1067    627    1    #BD DropDown
    #MouseClick    LEFT    960    649    1    #Choose BD
    MouseClick    LEFT    1031    676    1    #Entrar
    WinWaitActive    Visual Linx - Linx Sist. E Consultoria
    Sleep    2

Open Cadastro de Contatos
    MouseMove    1919    123    #Icons
    MouseMove    1880    123    #Icons
    MouseClick    LEFT    1900    123    1    #CRM
    Sleep    1
    MouseMove    1690    185    #Contatos
    MouseMove    1500    185    #Reducao e Rescisao
    MouseClick    LEFT    1500    255    1    #Cadastro de Contatos
    Log to console    Status de usuarios:
    Sleep    16

Teste de Usuário 1
    : FOR    ${i}    IN    @{Users}
    \  MouseClick    LEFT    182    106    1
    \  Send    ${i}
    \  MouseClick    LEFT    561    39    1    #Pesquisar
    \  Sleep    7
    #
    \  ${Color}=    PixelGetColor    1177    661
    #
    \  RunKeywordif    ${Color} == 0xE1E1E1    MouseClick    LEFT    1151    660    1
    \  RunKeywordif    ${Color} == 0xE1E1E1    Sleep    1
    \  RunKeywordif    ${Color} == 0xE1E1E1    MouseClick    LEFT    182    106    3
    \  RunKeywordif    ${Color} == 0xE1E1E1    Send    {BS}
    \  RunKeywordif    ${Color} == 0xE1E1E1    Log to console    ${i} - Inexistente
    #
    \  RunKeywordif    ${Color} == 0x000002    MouseClick    LEFT    527    40    1
    \  RunKeywordif    ${Color} == 0x000002    Log to console    ${i} - Existente
    #
    \  Sleep    5

Close Window
    MouseClick    LEFT    882    40    1    #Close Window
    Sleep    1
    MouseClick    LEFT    983    616    1    #Close Window
