#!/usr/bin/env bash

option=$1
directory=$(if [ -e "$2" ]; then echo "$2"; else echo "."; fi)

case "$option" in
    -a)
        echo -e "Diretório ou pasta? eis a questão \n----------"
        ls -l "$directory" | grep "^d" | awk '{print $9}'
        ;;
    -b)
        echo -e "Eu achava que era uma pessoa indecisa, mas agora não tenho a certeza \n----------"
        ls -l "$directory" | grep "^-" | awk '{print $9}'
        ;;
    -c)
        echo -e "Falaram para eu devia seguir os meus sonhos, então eu virei pro lado e continuei dormindo \n----------"
        ls -l "$directory" | grep "^l" | awk '{print $9}'
        ;;
    *)  echo "Opcao invalida"
        ;;
esac