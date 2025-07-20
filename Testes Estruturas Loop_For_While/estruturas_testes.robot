*** Settings ***
Documentation   Suíte para percorrer lista e imprimir números
Test Setup      Log To Console    ${\n}
Test Teardown   Log To Console    ${\n}


*** Variables ***
@{LISTA}    0    1    2    3    4    5    6    7    8    9    10

*** Test Cases ***
Caso de Teste 01 - Percorrer lista e imprimir números com FOR e IF
    Percorrer lista e imprimir números

Caso de Teste 02 - Percorrer lista e imprimir números com 
    Percorrer lista com índice e imprimir números


*** Keywords ***
Percorrer lista e imprimir números
    FOR  ${NUMERO}   IN  @{LISTA}
        IF    '${NUMERO}' == '5'
            Log To Console    Meu número atual é ${NUMERO} - Eu sou o número 5!
        ELSE IF   '${NUMERO}' == '10'  
            Log To Console    Meu número atual é ${NUMERO} - Eu sou o número 10!
        ELSE
            Log To Console    Meu número atual é ${NUMERO} - Eu não sou o número 5 e nem o 10!
        END
    END

Percorrer lista com índice e imprimir números
    ${INDEX}     Set Variable    0
    ${TAMANHO}   Get Length      ${LISTA}

    WHILE    ${INDEX} < ${TAMANHO}
        ${VALOR_ATUAL}    Set Variable    ${LISTA[${INDEX}]}
        IF    ${VALOR_ATUAL} == 2
            Log To Console    Achei o número 2!
        ELSE IF    ${VALOR_ATUAL} == 8
            Log To Console    Achei o número 8!
        ELSE
            Log To Console    Ainda procurando...
        END
        ${INDEX}    Set Variable    ${INDEX} + 1
    END