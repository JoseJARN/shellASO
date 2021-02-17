#!/bin/bash
echo "Introduce una base y un exponente"
read -p "Dime una base " base
read -p "Dime un exponente " exponente
echo El resultado es $(($base**$exponente))