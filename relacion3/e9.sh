#!/bin/bash
if [ $# -ne 1 ];then
    echo "Solo debes introducir un parámetro"
    exit 1
else
    usuariossistema=$(cut -d: -f1 /etc/passwd | grep $1)
    directoriodetrabajo=$(grep $1: /etc/passwd | cut -d: -f6)
    if [ "$1" = "$usuariossistema" ];then
        echo "El nombre de su directorio de trabajo es $directoriodetrabajo"
        echo "Su UID es "`id -u $1`
        echo "El shell que está ejecutando es $0"
        echo "Su GID es "`id -g $1`
    else
        echo "El parámetro que has pasado no es un usuario del sistema"
    fi
fi