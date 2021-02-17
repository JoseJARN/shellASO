#!/bin/bash
if [ $# -ne 2 ];then
    echo "Dame solo dos parámetros"
    exit 1
else
    if [ $1 -gt $2 ];then
        echo $1 es mayor que $2
    elif [ $2 -gt $1 ];then
        echo $1 es menor que $2
    else
        echo $1 y $2 son iguales
    fi
fi 