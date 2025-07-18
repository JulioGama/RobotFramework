*** Settings ***
Documentation    Essa suite apenas imprime nos logs os meses
Library          BuiltIn

*** Variables ***
@{MESES}   Janeiro    
...    Fevereiro    
...    Março    
...    Abril    
...    Maio    
...    Junho    
...    Julho
...    Agosto
...    Setembro
...    Outubro
...    Novembro
...    Dezembro

*** Test Cases ***
Caso de Teste 01 - Imprimir todos os meses do ano atual (2025) singularmente (mês a mês)
    Log To Console    ${MESES[0]}
    Log To Console    ${MESES[1]}
    Log To Console    ${MESES[2]}
    Log To Console    ${MESES[3]}
    Log To Console    ${MESES[4]}
    Log To Console    ${MESES[5]}
    Log To Console    ${MESES[6]}
    Log To Console    ${MESES[7]}
    Log To Console    ${MESES[8]}
    Log To Console    ${MESES[9]}
    Log To Console    ${MESES[10]}
    Log To Console    ${MESES[11]}