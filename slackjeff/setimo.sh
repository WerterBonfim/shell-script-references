#!/usr/bin/env bash

# Title:         test
# Description:   a test script
# Author:        Werter <werter@hotmail.com.br>
# Date:          01-01-2021
# Version:       1.0.0

# Exit codes
# ==========
# 0   no error
# 1   script interrupted
# 2   error description

# stric mode
set -euo pipefail


echo -e "\n\n\n\tLogando"

read -p "Qual seu nome? " -r nome
read -p $'\nCPF: ' -r cpf

echo "$cpf"

case "$nome" in
joao | Joao) echo "E ai seu joão" ;;
liz | Liz) echo "E ai lizandropolis" ;;
werter)
    echo "Sou o ADM"
    echo "Sou eu"
    ;;
[0-9]) echo "Digitou um numero" ;;
*) echo "Pessoa não encontrada" ;;
esac
