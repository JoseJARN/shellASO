#!/bin/bash
if [ $# -ne 2 ];then
    echo "Pásame dos parámetros"
    exit 1
elif [ $1 -lt $2 ];then
    echo "Pásame el primer parámetro más alto que el segundo"
    exit 1
else
    contador = 0
    while [ $1 -ge 0 ]
        do
        contador = contador + 1
        $1 = $1 - $2
        done
    echo La visión entre $1 y $2 es igual a $contador
fi    
