*** Settings ***

Documentation   Arquivo principal do projeto robot

Library     Browser

Library     libs/Account.py


*** Keywords ***

Open browser

    New Browser     browser=chromium    headless=True
    New Page    http://www.automationpractice.pl/index.php
