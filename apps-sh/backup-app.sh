#!/usr/bin/env bash

set -eo pipefail

# compactar
# tar -cvf nome-arquivo.tar pasta/

# estrair
# tar xvf nome-arquivo.tar
# du -h nome-do-arquivo para saber tamanho do arquivo

# programa:

# Crie um programa de backup simple, que comacte em .tar o diretorio NEW.

# Crie dois diretorios NEW e BACKUP em home: /home/werter/NEW e /home/werter/BACKUP

# se a compactacao for bem sucedida envia o diretorio new compactado para o diretorio backup, use mv


# Variaveis 
diretorioASerCompactado="$1"

[[ "$diretorioASerCompactado" ]] || {
	echo "Voce precisa informar o diretorio a ser compactado"
	exit 1;
} 

# verificar se o tar esta instalado

[[ $( type -P tar ) ]] || {
	echo "o programa tar nao esta instalado na sua maquina"
	exit 1;
}


# Criar diretorios 
[[ -d ~/NEW/ ]] || mkdir -v NEW ;
[[ -d ~/BACKUP/ ]] || mkdir -v BACKUP ;

echo "$diretorioASerCompactado"

tar -cvf ~/NEW/backup.tar "$diretorioASerCompactado"

echo "Movendo o backup"

mv -v ~/NEW/backup.tar ~/BACKUP/backup.tar
 	