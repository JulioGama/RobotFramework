*** Settings ***
Resource    ../resources/api_teste_usuarios.resource

*** Variables ***


*** Test Cases ***
Cenário 01: Cadastrar um novo usuário com sucesso na ServeRest
    Criar um usuário novo
    # Cadastrar o usuário na ServeRest
    # Validar se o usuário foi cadastrado corretamente
