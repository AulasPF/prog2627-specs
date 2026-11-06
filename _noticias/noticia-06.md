---
title: Alargamento a vários sensores
published: false
date: 2026-11-06
---

# Informação

Data: {{ page.date | date: "%d/%m/%Y" }}

A equipa de engenharia da AeroSense reviu o código reorganizado e considera que está em condições de avançar para a fase seguinte do projeto.

Conforme anunciado, o sistema vai passar a monitorizar **vários sensores de temperatura** em simultâneo. Os sensores instalados não são todos iguais: cada um tem a sua própria calibração, definida pelo fabricante.

As leituras passam a chegar ao sistema numa única linha por leitura, com o identificador do sensor, o instante da leitura e o valor lido. Por exemplo:

```text
TEMP1 1 234
TEMP1 2 238
TEMP2 1 546
TEMP3 1 092
```

A transmissão de leituras termina com a linha `FIM`.

Os dados de calibração dos sensores atualmente instalados são os seguintes:

| Sensor  | ganho | desvio |
| ------- | ----: | -----: |
| `TEMP1` |   260 |    -20 |
| `TEMP2` |   250 |    -15 |
| `TEMP3` |   240 |    -10 |

Prevê-se que venham a ser instalados novos sensores, pelo que deve ser simples acrescentá-los ao sistema.

A equipa técnica alerta ainda que a linha de transmissão nem sempre é fiável: podem chegar linhas incompletas, mal formadas ou com identificadores de sensores que não existem. Estas situações devem ser assinaladas, sem interromper a recolha das restantes leituras.

No final de cada recolha, pretende-se consultar as leituras registadas e as estatísticas de temperatura **de cada sensor**.
