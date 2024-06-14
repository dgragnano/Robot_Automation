*** Settings ***
Documentation        Cenários de teste de login no MovCad

Resource        ../resources/base.resource
Resource        ../resources/Pages/LoginPage.resource

Test Setup        Start Session
Test Teardown     Take Screenshot

*** Test Cases ***

Não deve conseguir realizar o login com email incorreto
    [Tags]        email_nok

    Email incorreto
    
    
Não deve conseguir realizar o login com senha incorreta
    [Tags]        senha_nok

    Senha incorreta


Não deve conseguir realizar o login sem preencher email e senha
    [Tags]        email_senha_vazio

    Email e senha não preenchidos    
    

Deve conseguir realizar o login
    [Tags]        login_ok

    Login com sucesso

Email informado é inválido
    [Tags]    inv_email

    Email inválido