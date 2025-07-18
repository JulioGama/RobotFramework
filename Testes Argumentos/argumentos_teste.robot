*** Settings ***
Documentation    Essa suite apenas imprime um novo e-mail gerado
Library          BuiltIn
Library          FakerLibrary

*** Variables ***
${EMAIL}
${PALAVRA_ALEATORIA}

*** Test Cases ***
Caso de Teste 01 - Gerar novo E-mail
    ${PALAVRA_ALEATORIA}=    FakerLibrary.Word  
    Gerando novo E-mail    Teste    Junior    ${PALAVRA_ALEATORIA}
        
    
*** Keywords ***
Gerando novo E-mail 
    [Arguments]     ${NOME_USUARIO}   ${SOBRENOME_USUARIO}    ${PALAVRA_ALEATORIA}
    Log To Console    Nome Usuário: ${NOME_USUARIO}
    Log To Console    Sobrenome: ${SOBRENOME_USUARIO}
    Log To Console    Palavra Aleatória: ${PALAVRA_ALEATORIA}
    Log To Console    E-mail gerado: ${NOME_USUARIO}${SOBRENOME_USUARIO}${PALAVRA_ALEATORIA}@testerobot.com