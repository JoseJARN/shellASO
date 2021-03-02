#!/bin/bash
miusuario=$((whoami))
if [[ $(id -u $miusuario) -ne 0 ]]; then
    echo "No puedes ejecutar este script porque no eres un usuario root"
    exit 1
else
    tar -c -f copiaSeguridad`date +%d/%m/%y`.tgz
fi