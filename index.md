---
layout: page
title: Projeto de Programação
---

# Projeto de Aquisição de Sensores

Bem-vindos ao projeto.

<h2>Comunicados do Cliente</h2>

<ul>
{% for item in site.noticias %}
  <li>
  <a href="{{ item.url }}">{{ item.title }}</a>
  </li>
{% endfor %}
</ul>

<h2>Sprints</h2>

<ul>
{% for sprint in site.sprints %}
  <li>
  <a href="{{ sprint.url }}">{{ sprint.title }}</a>
  </li>
{% endfor %}
</ul>