#!/bin/bash

#Si no me pasa ningún parámetro
if [ $# -eq 0 ];then
    echo "Tienes que pasarme más de un parámetro"
    exit 1
#Si solo me pasa un parámetro
elif [ $# -eq 1 ];then
    #Si el parámetro que me ha pasado es un fichero
    if [ -f $1 ];then
        cat $1 | wc -l
    #Si el parámetro que me ha pasado es un directorio
    elif [ -d $1 ];then
        #Almacenamos el número que nos diga en la variable numero1
        read -p "Dime un número " numero1
        #Almacenamos el conteo de ficheros del directorio que nos diga en la variable numeroficheros
        numeroficheros=$(find ./$1 -type f | wc -l)
        if [ $numero1 -gt $numeroficheros ];then
            rm -f ./$1
        fi
    fi
    #Si el parámetro es un nombre de usuario del sistema
    #Listamos los usuarios del sistema y lo metemos en una variable
    usuariossistema=$(cut -d: -f1 /etc/passwd | grep $1)
    if [ "$1" = "$usuariossistema" ];then
        echo $1 es un usuario del sistema
        echo "su identificador de usuario es" `id -u $1`
        echo "su identificador de grupo es" `id -g $1`
        echo /home/$1 es la carpeta home de este usuario
    fi
    #Este último if funciona perfectamente pero lo he comentado porque no me funcionan los demás si lo descomento
#Si me pasa más de un parámetro
elif [ $# -gt 1 ];then
    contador=0
    for param in $*;do
        contador=$(($contador+1))
        #Comprueba si los parámetros que me ha pasado son ficheros
        if [ -f $param ];then
            #En caso de que exista cambiamos el nombre del fichero por el de usuario-fichero
            mv $param `whoami`-fich$contador
        fi
    done
else
    echo "Los parámetros que has introducido no cumplen ninguno de los criterios del programa"
fi

