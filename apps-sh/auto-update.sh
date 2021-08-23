#!/usr/bin/env bash

apt update

if  ! apt update ; then
    echo "Não foi possivel fazer update"
fi
