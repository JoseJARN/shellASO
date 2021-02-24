#!/bin/bash
if [ $# -eq 2 ] || [ -f $1 ] || [[ $2 =~ ^[0-9]+$ ]];then
    echo El número de líneas a mostrar del fichero $1 es: $2
    head -n $2 $1
else
    echo "Tienes que pasarme dos parámetros, el primero debe de ser un fichero y el segundo un número entero"
fi