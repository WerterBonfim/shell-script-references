#!/usr/bin/env bash

test "A" != "B" 
echo "A é diferente de B $?"

test "A" != "A" 
echo "A é diferente de A $?"


stringVazia=""
# TODO: porque tem resultado diferente quando é executado a linha de baixo:
# as apas duplas fazem diferença?
#test -n $stringVazia

test -n "$stringVazia"
echo "A qtd de caracteres é diferente de zero: $?"

test -z "$stringVazia"
echo "A qtd de caracteres é zero: $?"

# Conferir se é igual
read -p "Qual seu nome? " -r nome

test "$nome" = "Allan"
echo "Status de Saída: $?"


test "A" != "A" && echo "É igual" || echo "É diferente"

read -p "Digite algo: " -r algo
# -z: verifica length = 0
test -z "$algo" \
    && { echo "Sem contéudo, vou sair " ; exit ; }    \
    || echo "A variavél tem conteúdo"               \


read -p "Deseja continular? [S/N]" -r continua
# upper case
continua=${continua^^}

echo "Fim do programa: $continua"
