#!/usr/bin/env bash

if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    echo "Script param1 param2"
    echo "Primeiro parametro: arquivo de entrada"
    echo "Segundo parametro: arquivo de saida, com as alterações"
    echo "Uso: $0 [OPCOES]"
    echo "Opcoes:"
    echo "  -h, --help"
    echo "      Mostra a mensagem de ajuda."
else
    tr [0-9] X < <(cat $1) > $2
fi
    
