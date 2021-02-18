#!/bin/bash
if [ $# -eq 2 ];then
    echo "¡Oye! Que tenías que pasarme dos ficheros"
    exit 1
fi

if [ -e $1 ];then
    ./$2
elif [ -m $1 ];then
    for fich in $*;do
        cat $fich
    done
fi    