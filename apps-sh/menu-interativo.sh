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



echo "#========================#"

echo "1) Mostre o calendario deste mes"
echo "2) Mostre a data de hoje"
echo "3) Mostre o data e hora de hoje"

echo "#========================#"
read -p "Selecione a opção: " -r opcao

# Verifica se é um digito
[[ ! "$opcao" =~ ^[[:digit]]+$ ]] && {
    echo "Opção inválida"    
    exit 1
}

if [[ "$opcao" -eq "1" ]]; then
    cal
elif [[ "$opcao" -eq "2" ]]; then
    date +%d/%m/%y
    echo

elif [[ "$opcao" -eq "3" ]]; then
    date +%H:%M:%S
    echo
else
    echo "Opção inválida"
fi
