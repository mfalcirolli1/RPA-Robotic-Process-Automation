*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Variables ***
${url}  http://www2.linx.com.br/intranet/
${browser}   chrome


*** Test Cases ***
Test de Log In
    Open Browser  ${url}   ${browser}
    Login
    Close Browser

*** Keywords ***
Login
    Input Text     id:txtusuario   MATHEUS.FALCIROLLI@LINX.COM.BR
    Input Text     id:txtSenha     ******
    Click Element  id:btnEntrar
