#!/usr/bin/env bash

# stric mode
set -euo pipefail
# -e intolerante a erros
# -u verifica case sensitve do nome das variaveis
# -o pipefail Essa configuração evita que erros em um pipeline sejam mascarados. EX:
# >grep some-string /non/existent/file | sort
# grep: /non/existent/file: No such file or directory
# >echo $?
# 0

# Variaveis do programa
servido1="icanhazip.com"

exec_=$(curl -s "$servido1")

echo "O seu ip externo é: $exec_"
