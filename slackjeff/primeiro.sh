#!/usr/bin/env bash

# modo debugger que imprime cada linha
#set -x


#id=`echo $UID`
id=$(echo $UID)
echo "Contéudo da variavel: $id"

pwd
diretorio="/home/werter"
cd $diretorio
pwd


echo "Estou em `pwd`"
echo "De novo em $(pwd)"
diretorio="/home"
echo "Um teste, vou entrar em `$diretorio`? Teste: $(cd $diretorio)"
pwd

clear

echo "Digite alguma coisa" # --> STDOUT
read texto # --> STDIN

echo "Você digitou $texto"

# desta forma o retorno sera o resultado
# do comando digitado, exemplo ls
# vai retornar "Você digitou [retorno do ls]"
#echo "Você digitou `$texto`"

read -p "Qual o seu nome: " nome
echo "Você digitou $nome"

echo "Vou dormir"
sleep 3s
echo "Acordei"
