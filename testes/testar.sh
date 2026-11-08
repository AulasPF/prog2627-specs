#!/usr/bin/env bash
#
# Corre todos os testes de um sprint e guarda o resultado de cada um.
#
# Para cada ficheiro teste-NN.txt na pasta indicada, executa o programa
# com esse ficheiro como entrada (stdin) e guarda tudo o que o programa
# escreve (stdout e stderr) em output-NN.txt, na mesma pasta.
#
# Utilização (a partir da pasta do código):
#   ./testes/testar.sh testes/sprint-06
#   ./testes/testar.sh testes/sprint-06 ./outro_nome
#
# ---------------------------------------------------------------------
# Nome do executável. Altere aqui se o seu programa tiver outro nome,
# ou indique-o como segundo argumento ao chamar o script.
PROGRAMA="./programa"

# Tempo máximo (segundos) por teste, para apanhar ciclos infinitos.
# Só é usado se o comando "timeout" existir no sistema.
TEMPO_MAX=5
# ---------------------------------------------------------------------

if [ $# -lt 1 ] || [ $# -gt 2 ]; then
    echo "Utilização: $0 <pasta-dos-testes> [executável]"
    echo "Exemplo:    $0 testes/sprint-06 $PROGRAMA"
    exit 1
fi

PASTA="${1%/}"
[ $# -eq 2 ] && PROGRAMA="$2"

# Sem "/" no nome, a shell procuraria o programa no PATH e não na pasta atual.
case "$PROGRAMA" in
    */*) ;;
    *) PROGRAMA="./$PROGRAMA" ;;
esac

if [ ! -d "$PASTA" ]; then
    echo "Erro: a pasta '$PASTA' não existe."
    exit 1
fi

if [ ! -f "$PROGRAMA" ] || [ ! -x "$PROGRAMA" ]; then
    echo "Erro: o executável '$PROGRAMA' não existe ou não tem permissão de execução."
    echo "Compile o programa primeiro, ou indique o nome correto do executável."
    exit 1
fi

if command -v timeout > /dev/null 2>&1; then
    LIMITE=(timeout "$TEMPO_MAX")
else
    LIMITE=()
fi

shopt -s nullglob
TESTES=("$PASTA"/teste-*.txt)

if [ ${#TESTES[@]} -eq 0 ]; then
    echo "Erro: não há ficheiros teste-*.txt em '$PASTA'."
    exit 1
fi

for teste in "${TESTES[@]}"; do
    nome=$(basename "$teste")
    saida="$PASTA/output-${nome#teste-}"

    "${LIMITE[@]}" "$PROGRAMA" < "$teste" > "$saida" 2>&1
    codigo=$?

    if [ $codigo -eq 0 ]; then
        echo "$nome -> $saida"
    elif [ $codigo -eq 124 ] && [ ${#LIMITE[@]} -gt 0 ]; then
        echo "$nome -> $saida  (ATENÇÃO: interrompido após ${TEMPO_MAX}s, possível ciclo infinito)"
    else
        echo "$nome -> $saida  (ATENÇÃO: o programa terminou com código $codigo)"
    fi
done
