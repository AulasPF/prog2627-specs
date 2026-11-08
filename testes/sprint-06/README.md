---
title: Sprint 06
parent: Testes
published: true
---

# Testes do Sprint 06

Ficheiros de entrada para testar o programa do Sprint 06. Cada ficheiro é lido por redirecionamento ou pipe:

```text
./programa < teste-01.txt
cat teste-01.txt | ./programa
```

Os testes estão ordenados por complexidade crescente. Os resultados indicados assumem um limite máximo de **20 leituras**. Os ficheiros que atingem o limite têm 30 linhas válidas, pelo que servem para qualquer limite até 30.

| Ficheiro | Objetivo | Resultado esperado |
| -------- | -------- | ------------------ |
| `teste-01.txt` | Entrada só com `FIM`. Verificar que o programa termina sem leituras e não falha ao apresentar a lista e as estatísticas vazias. | Nenhuma leitura registada. |
| `teste-02.txt` | Caso mais simples: um só sensor (`TEMP1`), poucas leituras corretas, terminando com `FIM`. | 5 leituras de `TEMP1`. |
| `teste-03.txt` | Vários sensores (`TEMP1`, `TEMP2`, `TEMP3`) com leituras intercaladas, terminando com `FIM`. Verificar a calibração por sensor e as estatísticas separadas. Inclui valores com zeros à esquerda (`092`). | 10 leituras: 3 de `TEMP1`, 4 de `TEMP2` e 3 de `TEMP3`. |
| `teste-04.txt` | Um só sensor, leituras corretas até esgotar o limite, sem `FIM`. Verificar que a leitura termina no limite e as linhas seguintes são ignoradas. | 20 leituras de `TEMP1` (instantes 1 a 20). |
| `teste-05.txt` | Vários sensores, leituras corretas até esgotar o limite. Há um `FIM` e mais linhas depois do limite, que nunca devem ser lidos. | 20 leituras: 8 de `TEMP1`, 6 de `TEMP2` e 6 de `TEMP3`. |
| `teste-06.txt` | Valores nos limites da gama válida (-10 °C a 190 °C) para cada sensor: o último valor válido e o primeiro inválido em cada extremo. Inclui os valores extremos do sensor (0 e 1023). | 6 leituras válidas e 8 "Valor fora da gama". `TEMP3 1 0` dá exatamente -10.00 °C (válido). |
| `teste-07.txt` | Leituras válidas misturadas com valores fora da gama, até esgotar o limite. Verificar que os valores fora da gama **contam** para o limite de leituras. | Termina após 20 leituras contadas: 16 válidas e 4 fora da gama. |
| `teste-08.txt` | Identificadores de sensor errados (`TEMP9`, `temp1`, `TEMP`, `TEMP10`, `TEMP4`, `TEMP0`) misturados com leituras válidas. Um dos sensores conhecidos (`TEMP3`) não tem leituras. | 6 "Sensor desconhecido". 5 leituras válidas. `TEMP3` não aparece nas estatísticas. |
| `teste-09.txt` | Linhas mal formadas misturadas com leituras válidas: campo em falta, instante ou valor não inteiro, valor decimal, campo a mais, `fim` em minúsculas. Verificar que a leitura continua após cada erro. | 7 "Linha inválida", 1 "Sensor desconhecido" e 6 leituras válidas. |
| `teste-10.txt` | **Requisitos adicionais.** Campos separados por vários espaços ou tabulações, linhas em branco e mínimos e máximos repetidos em instantes diferentes. | Linhas em branco ignoradas. 10 leituras válidas. |

## Notas

- Nos testes 08 e 09 há sempre menos de 20 linhas antes do `FIM`. Assim, o resultado é o mesmo quer "Sensor desconhecido" e "Linha inválida" contem para o limite de leituras, quer não.
- No `teste-09.txt`, a linha `TEMP3 1 2 092` tem um campo a mais e deve ser considerada "Linha inválida". Uma implementação baseada em `scanf` pode aceitá-la indevidamente.
- O `teste-10.txt` só deve ser usado depois de implementados os requisitos adicionais.

{% assign testes = site.static_files | where_exp: "f", "f.path contains '/testes/sprint-06/'" %}
<ul>
{% for f in testes %}
  <li><a href="{{ f.path | relative_url }}">{{ f.name }}</a></li>
{% endfor %}
</ul>