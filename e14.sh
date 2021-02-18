#!/bin/bash
if [ $# -ne 2 ];then
    echo "Pasa dos archivos por parámetro"
else
    mv $1 fich.tmp
    mv $2 $1
    mv fich.tmp $2
fi        