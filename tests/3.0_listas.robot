*** Settings ***         
Documentation    Cenários de teste para filtro de listas e relatórios

Resource        ../resources/base.resource
Resource        ../resources/Pages/LoginPage.resource
Resource        ../resources/Pages/ListasPage.resource

Test Setup        Start Session
Test Teardown     Take Screenshot

*** Test Cases ***

Deve filtrar todas as listas
    [Tags]    todas_listas

    Login com sucesso
   
    Filtrar todas listas

    
Deve solicitar relatório detalhado de listas
    [Tags]    detalhado
    
    Login com sucesso

    Filtrar todas listas

    Acessar combo relatórios

    Relatório detalhado


Deve solicitar relatório resumido de listas
    [Tags]    resumido

    Login com sucesso

    Filtrar todas listas

    Acessar combo relatórios

    Relatório resumido   


Não deve solicitar relatório de listas
    [Tags]    relatorio_nok

    Login com sucesso

    Filtrar todas listas

    Relatório não é gerado


