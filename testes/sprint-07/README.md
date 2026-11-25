---
title: Sprint 07
parent: Testes
published: true
---

# Testes do Sprint 07

Ficheiros de entrada para testar o programa do Sprint 07. Cada ficheiro é lido por redirecionamento ou pipe:

```text
./programa < teste-01.txt
cat teste-01.txt | ./programa
```

Ou, para correr todos os testes de uma pasta de uma só vez:

```text
./testes/testar.sh testes/sprint-07
```

## Descarregar os testes

O script [`obter-testes.sh`](https://aulaspf.github.io/prog2627-specs/testes/sprint-07/obter-testes.sh) descarrega todos os ficheiros de teste deste sprint para a pasta `testes/sprint-07`, e o script `testar.sh` para a pasta `testes`. Na pasta onde está o código do programa, execute:

```text
curl -O https://aulaspf.github.io/prog2627-specs/testes/sprint-07/obter-testes.sh
bash obter-testes.sh
```

O script é só uma lista de comandos `curl`, um por ficheiro. Abra-o num editor para ver o que faz.

## Requisitos base

Nos requisitos base o comportamento do programa não se altera, por isso **usam-se os testes do Sprint 06** (`testes/sprint-06`). Para cada teste, a saída do programa reorganizado deve ser **exatamente igual** à da versão do Sprint 06.

Sugestão: antes de começar a reorganizar, corra os testes do Sprint 06 com a versão anterior e guarde as saídas. Depois de cada alteração, volte a correr os testes e compare as saídas com as que guardou (por exemplo, com o comando `diff`).

## Requisitos adicionais

Os testes desta pasta servem para verificar a **gama de funcionamento própria de cada sensor**:

| Sensor  | temperatura mínima | temperatura máxima |
| ------- | -----------------: | -----------------: |
| `TEMP1` |           -10 °C   |           190 °C   |
| `TEMP2` |             0 °C   |           150 °C   |
| `TEMP3` |           -10 °C   |           100 °C   |

Os testes estão ordenados por complexidade crescente. Os resultados indicados assumem um limite máximo de **20 leituras**. A última coluna indica o resultado que se obteria com a gama única do Sprint 06 (-10 °C a 190 °C), para ajudar a perceber o que mudou.

| Ficheiro | Objetivo | Resultado esperado | Com a gama do Sprint 06 |
| -------- | -------- | ------------------ | ----------------------- |
| `teste-01.txt` | O exemplo do enunciado: uma leitura de `TEMP2` e outra de `TEMP3` acima do máximo do respetivo sensor. | 3 leituras válidas (uma por sensor) e 2 "Valor fora da gama". | 5 leituras válidas. |
| `teste-02.txt` | Valores nos limites da gama de cada sensor: o último valor válido e o primeiro inválido em cada extremo. Inclui `TEMP2 5 0` (-15.00 °C) e `TEMP3 1 0`, que dá exatamente -10.00 °C (válido). | 6 leituras válidas (2 por sensor) e 6 "Valor fora da gama". | 9 válidas e 3 fora da gama. |
| `teste-03.txt` | Temperaturas que eram aceites no Sprint 06 mas estão fora da gama do sensor: `TEMP2` abaixo de 0 °C ou acima de 150 °C, `TEMP3` acima de 100 °C. Todas as leituras de `TEMP3` estão fora da gama. | 5 leituras válidas (3 de `TEMP1`, 2 de `TEMP2`) e 7 "Valor fora da gama". `TEMP3` não aparece nas estatísticas. | 12 leituras válidas. |
| `teste-04.txt` | Três sensores intercalados até esgotar o limite, com valores fora da gama de cada sensor. Verificar que os valores fora da gama **contam** para o limite de leituras. Há um `FIM` e mais linhas depois do limite, que nunca devem ser lidos. | Termina após 20 leituras contadas: 15 válidas (6 de `TEMP1`, 5 de `TEMP2`, 4 de `TEMP3`) e 5 fora da gama. | 19 válidas e 1 fora da gama. |
| `teste-05.txt` | Todos os tipos de erro misturados: sensor desconhecido, linha inválida e valor fora da gama do sensor. Inclui `TEMP2 4 61 5`, que tem um campo a mais e deve ser "Linha inválida" e não "Valor fora da gama". | 5 leituras válidas, 3 "Valor fora da gama", 3 "Sensor desconhecido" e 3 "Linha inválida". | 7 válidas e 1 fora da gama. |

## Notas

- Com os requisitos adicionais implementados, os testes do Sprint 06 continuam a dar os mesmos resultados, **exceto o `teste-06.txt`**, que testa os limites da gama única. Com as gamas por sensor, esse teste passa a dar 3 leituras válidas (2 de `TEMP1`, 1 de `TEMP3`) e 11 "Valor fora da gama", e `TEMP2` deixa de aparecer nas estatísticas.
- No `teste-05.txt` há menos de 20 linhas antes do `FIM`. Assim, o resultado é o mesmo quer "Sensor desconhecido" e "Linha inválida" contem para o limite de leituras, quer não.
