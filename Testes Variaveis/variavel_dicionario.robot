*** Settings ***
Documentation    Essa suite apenas imprime nos logs os meses e suas respectivas quantidade de dias
Library          BuiltIn

*** Variables ***
&{MESES_DIAS}    
...    Janeiro=31    
...    Fevereiro=28    
...    Março=31    
...    Abril=30    
...    Maio=31    
...    Junho=30    
...    Julho=31    
...    Agosto=31    
...    Setembro=30    
...    Outubro=31    
...    Novembro=30    
...    Dezembro=31

*** Test Cases ***
Caso de Teste 01 - Imprimir todos os meses e suas quantidades de dias
    FOR    ${mes}    ${qDias}    IN    &{MESES_DIAS}
            Log To Console    O mês de ${mes} possui ${qDias} dias
    END