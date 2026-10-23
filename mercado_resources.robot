*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir a home do site Mercadolivre.com
    Open Browser    https://lista.mercadolivre.com.br/agua-benta    chrome
    Maximize Browser Window
