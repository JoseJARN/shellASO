#!/bin/bash
read -p "Dime el nombre del primer archivo " archivo1
read -p "Dime el nombre del segundo archivo " archivo2
conteo1=$(cat $archivo1 | wc -l)
conteo2=$(cat $archivo2 | wc -l)

if [ ! -o $archivo1 ];then
    echo $archivo1 no es ordinario
elif [ ! -o $archivo2 ];then
    echo $archivo2 no es ordinario
else
    if [ $conteo1 -gt $conteo2 ];then
        echo $archivo1 tiene un mayor número de líneas con $conteo1
    elif [ $conteo2 -gt $conteo1 ];then
        echo $archivo2 tiene un mayor número de líneas con $conteo2
    else
        echo $archivo1 y $archivo2 tienen el mismo número de líneas
    fi
fi