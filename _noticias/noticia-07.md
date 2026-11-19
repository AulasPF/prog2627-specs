---
title: Características próprias de cada sensor
published: false
date: 2026-11-20
---

# Informação

Data: {{ page.date | date: "%d/%m/%Y" }}

A AeroSense prepara-se para instalar novos modelos de sensores de temperatura. Os fabricantes enviam, para cada sensor, uma **ficha técnica** com as suas características. Até agora essa ficha tinha só a calibração, mas os novos modelos vão trazer mais informação, a começar pela gama de temperaturas em que cada sensor funciona corretamente.

A equipa de engenharia reviu o código atual e verificou que a informação de cada sensor está espalhada por vários pontos do programa: o identificador num sítio, o ganho noutro, o desvio noutro. Cada nova característica obrigaria a mexer em todos esses sítios, com o risco de que a informação de um sensor fique desalinhada com a de outro.

Por isso, o trabalho vai ser feito em duas fases.

**1. Reunir a informação de cada sensor.** Antes de acrescentar características novas, pedimos que o sistema passe a tratar cada sensor como uma unidade: tudo o que diz respeito a um sensor deve estar reunido num só lugar, como numa ficha técnica. Nesta fase o comportamento do sistema **não se altera**: para as mesmas leituras, os resultados devem ser exatamente iguais aos da versão atual.

**2. Gama de funcionamento por sensor.** Depois de concluída a primeira fase, cada sensor passa a ter a sua própria gama de funcionamento. As temperaturas fora da gama do sensor que as mediu devem ser assinaladas, tal como acontece hoje. As fichas dos sensores atualmente instalados passam a ser as seguintes:

| Sensor  | ganho | desvio | temperatura mínima | temperatura máxima |
| ------- | ----: | -----: | -----------------: | -----------------: |
| `TEMP1` |   260 |    -20 |           -10 °C   |           190 °C   |
| `TEMP2` |   250 |    -15 |             0 °C   |           150 °C   |
| `TEMP3` |   240 |    -10 |           -10 °C   |           100 °C   |

Continuamos a prever a instalação de novos sensores. Acrescentar um sensor deve continuar a ser simples: basta preencher a sua ficha.
