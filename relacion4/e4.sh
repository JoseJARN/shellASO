#!/bin/bash
read -p "¿Quiéres ver el contenido del directorio de alguno de los subdirectorios que cuelgan del directorio $HOME? s/n " pregunta
if [ "$pregunta" = "s" ];then
    ls $HOME
    read -p "¿Cuál quieres ver? " subdirectorio
    if [ -d $HOME/$subdirectorio ];then
        cd $HOME/$subdirectorio
        ls 
    else
        echo "El directorio que has señalado no existe"
    fi
elif [ "$pregunta" = "n" ];then
    echo "Tu respuesta ha sido NO, cerramos el programa"
    exit 1
else
    echo "Tu respuesta no ha sido correcta, debería haber sido s o n"
fi