#!/usr/bin/env bash

read -p "Digite um ip: " ip



for n in {1..4};do
    current_octet=$(cut -d '.' -f $n <<< "$ip")
    current_octet_in_binary="$(bc < <(echo "obase=2;$current_octet"))"
    while [ ${#current_octet_in_binary} -lt 8 ];do
        current_octet_in_binary="0$current_octet_in_binary"
    done
    # echo $n
    echo "Octeto #$n: $current_octet em binário $current_octet_in_binary"
    # n=$((n+1))
done