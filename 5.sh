#!/usr/bin/env bash

read -s -p "Digite a senha: " password

test_password=$(echo "$password" | grep -E "[A-Z]" | grep -E "[0-9]+" | grep -E "[a-zA-Z0-9]{6,}")

if [ -n "$test_password" ]; then
    echo -e "\nSenha válida"
else
    echo -e "\nSenha inválida"
fi