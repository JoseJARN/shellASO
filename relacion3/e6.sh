#!/bin/bash
echo "Las operaciones disponibles son las siguientes
1 = Sumar
2 = Restar
3 = Dividir
4 = Multiplicar
0 = Salir"

read -p "Dime una de las opciones disponibles " opcion

#Definimos las funciones
function sumar(){
    echo "El resultado de $numero1+$numero2 es" $(($numero1+$numero2))
}

function restar(){
    echo "El resultado de $numero1-$numero2 es" $(($numero1-$numero2))
}

function dividir(){
    echo "El resultado de $numero1/$numero2 es" $(($numero1/$numero2))
}

function multiplicar(){
    echo "El resultado de $numero1*$numero2 es" $(($numero1*$numero2))
}

if [ $opcion -gt 4 ] || [ $opcion -lt 0 ];then
    echo "La opción que marques no puede ser ni menor de 0 ni mayor que 4"
    exit 1
elif [ $opcion -eq 0 ];then
    echo "Has salido del programa correctamente"
    exit 2
else
    read -p "Dime el primero dígito para la operación " numero1
    read -p "Dime el segundo dígito para la operación " numero2
    case $opcion in
    1) sumar
        ;;
    2) restar
        ;;
    3) dividir
        ;;
    4) multiplicar
        ;;
    esac
fi