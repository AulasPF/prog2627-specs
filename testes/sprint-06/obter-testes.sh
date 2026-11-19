#!/bin/bash
#
# Descarrega os ficheiros de teste do Sprint 06 para a pasta testes/sprint-06
# e o script testar.sh para a pasta testes.

mkdir -p testes/sprint-06

curl -o testes/testar.sh https://aulaspf.github.io/prog2627-specs/testes/testar.sh
chmod +x testes/testar.sh

curl -o testes/sprint-06/teste-01.txt https://aulaspf.github.io/prog2627-specs/testes/sprint-06/teste-01.txt
curl -o testes/sprint-06/teste-02.txt https://aulaspf.github.io/prog2627-specs/testes/sprint-06/teste-02.txt
curl -o testes/sprint-06/teste-03.txt https://aulaspf.github.io/prog2627-specs/testes/sprint-06/teste-03.txt
curl -o testes/sprint-06/teste-04.txt https://aulaspf.github.io/prog2627-specs/testes/sprint-06/teste-04.txt
curl -o testes/sprint-06/teste-05.txt https://aulaspf.github.io/prog2627-specs/testes/sprint-06/teste-05.txt
curl -o testes/sprint-06/teste-06.txt https://aulaspf.github.io/prog2627-specs/testes/sprint-06/teste-06.txt
curl -o testes/sprint-06/teste-07.txt https://aulaspf.github.io/prog2627-specs/testes/sprint-06/teste-07.txt
curl -o testes/sprint-06/teste-08.txt https://aulaspf.github.io/prog2627-specs/testes/sprint-06/teste-08.txt
curl -o testes/sprint-06/teste-09.txt https://aulaspf.github.io/prog2627-specs/testes/sprint-06/teste-09.txt
curl -o testes/sprint-06/teste-10.txt https://aulaspf.github.io/prog2627-specs/testes/sprint-06/teste-10.txt
