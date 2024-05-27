*** Settings ***

Documentation               Cenário de signup

Resource    ../resources/base.resource

Resource    ../resources/pages/Login.resource

Resource    ../resources/pages/Signup.resource

*** Test Cases ***

Validar sinup com sucesso

    ${account}      Get User Fake Account

    Open Browser

    Click Menu Login

    Fill Text Email         ${account}[email]

    Click Create User

    Fill Text in Signup     ${account} 

    Click in Submit Account

    Take Screenshot



Validar signup Invalid

    ${account}      Get User Fake Account

    Open Browser

    Click Menu Login

    Fill Text Email         ${account}[email]

    Click Create User

    Obrigatory input        ${account}

    Click in Submit Account

    Take Screenshot





    
