---
layout: page
title: Projeto de Programação
---

# Sistema de Aquisição e Monitorização de Sensores

Bem-vindos ao projeto do Sistema de Aquisição e Monitorização de Sensores. 

Este projeto é desenvolvido nas aulas práticas da [Unidade Curricular de 41988-Programação](https://www.ua.pt/pt/uc/15209), leccionada pelo [Departamento de Electrónica, Telecomunicações e Informática](https://www.ua.pt/deti) da [Universidade de Aveiro](https://www.ua.pt)

<h2>Comunicados do Cliente</h2>

<ul>
{% for item in site.noticias %}
  <li>
  <a href="{{ item.url | relative_url }}">{{ item.title }}</a>
  </li>
{% endfor %}
</ul>

<h2>Sprints</h2>

<ul>
{% for sprint in site.sprints %}
  <li>
  <a href="{{ sprint.url | relative_url }}">{{ sprint.title }}</a>
  </li>
{% endfor %}
</ul>