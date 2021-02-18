#!/bin/bash
if [ $# -eq 0 ];then
    echo "Oye que no me has pasado ningún parámetro"
fi

for param in $*;do
    if [ -e $param ];then
        echo $param
    else
        echo ERROR $param no existe
    fi
done