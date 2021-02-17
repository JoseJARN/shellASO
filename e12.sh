#!/bin/bash
if [ $# -eq 0 ];then
    echo "No has pasado ningún parámetro, trata de poner al menos uno"
    exit 1
fi    
if [ ! -e $* ];then
    echo "Los archivos que has enviado no existen"
    exit 2
else
    if [ -f $* ];then
        echo "Los parámetros que has pasado son ficheros"
    elif [ -d $* ];then
        echo "Los parámetros que has pasado son directorios"
    else
        echo "Los parámetros que has pasado ni son ficheros ni son directorios"
    fi
fi

#Funciona solo cuando paso un parámetro, si paso más de uno me da error.