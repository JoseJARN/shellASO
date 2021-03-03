#!/bin/bash
miusuario=$((whoami))
misarchivos=$((find /home/$miusuario -user $miusuario 2>dev/null))
if [[ $(id -u $miusuario) -ne 0 ]]; then
    echo "No puedes ejecutar este script porque no eres un usuario root"
    exit 1
else
    mkdir misCopias
    mv $misarchivos /misCopias
    tar -c -f copiaSeguridad`date +%d/%m/%y`.tgz
fi