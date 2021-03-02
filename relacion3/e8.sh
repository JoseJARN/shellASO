#!/bin/bash
miusuario=$((whoami))
if [[ $(id -u $miusuario) -ne 0 ]]; then
    echo "Este script debe ser ejecutado por el usuario root"
    echo "El usuario que ha intentado ejecutarlo es" `whoami` "y su UID es "`id -u $miusuario`
    exit 1
else
    echo "Este script ha sido ejecutado por el usuario" `whoami` "que tiene permisos de root"
fi