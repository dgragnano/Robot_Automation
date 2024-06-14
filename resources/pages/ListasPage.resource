*** Settings ***

Documentation        Elementos e ações da página de listas

Library            Browser

Resource        ../env.resource


*** Keywords ***

Filtrar todas listas
    Click                          xpath=//*[@id="show-modal-provider"]/div[1]/div/div[2]/label[1]/div/p
    Wait For Elements State        xpath=//div[text()="Total de"]    visible        5
    Get Text                       xpath=//div[text()="Total de"]    contains       Total de

Acessar combo relatórios
    Click        xpath=//*[@id="show-modal-provider"]/div[1]/div/div[4]/div[1]/table/thead/tr/th[1]/div/div/div
    Click        xpath=//*[@id="show-modal-provider"]/div[1]/div/div[4]/div[2]/div/div[1]/label/div/div[1]

Relatório detalhado
    Click        xpath=//*[@id="show-modal-provider"]/div[1]/div/div[4]/div[2]/div/div[1]/label/div/div[2]/ul/li[2]
    Set Browser Timeout    20       

Relatório resumido
     Click        xpath=//*[@id="show-modal-provider"]/div[1]/div/div[4]/div[2]/div/div[1]/label/div/div[2]/ul/li[1]
     Set Browser Timeout    20

Relatório não é gerado
    Click                xpath=//*[@id="show-modal-provider"]/div[1]/div/div[4]/div[2]/div/div[1]/label/div/div[1]
    Click                xpath=//*[@id="show-modal-provider"]/div[1]/div/div[4]/div[2]/div/div[1]/label/div/div[2]/ul/li[1]
    Get Element States   xpath=//*[@id="show-modal-provider"]/div[1]/div/div[4]/div[2]/div/div[1]/label/div/div[2]/ul

Lista csv
    Click                          xpath=//div[text()="Importar Lote"]
    Click                          xpath=//li[text()="ARQUIVO - CSV"]
    Upload File By Selector        xpath=//p[text()="procure em seu computador"]    ${csv_file_path}
    Wait For Elements State        xpath=//button[text()="importar"]    visible    30
    Click                          xpath=//button[text()="importar"]
    Wait For Elements State        xpath=//h1[text()="listas de movimentações"]    visible        5
    Get Text                       xpath=//h1[text()="listas de movimentações"]    equal    listas de movimentações
    Click                          xpath=//*[@id="show-modal-provider"]/div[1]/div/div[2]/label[1]/div/p
    Wait For Elements State        xpath=//div[text()="Total de"]    visible        5
    Get Text                       xpath=//div[text()="Total de"]    contains       Total de
    Click                          xpath=//*[@id="show-modal-provider"]/div[1]/div/div[4]/div[1]/table/tbody/tr[1]/td[2]/div
    Get Text                       xpath=//*[@id="full"]/label[1]    contains    Nome

Lista txt
    Click                          xpath=//div[text()="Importar Lote"]
    Click                          xpath=//li[text()="ARQUIVO - TXT"]
    Upload File By Selector        xpath=//p[text()="procure em seu computador"]    ${txt_file_path}
    Wait For Elements State        xpath=//button[text()="importar"]    visible    30
    Click                          xpath=//button[text()="importar"]
    Wait For Elements State        xpath=//*[@id="show-modal-provider"]/div[1]/form/div[3]/div/button[1]    visible    5
    Click                          xpath=//*[@id="show-modal-provider"]/div[1]/form/div[3]/div/button[1]
    Wait For Elements State        xpath=//h1[text()="listas de movimentações"]    visible        5
    Get Text                       xpath=//h1[text()="listas de movimentações"]    equal    listas de movimentações
    Click                          xpath=//*[@id="show-modal-provider"]/div[1]/div/div[2]/label[1]/div/p
    Wait For Elements State        xpath=//div[text()="Total de"]    visible        5
    Get Text                       xpath=//div[text()="Total de"]    contains       Total de
    Click                          xpath=//*[@id="show-modal-provider"]/div[1]/div/div[4]/div[1]/table/tbody/tr[1]/td[2]/div
    Get Text                       xpath=//*[@id="full"]/label[1]    contains    Nome    

Arquivo diferente de txt
    Click                          xpath=//div[text()="Importar Lote"]
    Click                          xpath=//li[text()="ARQUIVO - TXT"]
    Upload File By Selector        xpath=//p[text()="procure em seu computador"]    ${csv_file_path}
    Get Element States             css=class[name="Toastify"]

Arquivo diferente de csv
    Click                          xpath=//div[text()="Importar Lote"]
    Click                          xpath=//li[text()="ARQUIVO - CSV"]
    Upload File By Selector        xpath=//p[text()="procure em seu computador"]    ${txt_file_path}
    Get Element States             css=class[name="Toastify"]