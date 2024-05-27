*** Settings ***

Documentation               Cenário de menu

Resource    ../resources/base.resource

Resource    ../resources/pages/Menu.resource

*** Test Cases ***

Entrar no menu Woman

    Open Browser

    Click Menu Woman

    Take Screenshot

