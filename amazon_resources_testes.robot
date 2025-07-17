*** Settings ***
Library    SeleniumLibrary
# Outras Libraries

*** Variables ***
${URL}                                 https://amazon.com.br
${MENU_ELETRONICOS}                    //a[contains(text(),'Eletrônicos')]
${SUBMENU_COMPUTADORES_INFORMATICA}    //span[@dir='auto'][normalize-space()='Computadores e Informática']
${BARRA_PESQUISA}                      //input[@id='twotabsearchtextbox']
${BOTAO_PESQUISA}                      //input[@id='nav-search-submit-button']


*** Keywords ***
Abrir o navegador
    Open Browser    browser=edge
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se o título da página fica "${TITULO_PAGINA}"
    Title Should Be    title=${TITULO_PAGINA} 

Vertificar se aparece a categoria "Computadores e Informática"
    Element Should Be Visible    locator=${SUBMENU_COMPUTADORES_INFORMATICA}

Acessar a barra de pesquisa e digitar o nome do produto "${PRODUTO}" no campo de Pesquisa
    Input Text    locator=${BARRA_PESQUISA}    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Button    locator=${BOTAO_PESQUISA}
    
Verificar o resultado da pesquisa se está listando o produto pesquisado
    Wait Until Element Is Visible    locator=(//h2[normalize-space()='Resultados'])[1]