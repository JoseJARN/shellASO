#!/bin/bash
if [ $# -ne 2 ];then
    echo "Dame solo dos parámetros"
    exit 1
else
    if [ $1 -gt $2 ];then
        echo $1 es mayor que $2
    else
        echo $2 es mayor que $1
    fi
fi                    