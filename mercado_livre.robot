*** Settings ***
Resource    mercado_resources.robot

*** Test Cases ***
Adicionar produto ao carrinho
    Abrir o site
    Clicar em continuar comprando
    Aceitar os cookies
    Pesquisar o produto
    Clicar no primeiro produto
    Adicionar ao carrinho
    Close Browser
