#!/usr/bin/env bash
#
# listar_usuarios.sh
#
# Titulo:       Extrai usuários do /etc/passwd
# Autor:        Werter Bonfim
# Manutenção:   Werter Bonfim
# Site:         https://github.com/WerterBonfim
# Data:         01-01-2021
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
#   v1.0 00/00/00, Werter:
#       - Início do programa
#       - Conta com a funcionalidade X
#   v1.1 00/00/0000, Werter:
#       - Alterado parametro XXXXX
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.19
# ------------------------------------------------------------------------ #
# Agradecimentos:
#
# 	Joãozinho - Encontrou um bug na parte de login.
#	Mariazinha - Enviou uma sugestão de adicionar o -h.
# ------------------------------------------------------------------------ #


# ------------------------------- VARIÁVEIS ------------------------------ #
usuarios=""
usuario="$(cat /etc/passwd | cut -d : -f 1)"

# ------------------------------------------------------------------------ #


# ------------------------------- EXECUÇÃO ----------------------------------------- #

# stric mode
set -euo pipefail
