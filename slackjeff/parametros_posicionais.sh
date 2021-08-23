#!/usr/bin/env bash

set -euo pipefail


IFS=:
echo "Qtd de parametros: $#"
echo "Todos os parametros com \$*: $*"

#echo "Todos os parametros com \$@: $@"


echo "O nome do programa é: $0"
echo "O primeiro parametro é: $1"
echo "O segundo parametro é: $2"
echo "O terceiro parametro é: $3"

#echo "10 ${10}"
