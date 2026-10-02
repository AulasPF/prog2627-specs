---
title: Sprint-04
published: false
---

# Sprint 4

## Contexto

É necessário por vezes rever os valores que foram introduzidos, quer para verificar a sua correção, quer para realizar cálculos (por exemplo, estatísticas sobre os valores de temperatura). Deve ser possível, após introduzir vários valores, visualizar o conjunto dos valores registados.  

## Requisitos

### Requisitos base

O programa deve cumprir as especificações anteriores. Adicionalmente, deve: 

1. Após a introdução do valor de terminação, apresentar a lista de todos os valores lidos. 
   1. O programa deverá ter um limite máximo de leituras (por exemplo, 20).
   2. Esse limite deverá ser possível de ajustar no código de forma simples e rápida. Isto é, deverá haver no código uma localização onde é definido qual o número máximo de leituras. 
2. O programa deverá também apresentar: 
   1. O número de valores lidos
   2. O valor máximo e o valor mínimo
   3. A média e desvio-padrão dos valores lidos
3. A leitura dos valores é feita em sequência, como anteriormente, e termina: 
   1. Quando se alcança o limite máximo de leituras; ou
   2. Quando é introduzido o valor de terminação (-1)

### Requisitos adicionais

**Nota:** Estes requisitos só devem ser implementados após a conclusão com sucesso dos requisitos base. 

1. O número de amostras a serem lidas é solicitado ao utilizador no arranque do programa, em vez de estar fixo no código. Após a leitura deste valor, inicia-se a leitura dos valores dos sensores 


## Exemplo

Exemplos de entradas e saídas com o limite de 5 leituras. Usam-se `ganho_num = 260`, `ganho_den = 1023` e `offset = -20`; a conversão é `ganho_num * (float)valor_sensor / ganho_den + offset`. As temperaturas são apresentadas com duas casas decimais. As estatísticas são calculadas sobre as temperaturas, usando o desvio-padrão populacional. O valor de terminação `-1` não é contado nem incluído na lista.

Exemplos de interação

### Situação 1 — leitura até ao limite de 5 valores


```text
400
Temperatura: 81.66 °C
500
Temperatura: 107.08 °C
600
Temperatura: 132.49 °C
700
Temperatura: 157.91 °C
800
Temperatura: 183.32 °C

Valores lidos (sensor → temperatura):
400 → 81.66 °C
500 → 107.08 °C
600 → 132.49 °C
700 → 157.91 °C
800 → 183.32 °C

Número de valores lidos: 5
Temperatura mínima: 81.66 °C
Temperatura máxima: 183.32 °C
Temperatura média: 132.49 °C
Desvio-padrão populacional: 35.94 °C
```

### Situação 2 — terminação após 3 valores

Entrada (valores do sensor):

```text
400
Temperatura: 81.66 °C
500
Temperatura: 107.08 °C
600
Temperatura: 132.49 °C
-1

Valores lidos (sensor → temperatura):
400 → 81.66 °C
500 → 107.08 °C
600 → 132.49 °C

Número de valores lidos: 3
Temperatura mínima: 81.66 °C
Temperatura máxima: 132.49 °C
Temperatura média: 107.08 °C
Desvio-padrão populacional: 20.75 °C
```