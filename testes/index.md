---
title: Testes
---

# Testes

Ficheiros para testar o funcionamento do programa em cada sprint.

## Descarregar os testes

Cada sprint tem um script `obter-testes.sh`, que descarrega todos os ficheiros de teste desse sprint. Por exemplo, para o Sprint 07, na pasta onde está o código do programa, execute:

```text
curl -O https://aulaspf.github.io/prog2627-specs/testes/sprint-07/obter-testes.sh
bash obter-testes.sh
```

Para outro sprint, troque `sprint-07` pelo sprint pretendido. O endereço do script de cada sprint está na página dos testes desse sprint.

O script é só uma lista de comandos `curl -o`, um por ficheiro. Por exemplo, a linha

```text
curl -o testes/sprint-07/teste-01.txt https://aulaspf.github.io/prog2627-specs/testes/sprint-07/teste-01.txt
```

descarrega o ficheiro indicado no endereço e guarda-o (`-o`, de *output*) em `testes/sprint-07/teste-01.txt`.

## Correr os testes

Depois de compilar o programa (por omissão, o executável chama-se `programa`):

```text
./testes/testar.sh testes/sprint-07
```

A saída de cada teste fica guardada em `testes/sprint-07/output-NN.txt`. Se o executável tiver outro nome, indique-o a seguir à pasta:

```text
./testes/testar.sh testes/sprint-07 ./outro_nome
```
