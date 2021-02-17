#!/bin/bash
if [ ! -f $* ];then
    echo "Los parámetros enviados no son todos ficheros"
fi    
if [ ! -d seguridad ];then
    echo "El directorio seguridad no existe, procedo a crearlo"
    mkdir seguridad
fi    
cp $* seguridad
echo "¡Listo! Ya he copiado los ficheros $* en la carpeta seguridad"
