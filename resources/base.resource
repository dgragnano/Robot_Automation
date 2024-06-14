*** Settings ***

Library        Browser

Resource        env.resource


*** Keywords ***

Start Session

    New Browser    browser=chromium    headless=False
    New Page       https://movcad-prot.unimedfesp.dev.br/novo/login
