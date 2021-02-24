#!/bin/bash
#USO=\w[31m e5.sh] sin terminar
echo "El usuario que está ejecutando este script es "`whoami`
if [ $# -eq 0 ];then
    cat $0
else
    opcion=$1
    case $opcion in
    -m) shift
        cat $*
        ;;
    -x) shift
        ./$*
        ;;
    -p) #mostrar el propietario del fichero
        ;;
    *) #-e "No es correcto, el uso del script es :\n"$USO 
        ;;
    esac