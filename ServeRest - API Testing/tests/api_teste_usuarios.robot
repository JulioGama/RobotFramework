*** Settings ***
Resource    ../resources/api_teste_usuarios.resource

*** Variables ***


*** Test Cases ***
Cenário 01: Cadastrar um novo usuário com sucesso na ServeRest
    Criar um usuário novo
    Cadastrar o usuário na ServeRest    email=${EMAIL_TESTE}    status_code_desejado=201
    Validar se o usuário foi cadastrado corretamente

Cenário 02: Cadastrar um usuário existente
    Criar um usuário novo
    Cadastrar o usuário na ServeRest    email=${EMAIL_TESTE}    status_code_desejado=201
    Repetir o cadatro do usuário    
    Verificar se a API não permite o cadastro repetido

Cenário 03: Consultar os dados de um novo usuário
    Criar um usuário novo
    Cadastrar o usuário na ServeRest    email=${EMAIL_TESTE}    status_code_desejado=201
    Consulta os dados do novo usuário
    Validar os dados consultados

Cenário 04: Logar com o novo usuário criado
    Criar um usuário novo
    Cadastrar o usuário na ServeRest  email=${EMAIL_TESTE}  status_code_desejado=201
    Realizar Login com o usuário
    Conferir se o Login ocorreu com sucesso