#!/bin/bash
read -p "Introduce el primer número " numero1
read -p "Introduce el segundo número " numero2

if [ $numero1 -gt $numero2 ];then
    for ((i=0;i<$numero1;i++));do
        echo "*"
    done
elif [ $numero2 -gt $numero1 ];then
    for ((i=1;i<=$numero2;i++));do
        echo "*"
    done
else
    echo $numero1 y $numero2 son iguales, introduce dígitos diferentes
fi