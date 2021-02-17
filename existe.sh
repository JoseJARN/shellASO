#!/bin/bash
if [ $# -ne 1 ];then
    echo "Tienes que pasarme solo un parámetro"
    exit 1
else
    if [ -d $1 ];then
        echo $1 es un directorio
    elif [ -f $1 ];then
        echo $1 existe y es un fichero
    elif [ -e $1 ];then
        echo $1 existe pero no es un fichero ni un directorio    
    else
        echo $1 no existe
    fi
fi                