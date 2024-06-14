*** Settings ***

Documentation        Elementos e ações da página de login

Library        Browser

Resource        ../env.resource


*** Keywords ***

Login com sucesso
    Fill Text    css=input[name="usuario"]      ${email}
    Fill Text    css=input[name="senha"]        ${senha}
    Click        css=button[type="submit"] >> text=conectar
    Set Browser Timeout    20
    Wait For Elements State        xpath=//h1[text()="listas de movimentações"]    visible        10
    Get Text                       xpath=//h1[text()="listas de movimentações"]    equal    listas de movimentações

Email incorreto
    Fill Text    css=input[name="usuario"]      ${email_nok}
    Fill Text    css=input[name="senha"]        ${senha}
    Click        css=button[type="submit"] >> text=conectar
    Wait For Elements State        xpath=//p[text()="Usuário ou senha incorretos. Tente novamente."]    visible        10
    Get Text                       xpath=//p[text()="Usuário ou senha incorretos. Tente novamente."]    equal    Usuário ou senha incorretos. Tente novamente.

Senha incorreta
    Fill Text    css=input[name="usuario"]      ${email}
    Fill Text    css=input[name="senha"]        ${senha_nok}
    Click        css=button[type="submit"] >> text=conectar
    Wait For Elements State        xpath=//p[text()="Usuário ou senha incorretos. Tente novamente."]    visible        10
    Get Text                       xpath=//p[text()="Usuário ou senha incorretos. Tente novamente."]    equal    Usuário ou senha incorretos. Tente novamente.

Email e senha não preenchidos
    Get Title       equal    MovCad
    Click           css=button[type="submit"] >> text=conectar
    Get Text        xpath=//p[text()="O e-mail é obrigatório"]    equal    O e-mail é obrigatório
    Get Text        xpath=//p[text()="A senha é obrigatória"]     equal    A senha é obrigatória

Email inválido
    Fill Text    css=input[name="usuario"]      ${inv_email}
    Fill Text    css=input[name="senha"]        ${senha}
    Click        css=button[type="submit"] >> text=conectar
    Wait For Elements State        xpath=//p[text()="E-mail inválido"]    visible    5
