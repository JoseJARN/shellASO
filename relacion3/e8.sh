#!/bin/bash
if [[ $EUID -ne 0 ]]; then
    echo "Este script debe ser ejecutado por el usuario root"
    usuario=$((whoami))
    echo "El usuario que ha intentado ejecutarlo es "`whoami`" y su UID es "`id -u $usuario`
    exit 1    
fi