#!/bin/bash
if [ $# -eq 0 ];then
    echo "No has pasado ningún parámetro, trata de poner al menos uno"
    exit 1
fi

for cosa in $*;do
    if [ ! -e $cosa ];then
        echo "$cosa no existe"
    elif [ -d $cosa ];then
        echo "$cosa es un directorio"
    elif [ -f $cosa ];then
        echo "$cosa es un fichero"
    else
        echo "Existe pero no es ni un fichero ni un directorio"
    fi
done