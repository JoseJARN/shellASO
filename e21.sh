#!/bin/bash
fin="fin"
palabra=10
until [ $palabra -eq 0 ];do
    read -p "Dime una palabra " nombre
    if [ "$nombre" -eq $fin ];then
        palabra=0
    fi
done