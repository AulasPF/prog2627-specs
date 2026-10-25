---
title: Revisão do código entregue
published: true
date: 2026-10-22
---

# Informação

Data: {{ page.date | date: "%d/%m/%Y" }}

A equipa de engenharia da AeroSense analisou o código entregue até ao momento. Do ponto de vista funcional, o sistema responde ao que foi pedido. No entanto, a análise interna identificou problemas que nos preocupam, tendo em conta a evolução prevista para o sistema:

- O programa está concentrado num único bloco de código extenso, difícil de ler e de compreender por quem não o escreveu.
- Há operações (por exemplo, a conversão e validação das leituras) cuja lógica se repete ou se mistura com a leitura e a apresentação dos resultados.
- Cada alteração recente obrigou a mexer em vários pontos do programa, com o risco de introduzir erros em partes que já funcionavam.

Num futuro próximo, a AeroSense vai alargar o sistema a vários sensores, com características diferentes. Com a estrutura atual, a equipa técnica considera que essa evolução vai ser lenta e propensa a falhas.

Assim, neste período **não vão ser pedidas novas funcionalidades**. Pedimos que o código seja reorganizado:

- Cada tarefa do sistema (ler, converter, validar, guardar, calcular estatísticas, apresentar resultados) deve estar bem identificada e separada das outras.
- Partes que fazem a mesma coisa não devem estar duplicadas.
- Os nomes usados no código devem deixar claro o que cada parte faz.
- O programa principal deve ler-se como uma descrição resumida do funcionamento do sistema.

O comportamento do programa deve manter-se **exatamente igual** ao da versão anterior: para as mesmas entradas, as saídas devem ser as mesmas. A equipa da AeroSense vai rever o código reorganizado antes de autorizar a fase seguinte do projeto.
