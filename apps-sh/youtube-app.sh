#!/usr/bin/env bash


# Titulo:		Youtube app download utils
# Descricao:		Programa que baixa videos/audios do youtube.
# Autor:		Werter Bonfim
# Data:			22/07/2021
# Versao		1.0.0

# stric modo
set -euo pipefail



# Variaveis

# 64k, 128k, 256k, 320k, 
# between 0 (better) and 9 (worse)
qualidade="9"

# BEST, acc, vorbis, m4a, mp3, opus, wav
formatoAudio="mp3"



# Usuario nao pode ser root
[[ "$UID" -eq "0" ]] && {
	echo "Por questoes de seguranca esse app nao pode ser executado como root"
	echo "Execute esse app como usuario normal"
	exit 1;
}


# Verifica se o youtube-dl esta instalado
[[ $( type -P youtube-dl ) ]] || {
	echo "O youtube-dl nao esta instalado no seu sistema"
	exit 1
}

[[ $( type -P ffmpeg ) ]] || {
	echo "O ffmpeg nao esta instalado no seu sistema"
	exit 1
}

echo "Baixando musicas"

youtube-dl \
	--embed-thumbnail \
	--audio-quality "$qualidade" \
	--audio-format "$formatoAudio" \
	--extract-audio \
	"$@"

