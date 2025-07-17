*** Settings ***
Documentation    Essa suite testa o site da Amazon.com.br
Resource         amazon_resources.robot
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
    Acessar a barra de pesquinsa e digitar o nome do produto "Xbox Series S" no campo de Pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto pesquisado