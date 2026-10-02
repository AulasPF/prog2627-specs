---
title: Validação dos dados apresentados
published: true
date: 2026-10-02
---

# Informação 

Data: {{ page.date | date: "%d/%m/%Y" }}

A equipa de engenharia da AeroSense reportou que o subsistema de aquisição de dados apresenta falhas operacionais significativas. Atualmente, a leitura e conversão de valores brutos não é suficiente, uma vez que os sensores em campo devolvem valores incorretos e corrompidos quando expostos a condições térmicas extremas, sejam temperaturas muito baixas ou muito elevadas.   

Para garantir a fiabilidade do sistema de monitorização, a direção técnica determinou que o software deve filtrar as entradas, rejeitando leituras espúrias e indicando um valor válido apenas quando este se encontra estritamente dentro da gama de funcionamento nominal especificada pelo fabricante.   

Recorda-se que a gama de funcionamento oficial do sensor estende-se pelo intervalo [-10&deg;&nbsp;C,190&deg;&nbsp;C]. Solicitam-se correções imediatas no código para assegurar a integridade dos dados recolhidos.

