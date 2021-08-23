#!/usr/bin/env bash

[[ -d "/home/werter/" ]] && echo "Diretorio werter existe"

[[ ! -d "/home/werterr/" ]] && echo "Diretorio werterr não existe"


if wget -q --spider www.google.com; then
    echo "Primeira forma Tem acesso ao net"
fi

# if wget -q --spider www.google.com
# then
#     echo "Segunda forma: Tem acesso a net"
# fi

read -p "Quer continuar [sim/não]? " -r continuar

if [[ "$continuar" == "não" ]]; then
    echo "Ok. fim"
    exit 1
fi



