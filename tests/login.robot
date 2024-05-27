*** Settings ***

Documentation               Cenário de login

Resource    ../resources/base.resource

Resource    ../resources/pages/Login.resource

*** Test Cases ***

Deve validar login correto

    ${account}      Get User Fake Account Standard

    Open Browser
    
    Click Menu Login

    Fill Text Login Correct     ${account}

    Click Button Submit

    Sleep   10

    Get Text Menu Login

    Take Screenshot

Deve validar login incorreto
    
    ${account}      Get User Fake Account

    Open Browser

    Click Menu Login

    Fill Text Login Invalid     ${account}

    Click Button Submit    
    Sleep   10
    
    Get Text Login Fail

    Take Screenshot


