#!/bin/bash
#Declaramos las funciones
function buscar(){
    if [ -e $1 ];then
        find / -name $1 -type f 2>/dev/null
    else
        echo "El fichero no existe o no se ha encontrado"
    fi
}

function permisos(){
    read -p "¿Qué permisos quieres aplicarle al fichero? Ej: 777, 755 o 555. " permisos
    regex=[0-9]{3}
    if [[ ! $permisos =~ $regex ]];then
        echo "No has aplicado unos permisos válidos"
    else
        chmod $permisos $1
    fi
    #Falta verificar que los permisos se han cambiado correctamente
}

function cadena(){
    read -p "¿Cuál es la cadena que quieres buscar? " cadena
    if [ -z "$cadena" ];then
        echo "No has escrito ningún elemento, cerramos el programa"
    else
        buscarcadena=$(grep "$cadena" $1)
        if [ -z "$buscarcadena" ];then
            echo "No se ha encontrado ningún elemento"
        else
            grep "$cadena" $1
        fi
    fi
}

opcion=9
while [ $opcion -gt 4 ] || [ $opcion -lt 1 ];do
    if [ $# -ne 1 ];then
        echo "Debes pasarme un fichero como parámetro"
        exit 1
    else
        echo "Las opciones del programa disponibles son las siguientes:
        --------------------------------------------------------------------------------------------------
        1.- Buscar: Buscar el fichero y mostrar su camino absoluto si existe o decir que no se ha encontrado.
        2.- Permisos: Cambiar los permisos al fichero. Hay que pedir los nuevos permisos (en modo octal, por ejemplo: 777) y verificar que los permisos se han actualizado o decir por quó no se han podido cambiar.
        3.- Cadena: Buscar una cadena en el fichero. Hay que pedir la cadena a buscar y mostrar las líneas en las que aparece, o decir que no se ha podido encontrar.
        4.- Salir: será la única forma de salir del programa"
        read -p "¿Qué opción quieres? " opcion
    fi

    #Ahora ponemos el case con las diferentes opciones
    case $opcion in
    1) buscar $1
        ./$0 $1
        ;;
    2) permisos $1
        ./$0 $1
        ;;
    3) cadena $1
        ./$0 $1
        ;;
    4) echo "¡Has salido del programa correctamente!"
        ;;
    esac
done 