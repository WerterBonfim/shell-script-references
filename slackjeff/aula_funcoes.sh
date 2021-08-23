#!/usr/bin/env bash

set -euo pipefail

# padrão bash

function imprimindoOIS () {
    echo "Olha só"
    echo "Esa é minha primeira funcao"
    echo "Com padrão BASH. :D"
}


imprimindoOIS # Chamando a função


function mostrarVersaoLinux () {
    # lsd-release -a

    local versao
    versao=$(cat /etc/os-release)
    echo "$versao"
}

mostrarVersaoLinux
