---
title: Sprint-05
published: true
---

# Sprint 5

## Contexto

O programa desenvolvido até agora cumpre os requisitos funcionais, mas foi crescendo de forma pouco organizada: grande parte do código está concentrada no programa principal, há lógica repetida e as várias tarefas (leitura, conversão, validação, cálculo e apresentação) aparecem misturadas.

Nas próximas etapas o sistema vai passar a trabalhar com vários sensores, com características diferentes. Antes disso, é necessário reorganizar o código para que essas alterações possam ser feitas de forma localizada e segura.

Neste sprint **não há novas funcionalidades**. O objetivo é estruturar o código existente.

## Requisitos

### Requisitos base

O programa deve cumprir as especificações anteriores, mantendo **exatamente o mesmo comportamento**: para as mesmas entradas, deve produzir as mesmas saídas. Adicionalmente, deve cumprir com o seguinte:

1. O código deve estar organizado em funções, cada uma responsável por uma única tarefa bem definida. Devem existir, pelo menos, funções para:
   1. Converter um valor do sensor em temperatura.
   2. Verificar se uma temperatura é válida.
   3. Ler a sequência de valores.
   4. Calcular cada uma das estatísticas (mínimo, máximo, média e desvio-padrão).
   5. Apresentar a lista de valores lidos e as estatísticas.
2. As funções de conversão, validação e cálculo não devem ler dados do teclado nem escrever no ecrã: recebem os dados de que precisam como parâmetros e devolvem o resultado.
3. Não deve existir código duplicado. Uma operação usada em vários pontos do programa deve estar implementada numa única função.
4. Não devem ser usadas variáveis globais, à exceção de constantes (como o número máximo de leituras ou os limites da gama de funcionamento do sensor).
5. Os nomes das funções, dos parâmetros e das variáveis devem indicar claramente o seu propósito.
6. O programa principal deve ser curto e limitar-se a chamar as funções pela ordem adequada, de modo que a sua leitura descreva o funcionamento geral do sistema.

### Requisitos adicionais

**Nota:** Estes requisitos só devem ser implementados após a conclusão com sucesso dos requisitos base.

1. Cada função deve ter um comentário curto que descreva o que faz, o que recebe e o que devolve.
2. Escrever um pequeno conjunto de testes que chame diretamente as funções de conversão, validação e cálculo com valores conhecidos e verifique se os resultados estão corretos (por exemplo, o valor de sensor 523 deve corresponder a 112.96).

## Exemplo

O comportamento visível do programa não se altera. Exemplo com o limite de 5 leituras e terminação após 3 valores:

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

Embora a saída seja a mesma, o código que a produz deve estar organizado de acordo com os requisitos acima.
