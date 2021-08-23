#!/usr/bin/env bash

# Verifica se um app esta disponivel
[[ $(type -P dialog) ]] || {
    echo "Necessido do dialog, para continuar"
    exit 1
}

arquivo="arquivo-sem-permissao-nenhuma.sh"

[[ -e "$arquivo" ]] && {
    rm -vf "$arquivo"
}

[[ -e "$arquivo" ]] || {
    echo "Criando o arquivo: $arquivo"
    touch "$arquivo"

    echo "Removendo todas as permissões"
    chmod -wrx "$arquivo"
    ls -l "$arquivo"
}

printf "\n"
echo "Dados sobre o arquivo: $arquivo:"
printf "\t"

[[ -x "$arquivo" ]] &&
    echo "Tem permissão de execução" ||
    echo "Não tem permissão de execução"



rm -vf "$arquivo"
