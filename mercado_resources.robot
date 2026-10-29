*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir o site
    Open Browser    https://www.amazon.com.br    chrome
    Maximize Browser Window

Clicar em continuar comprando
    Run Keyword And Ignore Error    Click Element    xpath://button[contains(.,'Continuar comprando')]

Aceitar os cookies
    Run Keyword And Ignore Error    Click Element    id:sp-cc-accept

Pesquisar o produto
    Input Text    id:twotabsearchtextbox    camisa nike
    Click Element    id:nav-search-submit-button

Clicar no primeiro produto
    ${link}=    Get Element Attribute    xpath:(//div[@data-component-type='s-search-result']//a[.//h2])[1]    href
    Go To    ${link}

Adicionar ao carrinho
    Click Element    id:add-to-cart-button
    ${tem_seguro}=    Run Keyword And Return Status    Wait Until Element Is Visible    id:attachSiNoCoverage    10s
    IF    ${tem_seguro}    Click Element    xpath://*[@id='attachSiNoCoverage']//input
    Wait Until Page Contains    Adicionado ao carrinho
