#!/usr/bin/env bash

#
# listar_usuarios.sh
#
# Titulo:       Extrai usuários do /etc/passwd
# Autor:        Werter Bonfim
# Manutenção:   Werter Bonfim
# Site:         https://github.com/WerterBonfim
# Data:         25-08-2021
# Versão:       1.0.0

# Exit codes
# ==========
# 0   no error
# 1   script interrupted
# 2   error description

#
# ------------------------------------------------------------------------ #
#  Este programa irá...
#
#  Exemplos:
#      $ ./listar_usuarios.sh -d 1
#      Neste exemplo o script será executado no modo debug nível 1.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 25/08/21, Werter:
#       - Adicionando -s, -h, e -v
#   v1.1 25/08/21, Werter:
#       - Trocamos IF pelo case
#       - Adicionamos basename
#   v1.2 25/08/21, Werter:
#       - Adicionando -m
#       - Adicionando 2 flags
#   v1.3 25/08/21, Werter:
#       - Adicionando whilie com shift e teste de variavel
#       - Adicionando 2 flags
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.19
# ------------------------------------------------------------------------ #

# stric mode
#set -euo pipefail
#set -x
# ------------------------------- VARIÁVEIS ------------------------------ #
usuarios=""
usuarios="$(cat /etc/passwd | cut -d : -f 1)"
versao="v1.0"

menuInterativo="
    $(basename "$0") - [OPÇÕES]

    -h - Menu de ajuda
    -v - Versão do programa
    -s - Ordernar a saída
"

aplicarOrdenacao=0
aplicarMaiuscula=0

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #



while test -n "$1"; do    

    case "$1" in
    -h) echo "$menuInterativo" && exit 0 ;;
    -v) echo "Versão: $versao" && exit 0 ;;
    -s) aplicarOrdenacao=1 ;;
    -m) aplicarMaiuscula=1 ;;
    *) echo "Opção inválida, valie o -h." && exit 1 ;;
    esac
    shift
done

[ "$aplicarOrdenacao" -eq 1 ] && usuarios="$(echo "$usuarios" | sort)"
[ "$aplicarMaiuscula" -eq 1 ] && usuarios="$(echo "$usuarios" | tr ':[a-z]:' ':[A-Z]:')"

echo "$usuarios"
