#!/bin/bash

#Le decimos el usuario que está ejecutando el script
echo "El usuario que está ejecutando este script es "`whoami`

#Creamos las funciones de visualizar, de ejecutar y de comprobar propietario
function visualizar() {
    for fichero in $*;do
        if [ -f $fichero ];then
            cat $fichero
        fi
    done
}

function ejecutar() {
    for fichero in $*;do
        if [ -x $fichero ];then
            cat $fichero
        fi
    done
}

function propietario() {
    for fichero in $*;do
        if [ -f $fichero ];then
            echo "El propietario de $fichero es" `stat -c %U $fichero`
        fi
    done
}

#En caso de que no se le haya pasado ningún parámetro
if [ $# -eq 0 ];then
    cat $0
else
    opcion=$1
    shift
    case $opcion in
    -m) visualizar $*
        ;;
    -x) ejecutar $*
        ;;
    -p) propietario $*
        ;;
    *) echo "No has seleccionado una opción válida"
        ;;
    esac
fi