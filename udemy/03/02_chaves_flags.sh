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
#   v1.0 25/08/21, Werter:
#       - Switch
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.19
# ------------------------------------------------------------------------ #

# stric mode
set -euo pipefail

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

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

[ -z "${1-}" ] && set -- ""

case "$1" in
-h) echo "$menuInterativo" ;;
-v) echo "Versão: $versao" ;;
-s) echo "$usuarios" | sort ;;
*) echo "$usuarios" ;;
esac
