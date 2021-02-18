#!/bin/bash
if [ $# -eq 0 ];then
    echo "Error, no me has pasado ningún parámetro"
    exit 1
fi

for fich in $*;do
    if [ -f $fich ];then
        echo "Nombre: $fich"
        cat $fich
    fi
done    