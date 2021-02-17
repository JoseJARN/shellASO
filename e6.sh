#!/bin/bash
if [ $# -ne 2 ];then
    echo "Tienes que darme solo dos parámetros"
    exit 1
else
    if [ $1 -gt $2 ];then
        echo $(($1+$2))
    else
        echo $(($1-$2))
    fi
fi            