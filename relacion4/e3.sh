#!/bin/bash
if [ $# -ne 2 ];then
    echo "Debes pasarme dos parámetros"
else
    if [ "$1" = "$2" ];then
        echo "$1 y $2 son palabras iguales"
    else
        echo "$1 y $2 son palabras distintas"
    fi
fi