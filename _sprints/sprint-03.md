---
title: Sprint-03
published: false
---

# Sprint 3

## Contexto

Ter que lançar o programa cada vez que se quer ler um valor é incómodo. Quer-se um programa que leia uma sequência de valores até um valor especial (sentinela) que faz com que a leitura termine. 

## Requisitos

### Requisitos base

O programa deve cumprir as especificações do [Sprint 02]({% link _sprints/sprint-02.md %}) e ainda:

1. Ler vários valores em sequência, numa única execução do programa, apresentando a conversão para temperatura de cada uma das leituras (ou a mensagem "Valor fora da gama", tal como no Sprint 02). 
2. A leitura de dados deve terminar quando o utilizador introduzir o valor -1.
3. A validação da entrada do Sprint 02 continua a aplicar-se a cada valor lido: se o utilizador introduzir algo que não seja um inteiro, o valor é rejeitado e pedido novamente, sem terminar a leitura da sequência.



## Exemplo

Uma execução possível do programa seria:  

| Entrada   | Saída | 
| ----  | -----: |
| 20    | Valor fora da gama | 
| 30    | Valor fora da gama | 
| 40    | -9.83 |
| abc   | (valor rejeitado, é pedido novo valor) |
| 50    | -7.29 |
| ...   | ...   |
| 800   | 183.32 | 
| 820   | 188.41 |
| 850   | Valor fora da gama |
| 900   | Valor fora da gama |
| -5    | Valor fora da gama |
| -1    | (Termina, sem imprimir nada) |
