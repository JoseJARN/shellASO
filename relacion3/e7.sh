#!/bin/bash
if [ $# -eq 0 ];then
    echo "No has introducido ningún parámetro"
    exit 1
else
    for fichero in $*;do
        if [ -f $fichero ];then
            tar -c -f Copia.bkp.tar $fichero
            echo "El fichero $fichero se ha añadido correctamente"
        else
            echo "El parámetro $fichero no es un fichero"
        fi
    done
fi