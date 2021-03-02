#!/bin/bash
if [ $# -ne 1 ];then
    echo "Debes pasarme un parámetro, solo uno"
else
    if [ -f $1 ] && [ -r $1 ];then
        cat $1 | more
    else
        echo "El parámetro que me has pasado o no es un fichero o no tiene permisos de lectura"
    fi
fi