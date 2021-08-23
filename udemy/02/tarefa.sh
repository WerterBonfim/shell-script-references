#!/usr/bin/env bash

# stric mode
set -euo pipefail

#
# tarefa_modulo_2.sh
#
# Titulo:       Resolução da tarefa do modulo 02
# Autor:        Werter Bonfim
# Manutenção:   Werter Bonfim
# Site:         https://github.com/WerterBonfim
# Data:         23-08-2021
# Versão:       1.0.0

# Exit codes
# ==========
# 0   no error
# 1   script interrupted
# 2   error description

#
# ------------------------------------------------------------------------ #
#  Este programa irá escrever na tela varios *****
#
#  Exemplos:
#      $ ./tarefa_modulo_2.sh 
#      Neste exemplo o script será executado no modo debug nível 1.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 23/08/21, Werter:
#       - Início do programa
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.1.8
# ------------------------------------------------------------------------ #
# Agradecimentos:
#
# 	Matheus Muller - Ministrou o curso que possibilitou esse exercicio.
#
# ------------------------------------------------------------------------ #


# ------------------------------- VARIÁVEIS ----------------------------------------- #

comeca=0
ate=100


# ------------------------------- EXECUÇÃO ----------------------------------------- #

[ $comeca -ge $ate ] && exit 1

for i in $(seq $comeca $ate); do
    for j in $(seq "$i" $ate); do printf "*"; done
    printf "\n"
done


#-----------------------------------------------------------------------------------------------------------------#





#-----------------------------------------------------------------------------------------------------------------#

# Perguntas dessa tarefa
# Qual código Shell Script vai atender estes requisitos?
