*** Settings ***
Documentation    Essa suite testa o site da Amazon.com.br
Resource         amazon_resources_testes.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

# Suite Setup
# Sute Teardown

*** Test Cases ***

Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Esse teste verifica o menu Eletrônicos do site da Amazon.com.br
    ...                e verifica a categoria "Computadores e Informática"
    [Tags]             menus    categorias
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Vertificar se aparece a categoria "Computadores e Informática"

Caso de Teste 02 - Pesquisa de Produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]             busca_produtos    lista_busca
    Acessar a home page do site Amazon.com.br
    Acessar a barra de pesquisa e digitar o nome do produto "Xbox Series S" no campo de Pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto pesquisado

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Acessar a home page do site Amazon.com.br
    Acessar a barra de pesquisa e digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
 
Caso de Teste 04 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Acessar a home page do site Amazon.com.br
    Acessar a barra de pesquisa e digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Remover o produto "Console Xbox Series S" do carrinho
    Verificar se o carrinho fica vazio