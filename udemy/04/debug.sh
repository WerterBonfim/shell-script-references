#!/usr/bin/env bash
#
# debug.sh
#
# Titulo:       Um exemplo de como usar funções para debugar
# Autor:        Werter Bonfim
# Manutenção:   Werter Bonfim
# Site:         https://github.com/WerterBonfim
# Data:         26-08-2021
# Versão:       1.0.0

# Exit codes
# ==========
# 0   no error
# 1   script interrupted
# 2   error description

#
# ------------------------------------------------------------------------ #
#  Um pequeno exemplo de como debugar codigos shell script utillzando funcoes auxiliares
#
#  Exemplos:
#      $ ./debug.sh -d 1
#      Neste exemplo o script será executado no modo debug nível 1.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 26/08/21, Werter:
#       - Início do programa
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.1.8
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ------------------------------ #

chaveDebug=0
nivelDebug=0

# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES -------------------------------- #

Debugar() {

    [ "$1" -le "$nivelDebug" ] && echo "Debug $* -------------"

}

Soma() {

    local total
    total=0

    for i in $(seq 1 25); do
        Debugar 1 "Entrei no for com o valor: $1"
        total=$(("$total" + "$i"))
        Debugar 2 "Depois da soma: $total"
    done

}

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ------------------------------- #

# stric mode
#set -euo pipefail


case "$1" in
    -d)
        [ "$2" ] && nivelDebug=$2
    ;;    
    
    *)
        Soma
    ;;
esac


Soma


# ------------------------------- -------- ------------------------------- #
