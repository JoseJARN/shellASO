#!/bin/bash
if [ $# -ne 3 ];then
    echo "No he recibido tres parámetros"
else
    echo $1 $2 $3 | rev
    fi