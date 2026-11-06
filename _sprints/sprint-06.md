---
title: Sprint-06
published: false
---

# Sprint 6

## Contexto

O sistema passa a receber leituras de **vários sensores** de temperatura. Cada sensor tem um identificador próprio (por exemplo, `TEMP1`, `TEMP2`, `TEMP3`) e características de calibração diferentes.

Cada leitura é agora introduzida numa única linha, com três campos separados por espaços:

```text
TEMP1 1 234
```

em que:

- `TEMP1` é o identificador do sensor;
- `1` é o instante da leitura (por exemplo, segundos desde o início das leituras);
- `234` é o valor lido diretamente do sensor (um inteiro entre 0 e 1023).

A conversão do valor do sensor em temperatura continua a ser feita por uma expressão da forma:

temp = ganho*x/1023 + desvio

mas os valores de `ganho` e `desvio` dependem do sensor:

| Sensor  | ganho | desvio |
| ------- | ----: | -----: |
| `TEMP1` |   260 |    -20 |
| `TEMP2` |   250 |    -15 |
| `TEMP3` |   240 |    -10 |

Nesta fase, os dados de calibração dos sensores são fixos e definidos no próprio código.

## Requisitos

### Requisitos base

O programa deve cumprir as especificações anteriores, incluindo a organização do código em funções. Adicionalmente, deve cumprir com o seguinte:

1. Cada leitura é introduzida numa linha com o formato `SENSOR INSTANTE VALOR`, como descrito acima.
2. A temperatura de cada leitura é calculada com os dados de calibração do sensor indicado na linha.
3. Os dados de calibração de todos os sensores devem estar definidos num único ponto do código, de modo que alterar a calibração de um sensor, ou acrescentar um novo sensor, não obrigue a mexer em várias localizações.
4. Para cada linha lida, o programa apresenta a temperatura correspondente ou uma das mensagens:
   1. "Valor fora da gama", se a temperatura estiver fora da gama válida (-10&deg;&nbsp;C a 190&deg;&nbsp;C);
   2. "Sensor desconhecido", se o identificador não corresponder a nenhum sensor conhecido;
   3. "Linha inválida", se a linha não tiver o formato esperado (por exemplo, se faltar um campo ou se o instante ou o valor não forem inteiros). Neste caso, a linha é ignorada e a leitura continua.
5. A leitura termina quando é introduzida a linha `FIM` ou quando se atinge o limite máximo de leituras.
6. No final, o programa apresenta:
   1. A lista de todas as leituras registadas, indicando o sensor, o instante, o valor lido e a temperatura.
   2. Para cada sensor com leituras, o número de valores lidos, a temperatura mínima, a máxima, a média e o desvio-padrão.

### Requisitos adicionais

**Nota:** Estes requisitos só devem ser implementados após a conclusão com sucesso dos requisitos base.

1. Os campos de cada linha podem estar separados por um ou mais espaços ou tabulações. Linhas em branco são ignoradas.
2. Para cada sensor, indicar também o instante em que ocorreram a temperatura mínima e a temperatura máxima.

## Exemplo

### Situação 1 — leituras de três sensores

```text
TEMP1 1 234
39.47
TEMP1 2 238
40.49
TEMP2 1 546
118.43
TEMP1 3 224
36.93
TEMP3 1 092
11.58
TEMP2 2 560
121.85
TEMP3 2 101
13.70
FIM

Leituras registadas (sensor instante: valor -> temperatura):
TEMP1 1: 234 ->  39.47
TEMP1 2: 238 ->  40.49
TEMP2 1: 546 -> 118.43
TEMP1 3: 224 ->  36.93
TEMP3 1:  92 ->  11.58
TEMP2 2: 560 -> 121.85
TEMP3 2: 101 ->  13.70

Sensor TEMP1
Número de valores lidos: 3
Temperatura mínima:     36.93
Temperatura máxima:     40.49
Temperatura média:      38.96
Desvio-padrão:           1.50

Sensor TEMP2
Número de valores lidos: 2
Temperatura mínima:    118.43
Temperatura máxima:    121.85
Temperatura média:     120.14
Desvio-padrão:           1.71

Sensor TEMP3
Número de valores lidos: 2
Temperatura mínima:     11.58
Temperatura máxima:     13.70
Temperatura média:      12.64
Desvio-padrão:           1.06
```

### Situação 2 — linhas com erros

```text
TEMP1 1 234
39.47
TEMP9 1 300
Sensor desconhecido
TEMP2 1
Linha inválida
TEMP2 abc 546
Linha inválida
TEMP2 1 546
118.43
FIM

Leituras registadas (sensor instante: valor -> temperatura):
TEMP1 1: 234 ->  39.47
TEMP2 1: 546 -> 118.43

Sensor TEMP1
Número de valores lidos: 1
Temperatura mínima:     39.47
Temperatura máxima:     39.47
Temperatura média:      39.47
Desvio-padrão:           0.00

Sensor TEMP2
Número de valores lidos: 1
Temperatura mínima:    118.43
Temperatura máxima:    118.43
Temperatura média:     118.43
Desvio-padrão:           0.00
```
