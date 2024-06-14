*** Settings ***
Documentation    Cenários de teste do relatório de beneficiários

Resource        ../resources/base.resource
Resource        ../resources/Pages/LoginPage.resource
Resource        ../resources/Pages/RelatorioBeneficiarios.resource

Test Setup        Start Session
Test Teardown     Take Screenshot


*** Test Cases ***

Deve acessar a tela de relatório de beneficiários
    [Tags]    rel_benef

    Login com sucesso

    #Acessar página de relatório

Deve gerar relatório de ativos com layout 1 e excel
    [Tags]    layout1_excel
    
    Login com sucesso

    Gerar relatório de ativos com layout 1 e excel

Deve gerar relatório de ativos com layout 2 e txt
    [Tags]    layout2_txt
    
    Login com sucesso

    Gerar relatório de ativos com layout 2 e txt
