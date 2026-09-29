---
title: Sprint-02
published: false
---

# Sprint 2

## Contexto

Nem todos os valores fornecidos pelo sensor são válidos. Os valores nos extremos da gama não devem ser considerados. Essas leituras consideram-se fora da gama. Deste modo, o programa deve indicar quando a leitura de um valor corresponde a valores fora da gama, imprimindo a mensagem "Valor fora da gama" e não imprimindo o valor de temperatura calculado.  

## Requisitos

O programa deve:

1. Cumprir as especificações de leitura e conversão do [Sprint 01]({% link _sprints/sprint-01.md %})
2. A gama de valores válidos é entre -10&deg;&nbsp;C e 120&deg;&nbsp;C. O programa só deve apresentar valores para temperaturas dentro desta gama. 
3. Fora desta gama, o programa deve apresentar a mensagem "Valor fora da gama". 

## Exemplo

Entrada:

523

Saída:

112.96
