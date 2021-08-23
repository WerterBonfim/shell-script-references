#!/usr/bin/env bash

# Um laço que conte de 0 a 10
# A cada iteração, verifique se o número é divisível por 2
# Se ele for divisível por 2, escreva uma mensagem na tela confirmando isso

for valor in $(seq 0 10); do

  [[ "$((valor % 2))" == 0 ]] && echo "$valor é divisível por 2"

done
