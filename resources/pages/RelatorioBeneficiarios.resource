*** Settings ***

Documentation    Elementos da página de relatório de beneficiários

Library    Browser

Resource        ../env.resource


*** Keywords ***

Acessar página de relatório
    Click        xpath=//div[text()="Relatórios"]
    Click        xpath=//a[text()="Relatório Beneficiários"]
    Get Text     xpath=//h1[text()="Solicitação de Relatório de Beneficiários"]    equal    Solicitação de Relatório de Beneficiários

Gerar relatório de ativos com layout 1 e excel
    Click        xpath=//div[text()="Relatórios"]
    Click        xpath=//a[text()="Relatório Beneficiários"]
    Get Text     xpath=//h1[text()="Solicitação de Relatório de Beneficiários"]    equal    Solicitação de Relatório de Beneficiários
    Set Browser Timeout    5
    Click    css=div[name="modalidade"] >> text=Selecione a modalidade
    Click    xpath=//li[text()="24"]
    Click    css=div[name="termo"] >> text=Selecione o termo
    Click    xpath=//li[text()="250"]
    Click    css=div[name="layout"] >> text=Layout 1
    Click    xpath=//li[text()="Layout 1"]
    Click    css=div[name="extensão"] >> text=xlsx
    Click    xpath=//li[text()="xlsx"]
    Click    xpath=//button[text()="Gerar Relatório"]
    Click    xpath=//button[text()="sim"]
    Wait For Elements State    xpath=//h1[text()="Relatórios"]    visible    5
    Click    xpath=//*[@id="show-modal-provider"]/div[1]/div/div[2]/div/table/tbody/tr[1]/td[5]/div/div/div[2]/div/button
    Wait For Elements State        xpath=//p[text()="Filtros Aplicados"]    visible        5
    Get Text    xpath=//*[@id="show-modal-provider"]/div[1]/div[3]/div[2]/div/div/div[5]    equal    Layout: Layout 1
    Get Text    xpath=//*[@id="show-modal-provider"]/div[1]/div[3]/div[2]/div/div/div[6]    equal    Extensão: xlsx

Gerar relatório de ativos com layout 2 e txt
    Click        xpath=//div[text()="Relatórios"]
    Click        xpath=//a[text()="Relatório Beneficiários"]
    Get Text     xpath=//h1[text()="Solicitação de Relatório de Beneficiários"]    equal    Solicitação de Relatório de Beneficiários
    Set Browser Timeout    10
    Click    css=div[name="modalidade"] >> text=Selecione a modalidade
    Click    xpath=//li[text()="24"]
    Click    css=div[name="termo"] >> text=Selecione o termo
    Click    xpath=//li[text()="250"]
    Click    css=div[name="layout"] >> text=Layout 1
    Click    xpath=//li[text()="Layout 2"]
    Click    css=div[name="extensão"] >> text=xlsx
    Click    xpath=//li[text()="txt"]
    Click    xpath=//button[text()="Gerar Relatório"]
    Click    xpath=//button[text()="sim"]
    Wait For Elements State    xpath=//h1[text()="Relatórios"]    visible    5
    Click    xpath=//*[@id="show-modal-provider"]/div[1]/div/div[2]/div/table/tbody/tr[1]/td[5]/div/div/div[2]/div/button
    Wait For Elements State        xpath=//p[text()="Filtros Aplicados"]    visible        5
    Get Text    xpath=//*[@id="show-modal-provider"]/div[1]/div[3]/div[2]/div/div/div[5]    equal    Layout: Layout 2
    Get Text    xpath=//*[@id="show-modal-provider"]/div[1]/div[3]/div[2]/div/div/div[6]    equal    Extensão: txt