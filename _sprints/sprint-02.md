---
title: Sprint-02
published: true
---

# Sprint 2

## Contexto

Nem todos os valores fornecidos pelo sensor são válidos. Os valores nos extremos da gama não devem ser considerados. Essas leituras consideram-se fora da gama. Deste modo, o programa deve indicar quando a leitura de um valor corresponde a valores fora da gama, imprimindo a mensagem "Valor fora da gama" e não imprimindo o valor de temperatura calculado.  

## Requisitos

### Requisitos base

O programa deve:

1. Cumprir as especificações de leitura e conversão do [Sprint 01]({% link _sprints/sprint-01.md %})
2. A gama de valores válidos é entre -10&deg;&nbsp;C e 190&deg;&nbsp;C. O programa só deve apresentar valores para temperaturas dentro desta gama. 
3. Fora desta gama, o programa deve apresentar a mensagem "Valor fora da gama". 

### Validação da entrada

**Nota:** A implementar apenas depois da validação da temperatura estar a funcionar. 

1. Ao ler valores introduzidos pelo utilizador, o programa deve aceitar apenas valores inteiros. Se, por exemplo, o utilizador introduzir texto, o programa deve rejeitar e pedir outra vez o valor, até que seja introduzido um valor correcto (um inteiro)



## Exemplo

Valores de entrada e respectivas saídas: 



| Entrada   | Saída | 
| ----  | -----: |
| 20    | Valor fora da gama | 
| 30    | Valor fora da gama | 
| 40    | -9.83 |
| 50    | -7.29 |
| ...   | ...   |
| 800   | 183.32 | 
| 820   | 188.41 |
| 850   | Valor fora da gama |
| 900   | Valor fora da gama |
