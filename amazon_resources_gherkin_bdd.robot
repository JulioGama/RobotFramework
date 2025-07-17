*** Settings ***
Library    SeleniumLibrary
# Outras Libraries
# Resource    nome_do_outro_resource.robot

*** Variables ***
${URL}                                 https://amazon.com.br
${MENU_ELETRONICOS}                    //a[contains(text(),'Eletrônicos')]
${SUBMENU_COMPUTADORES_INFORMATICA}    //span[@dir='auto'][normalize-space()='Computadores e Informática']
${BARRA_PESQUISA}                      //input[@id='twotabsearchtextbox']
${BOTAO_PESQUISA}                      //input[@id='nav-search-submit-button']
${PRODUTO}                             Xbox Series S
${TITULO}                              Amazon.com.br : Xbox Series S


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

Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."

Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletrônicos"

Então o título da página deve ficar "${TITULO_PAGINA}"
    Verificar se o título da página fica "${TITULO_PAGINA}"

E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Element Should Be Visible    locator=//span[text()='Eletrônicos e Tecnologia']

E a categoria "Computadores e Informática" deve ser exibida na página
    Vertificar se aparece a categoria "Computadores e Informática"

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

Quando pesquisar pelo produto "Xbox Series S"
    Acessar a barra de pesquisa e digitar o nome do produto "${PRODUTO}" no campo de Pesquisa
    Clicar no botão de pesquisa

Então o título da página após a pesquisa do produto deve ficar "Amazon.com.br : Xbox Series S"
    Title Should Be    title=${TITULO}

E um produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar o resultado da pesquisa se está listando o produto pesquisado