#!/bin/bash
if [ $# -eq 0 ];then
    echo "Oye, que no me has pasado ningún parámetro"
else
    for fichero in $*;do 
        if [ -f $fichero ] && [ -w $fichero ];then
            mv $fichero/$HOME/relacion3/Backup
            echo El fichero $fichero se ha movido al directorio Backup
        else
            echo $fichero o no es un fichero o no existe
        fi
    done
fi