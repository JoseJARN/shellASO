#!/bin/bash
if [ $# -ne 1 ];then
    echo "Solo debes pasar un parámetro"
    exit 1
else
    usuariossistema=$(cut -d: -f1 /etc/passwd | grep $1)
    if [ "$1" = "$usuariossistema" ];then
        echo "El parámetro que has pasado es un usuario del sistema"
        exit 2
    else
        read -p "$1 no es un usuario del sistema, ¿quiéres crearlo? S/N " pregunta
        if [ "$pregunta" = "s" ];then
            echo "Procedemos a crear el usuario $1"
            sudo adduser $1
        elif [ "$pregunta" = "n" ];then
            echo "El usuario $1 no ha sido creado"
            exit 3
        else
            echo "No has respondido ni S = Sí, ni N = No"
            exit 4
        fi
    fi
fi
