*** Settings ***         
Documentation    Cenários de teste para envios de listas em lote

Resource        ../resources/base.resource
Resource        ../resources/Pages/LoginPage.resource
Resource        ../resources/Pages/ListasPage.resource

Test Setup        Start Session
Test Teardown     Take Screenshot

*** Test Cases ***

Deve enviar listas em csv
    [Tags]    lista_csv

    Login com sucesso
   
    Lista csv

    
Deve enviar listas em txt
    [Tags]    lista_txt
    
    Login com sucesso

    Lista txt


Não deve aceitar arquivo com extensão diferente de txt
    [Tags]    No_txt

    Login com sucesso

    Arquivo diferente de txt


Não deve aceitar arquivo com extensão diferente de csv
    [Tags]    No_csv

    Login com sucesso

    Arquivo diferente de csv


