#!/bin/bash
#
# Descarrega os ficheiros de teste do Sprint 07 para a pasta testes/sprint-07
# e o script testar.sh para a pasta testes.

mkdir -p testes/sprint-07

curl -o testes/testar.sh https://aulaspf.github.io/prog2627-specs/testes/testar.sh
chmod +x testes/testar.sh

curl -o testes/sprint-07/teste-01.txt https://aulaspf.github.io/prog2627-specs/testes/sprint-07/teste-01.txt
curl -o testes/sprint-07/teste-02.txt https://aulaspf.github.io/prog2627-specs/testes/sprint-07/teste-02.txt
curl -o testes/sprint-07/teste-03.txt https://aulaspf.github.io/prog2627-specs/testes/sprint-07/teste-03.txt
curl -o testes/sprint-07/teste-04.txt https://aulaspf.github.io/prog2627-specs/testes/sprint-07/teste-04.txt
curl -o testes/sprint-07/teste-05.txt https://aulaspf.github.io/prog2627-specs/testes/sprint-07/teste-05.txt
