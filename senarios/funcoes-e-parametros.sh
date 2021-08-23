#!/usr/bin/env bash

set -x

function exemplo() {
    [[ -z "$1" ]] &&
        echo "É nula" ||
        echo "Não é nula"
}


exemplo "$1"
