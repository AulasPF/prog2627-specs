---
title: Sprint-04
published: false
---

# Sprint 4

## Contexto

É necessário por vezes rever os valores que foram introduzidos, quer para verificar a sua correção, quer para realizar cálculos (por exemplo, estatísticas sobre os valores de temperatura). Deve ser possível, após introduzir vários valores, visualizar o conjunto dos valores registados.  

## Requisitos

### Requisitos base

O programa deve cumprir as especificações anteriores. Adicionalmente, deve cumprir com o seguinte: 

1. O programa deverá ter um limite máximo de leituras (por exemplo, 20).
   Deverá ser possível alterar esse valor de forma simples e rápida. Isto é, o número máximo de leituras deve estar definido num único ponto do código,   de modo que alterá-lo não obrigue a mexer em várias localizações.
2. A leitura dos valores é feita em sequência, como anteriormente, e termina: 
   1. Quando se alcança o limite máximo de leituras; ou
   2. Quando é introduzido o valor de terminação (-1).
3. Após terminar a leitura, o programa deve apresentar a lista de todos os valores lidos. 
4. O programa deverá também apresentar: 
   1. O número de valores lidos.
   2. O valor máximo e o valor mínimo das temperaturas lidas.
   3. A média e desvio-padrão das temperaturas lidas.

### Requisitos adicionais

**Nota:** Estes requisitos só devem ser implementados após a conclusão com sucesso dos requisitos base. 

1. O número de amostras a serem lidas é solicitado ao utilizador no arranque do programa, em vez de estar fixo no código. Após a leitura deste valor, inicia-se a leitura dos valores dos sensores. 


## Exemplo

Exemplos de entradas e saídas com o limite de 5 leituras. 

### Situação 1 — leitura até ao limite de 5 valores


```text
400
81.66
500
107.08
600
132.49
700
157.91
800
183.32

Valores lidos (sensor -> temperatura):
400 ->  81.66
500 -> 107.08
600 -> 132.49
700 -> 157.91
800 -> 183.32

Número de valores lidos: 5
Temperatura mínima:     81.66
Temperatura máxima:    183.32
Temperatura média:     132.49
Desvio-padrão:          35.94
```

### Situação 2 — terminação após 3 valores


```text
400
81.66
500
107.08
600
132.49
-1

Valores lidos (sensor -> temperatura):
400 ->  81.66
500 -> 107.08
600 -> 132.49

Número de valores lidos: 3
Temperatura mínima:     81.66
Temperatura máxima:    132.49
Temperatura média:     107.08
Desvio-padrão:          20.75
```