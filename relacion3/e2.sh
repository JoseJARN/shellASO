#!/bin/bash
read -p "Dime un directorio" directorio
if [ -d $directorio ];then
    ls $directorio
else
    echo "El parámetro que me has pasado no es un directorio"
fi