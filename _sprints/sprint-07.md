---
title: Sprint-07
published: false
---

# Sprint 7

## Contexto

O sistema já recebe leituras de vários sensores, cada um com a sua calibração. No entanto, a informação de cada sensor (identificador, ganho e desvio) está dispersa pelo programa, por exemplo em vários vetores separados que só fazem sentido se forem lidos em conjunto, posição a posição.

A AeroSense vai passar a descrever cada sensor com uma ficha técnica, que irá ganhar novas características ao longo do tempo. A primeira será a gama de funcionamento, que passa a ser própria de cada sensor:

| Sensor  | ganho | desvio | temperatura mínima | temperatura máxima |
| ------- | ----: | -----: | -----------------: | -----------------: |
| `TEMP1` |   260 |    -20 |           -10 °C   |           190 °C   |
| `TEMP2` |   250 |    -15 |             0 °C   |           150 °C   |
| `TEMP3` |   240 |    -10 |           -10 °C   |           100 °C   |

O trabalho deste sprint tem duas fases: primeiro, reorganizar o programa para que cada sensor seja tratado como uma unidade, **sem alterar o comportamento** (requisitos base); depois, acrescentar a gama de funcionamento de cada sensor (requisitos adicionais).

## Requisitos

### Requisitos base

O programa deve cumprir as especificações do Sprint 6, mantendo **exatamente o mesmo comportamento**: para as mesmas entradas, deve produzir as mesmas saídas. Os ficheiros de teste do Sprint 6 continuam válidos. Adicionalmente, deve cumprir com o seguinte:

1. Toda a informação que caracteriza um sensor (identificador, ganho e desvio) deve estar agrupada num único elemento de dados, que represente o sensor como um todo. Não devem existir vetores separados para cada característica dos sensores.
2. O conjunto dos sensores conhecidos deve ser uma coleção desses elementos, definida num único ponto do código. Acrescentar um sensor deve consistir apenas em acrescentar a sua ficha a essa coleção.
3. Deve existir uma função que, dado um identificador, procura o sensor correspondente na coleção e indica se o encontrou.
4. A função de conversão do valor lido em temperatura deve receber o sensor (e não o ganho e o desvio em separado).
5. A organização em funções do Sprint 5 mantém-se: as funções de procura, conversão, validação e cálculo não leem dados do teclado nem escrevem no ecrã.

### Requisitos adicionais

**Nota:** Estes requisitos só devem ser implementados após a conclusão com sucesso dos requisitos base.

1. A ficha de cada sensor passa a incluir também a temperatura mínima e a temperatura máxima da sua gama de funcionamento, com os valores da tabela acima.
2. A validação de cada leitura passa a usar a gama do sensor que a produziu. A mensagem "Valor fora da gama" continua a ser apresentada quando a temperatura está fora dessa gama.
3. Acrescentar a nova característica deve exigir alterações apenas na ficha do sensor, na definição dos sensores conhecidos e na função de validação.

## Exemplo

### Requisitos base

O comportamento é o do Sprint 6. Por exemplo:

```text
TEMP1 1 234
39.47
TEMP2 1 546
118.43
TEMP3 1 092
11.58
FIM

Leituras registadas (sensor instante: valor -> temperatura):
TEMP1 1: 234 ->  39.47
TEMP2 1: 546 -> 118.43
TEMP3 1:  92 ->  11.58

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

Sensor TEMP3
Número de valores lidos: 1
Temperatura mínima:     11.58
Temperatura máxima:     11.58
Temperatura média:      11.58
Desvio-padrão:           0.00
```

Embora a saída seja a mesma, o código que a produz deve estar organizado de acordo com os requisitos acima.

### Requisitos adicionais — gama própria de cada sensor

A leitura `TEMP2 2 700` corresponde a 156.07&deg;&nbsp;C, que era aceite no Sprint 6 mas está fora da gama do `TEMP2` (0&deg;&nbsp;C a 150&deg;&nbsp;C). Da mesma forma, `TEMP3 2 500` corresponde a 107.30&deg;&nbsp;C, acima do máximo do `TEMP3` (100&deg;&nbsp;C).

```text
TEMP1 1 234
39.47
TEMP2 1 650
143.85
TEMP2 2 700
Valor fora da gama
TEMP3 1 450
95.57
TEMP3 2 500
Valor fora da gama
FIM

Leituras registadas (sensor instante: valor -> temperatura):
TEMP1 1: 234 ->  39.47
TEMP2 1: 650 -> 143.85
TEMP3 1: 450 ->  95.57

Sensor TEMP1
Número de valores lidos: 1
Temperatura mínima:     39.47
Temperatura máxima:     39.47
Temperatura média:      39.47
Desvio-padrão:           0.00

Sensor TEMP2
Número de valores lidos: 1
Temperatura mínima:    143.85
Temperatura máxima:    143.85
Temperatura média:     143.85
Desvio-padrão:           0.00

Sensor TEMP3
Número de valores lidos: 1
Temperatura mínima:     95.57
Temperatura máxima:     95.57
Temperatura média:      95.57
Desvio-padrão:           0.00
```
