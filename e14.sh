#!/bin/bash
if [ $# -ne 2 ];then
    echo "Pasa dos archivos por parámetro"
else
    cp $1 primerocopia.txt
    cp $2 segundocopia.txt
    mv segundocopia.txt $1
    mv primerocopia.txt $2
fi        