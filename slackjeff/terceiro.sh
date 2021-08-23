#!/usr/bin/env bash

# Desafio, simulando uma lombada eletronica
# Regras

# Limite é 80
# Limite de 5km, que da 85
# entre 80 á 85, exibir uma mensagem
# passou de 85km, vai da o flash, multa!

read -p "Digite sua velocidade: " -r velocidade

[[ "$velocidade" -ge "80" ]] && [[ "$velocidade" -le "85" ]] &&
    echo "Você esta no limite, Cuidado"    

[[ "$velocidade" -gt "85" ]] &&
    echo "Flash, se danou... vai receber uma multa"
